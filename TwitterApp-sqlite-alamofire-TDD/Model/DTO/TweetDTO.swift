//
//  TweetDTO.swift
//  TwitterApp-sqlite-alamofire-TDD
//
//  Created by Juan Sebastián Flórez Saavedra - Ceiba Software on 3/11/18.
//  Copyright © 2018 Juan Sebastián Flórez. All rights reserved.
//

import Foundation

struct TweetDTO {
    
    var name: String?
    var date: String?
    var text: String?
    
    
    init(name: String, date: String, text: String) {
        self.name = name
        self.date = date
        self.text = text
    }
    
}
