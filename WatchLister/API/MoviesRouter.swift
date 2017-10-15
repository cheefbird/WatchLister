//
//  MoviesRouter.swift
//  WatchLister
//
//  Created by Francis Breidenbach on 10/14/17.
//  Copyright © 2017 Francis Breidenbach. All rights reserved.
//

import Foundation
import Alamofire


enum MoviesRouter: RouterType, URLRequestConvertible {
  
  // MARK: - Cases
  
  case getMovies
  
  
  // MARK: - Properties
  
  var method: HTTPMethod {
    switch self {
    case .getMovies:
      return .get
    }
  }
  
  
  var path: String {
    switch self {
    case .getMovies:
      return "discover/movie/"
    }
  }
  
  
  var parameters: Parameters {
    var params = Parameters()
    
    params["api_key"] = privateKey
    
    switch self {
    case .getMovies:
      params["sort_by"] = "popularity.desc"
      params["include_adult"] = false
    }
    
    return params
  }
  
  
  func asURLRequest() throws -> URLRequest {
    let requestURL = baseURL.appendingPathComponent(path)
    
    var baseRequest = URLRequest(url: requestURL)
    baseRequest.httpMethod = method.rawValue
    
    let encoding = URLEncoding.queryString
    
    return try encoding.encode(baseRequest, with: parameters)
  }
}



