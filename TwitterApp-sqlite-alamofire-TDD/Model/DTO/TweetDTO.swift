//
//  TweetDTO.swift
//  TwitterApp-sqlite-alamofire-TDD
//
//  Created by Juan Sebastián Flórez Saavedra - Ceiba Software on 3/11/18.
//  Copyright © 2018 Juan Sebastián Flórez. All rights reserved.
//

import Foundation

struct TweetDTO {
    
    var user: String?
    var password: String?
    
    
    init(user: String, password: String) {
        self.user = user
        self.password = password
    }
    
}
