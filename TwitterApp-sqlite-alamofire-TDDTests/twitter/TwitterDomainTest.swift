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
        domain.addTweet(name: "juan", date: "sabado", text: "Hey")
        domain.addTweet(name: "sebastián", date: "domingo", text: "Hey")
        domain.addTweet(name: "Laura", date: "lunes", text: "Hey")
        
        //WHEN
        let tweetList: [TweetDTO] = domain.getTweets()
        
        //THEN
        XCTAssertEqual(3, tweetList.count)
    }
    
    func testSaveTweetsOnSQLite() {
        
        //GIVEN
        var tweetDao: TweetDao
        do {
            tweetDao = try! TweetDao()
            var tweetList: [TweetDTO] = []
            tweetList.append(TweetDTO(name: "Juan", date: "sabado", text: "Hola"))
            
        
            //WHEN
           try! tweetDao.saveTweets(tweetList: tweetList)
            
            var tweets = tweetDao.getTweets()

            //THEN
            XCTAssertEqual("Hola", tweets[0].text)
        }
        catch
        {
            print(error)
        }

    }
    
}
