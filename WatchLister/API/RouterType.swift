//
//  RouterType.swift
//  WatchLister
//
//  Created by Francis Breidenbach on 10/14/17.
//  Copyright © 2017 Francis Breidenbach. All rights reserved.
//

import Foundation


protocol RouterType {
  var baseURL: URL { get }
  
  var privateKey: String { get }
}

extension RouterType {
  var baseURL: URL {
    return URL(string: "https://api.themoviedb.org/3/")!
  }
  
  var privateKey: String {
    guard let keyFile = Bundle.main.path(forResource: "PrivateKeys", ofType: "plist"),
      let contents = NSDictionary(contentsOfFile: keyFile),
      let key = contents["movieDbApiKey"] as? String else {
        return "none"
    }
    return key
  }
}
