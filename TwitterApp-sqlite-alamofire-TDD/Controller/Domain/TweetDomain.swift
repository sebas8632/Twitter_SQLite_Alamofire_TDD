//
//  TweetDomain.swift
//  TwitterApp-sqlite-alamofire-TDD
//
//  Created by Juan Sebastián Flórez Saavedra - Ceiba Software on 3/11/18.
//  Copyright © 2018 Juan Sebastián Flórez. All rights reserved.
//

import Foundation
class TweetDomain {
    
    var tweetRemoteRepository: TweetRepositoryProtocol?
    
    init(tweetRemoteRepository: TweetRepositoryProtocol) {
        self.tweetRemoteRepository = tweetRemoteRepository
    }
  
    func addTweet(name: String, date: String, text: String) {
        tweetRemoteRepository?.addTweet(name: name, date: date, text: text)
    }
    
    func getTweets() -> [TweetDTO]{
        return tweetRemoteRepository!.getTweets()
    }
    

}
