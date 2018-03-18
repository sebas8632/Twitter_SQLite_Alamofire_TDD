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

    func addTweet(user: String, password: String) {
        
        tweetsList.append(TweetDTO(user: user, password: password))
    }
 
    func getTweets() -> [TweetDTO] {
        return tweetsList
    }
    
    
}
