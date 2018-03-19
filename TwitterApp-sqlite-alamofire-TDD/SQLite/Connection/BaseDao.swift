//
//  BaseDao.swift
//  TwitterApp-sqlite-alamofire-TDD
//
//  Created by Juan Sebastián Flórez Saavedra - Ceiba Software on 3/18/18.
//  Copyright © 2018 Juan Sebastián Flórez. All rights reserved.
//

import Foundation
import SQLite
class BaseDao {
    
    var db: Connection
    
    init() throws{
        
        let path = NSSearchPathForDirectoriesInDomains(
            .documentDirectory, .userDomainMask, true
            ).first!
        
        db = try Connection("\(path)/TwitterDB.sqlite3")
        
        db.busyTimeout = 5
        
        db.busyHandler { (tries) -> Bool in
            
            if tries >= 3 {
                return false
            }
            return true
        }
        
    }
}
