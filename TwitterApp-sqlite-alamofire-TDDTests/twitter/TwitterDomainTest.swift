//
//  TwitterDomainTest.swift
//  TwitterApp-sqlite-alamofire-TDDTests
//
//  Created by Juan Sebastián Flórez Saavedra - Ceiba Software on 3/11/18.
//  Copyright © 2018 Juan Sebastián Flórez. All rights reserved.
//

import XCTest
@testable import TwitterApp_sqlite_alamofire_TDD

class TwitterDomainTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGetTweets() {
        
        //GIVEN
        let tweetMockRepository: TweetMockRepository = TweetMockRepository()
        //  let tweetMockDao: TweetDao?
        
        let domain: TweetDomain = TweetDomain(tweetRemoteRepository: tweetMockRepository)
        domain.addTweet(user: "juan", password: "123")
        domain.addTweet(user: "sebastián", password: "1234")
        domain.addTweet(user: "Laura", password: "12445")
        
        //WHEN
        let tweetList: [TweetDTO] = domain.getTweets()
        
        //THEN
        XCTAssertEqual(3, tweetList.count)
        
    }
    
}
