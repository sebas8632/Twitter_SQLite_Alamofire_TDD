//
//  TweetRepositoryProtocol.swift
//  TwitterApp-sqlite-alamofire-TDD
//
//  Created by Juan Sebastián Flórez Saavedra - Ceiba Software on 3/11/18.
//  Copyright © 2018 Juan Sebastián Flórez. All rights reserved.
//

import Foundation

protocol TweetRepositoryProtocol {
    
    func addTweet(name: String, date: String, text: String)
    func getTweets() -> [TweetDTO]
    
}
