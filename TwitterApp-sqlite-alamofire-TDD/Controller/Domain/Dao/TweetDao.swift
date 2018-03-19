//
//  TweetDao.swift
//  TwitterApp-sqlite-alamofire-TDD
//
//  Created by Juan Sebastián Flórez Saavedra - Ceiba Software on 3/11/18.
//  Copyright © 2018 Juan Sebastián Flórez. All rights reserved.
//

import Foundation
import SQLite

class TweetDao: BaseDao {
    
    var tweetTable: Table
    
    var name: Expression<String>
    var date: Expression<String>
    var text: Expression<String>

    
    override init() throws {
        
        tweetTable = Table("Tweet")
        name = Expression<String>("name")
        date = Expression<String>("date")
        text = Expression<String>("text")

        try super.init()
        try self.db.run(tweetTable.create(ifNotExists: true)  { t in
            t.column(name, primaryKey: true)
            t.column(date)
            t.column(text)
        })
    }
    
    func saveTweets(tweetList: [TweetDTO]) throws {
        
        do {
            for tweet in tweetList {
                try db.run(tweetTable.insert(name <- tweet.name!, date <- tweet.date!, text <- tweet.text!))
            }
        }
        catch
        {
            print(error)
        }
    }
    
    func getTweets() -> [TweetDTO] {
        
        var tweetList: [TweetDTO] = []
        do {
            for tweet in try db.prepare(tweetTable) {
                tweetList.append(TweetDTO(name: tweet[name], date: tweet[date], text: tweet[text]))
            }
        }
        catch {
            print("error")
        }
        
        return tweetList
        
    }
    
}

