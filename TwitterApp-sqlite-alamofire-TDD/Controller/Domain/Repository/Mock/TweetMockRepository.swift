//
//  TweetMockRepository.swift
//  TwitterApp-sqlite-alamofire-TDD
//
//  Created by Juan Sebastián Flórez Saavedra - Ceiba Software on 3/11/18.
//  Copyright © 2018 Juan Sebastián Flórez. All rights reserved.
//

import Foundation

class TweetMockRepository: TweetRepositoryProtocol {
   
   
    init() {
        
    }
    
    var tweetsList: [TweetDTO] = []

    func addTweet(name: String, date: String, text: String) {
        
        tweetsList.append(TweetDTO(name: name, date: date, text: text))
    }
 
    func getTweets() -> [TweetDTO] {
        return tweetsList
    }
    
    
}
