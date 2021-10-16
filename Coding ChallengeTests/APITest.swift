//
//  APITest.swift
//  Coding ChallengeTests
//
//  Created by Ruman on 16/10/2021.
//
import Foundation
import XCTest
@testable import Coding_Challenge
class APITest: XCTestCase {
// we write case for faileur sam elike this 
    func test_api(){
        NetworkManager.SharedInstance.getMovies { res in
            XCTAssertNotNil(res)
            XCTAssertEqual("Listing", res.kind)
        } failure: { err in
            
        }
//        waitForExpectations(timeout: 30, handler: nil)
    }

}
