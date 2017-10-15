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
}

extension RouterType {
  var baseURL: URL {
    return URL(string: "https://api.themoviedb.org/3/")!
  }
}
