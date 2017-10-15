//
//  RouterTypeTests.swift
//  WatchListerTests
//
//  Created by Francis Breidenbach on 10/14/17.
//  Copyright © 2017 Francis Breidenbach. All rights reserved.
//

import XCTest
@testable import WatchLister

class RouterTypeTests: XCTestCase {
  
  // MARK: - Properties
  
  var testRouter: RouterType!
  
  
  // MARK: - Setup & Teardown
  
  override func setUp() {
    super.setUp()
    
    testRouter = TestRouter()
  }
  
  
  override func tearDown() {
    super.tearDown()
  }
  
  
  // MARK: - Base URL Tests
  
  func test_Router_BaseURLasString_IsMovieDB() {
    let urlString = String(describing: testRouter.baseURL)
    
    XCTAssertEqual(urlString, "https://api.themoviedb.org/3/")
  }
  
  func test_Router_BaseURL_IsMovieDBURL() {
    let movieDBURL = URL(string: "https://api.themoviedb.org/3/")!
    
    XCTAssertEqual(testRouter.baseURL, movieDBURL)
  }
  
  
  // MARK: - API Key Tests
  
  
}


// MARK: - Mock Router
private class TestRouter: RouterType {
  
}
