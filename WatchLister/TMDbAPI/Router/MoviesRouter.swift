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
  case getMovie(id: Int)
  
  
  // MARK: - Properties
  
  var method: HTTPMethod {
    switch self {
    case .getMovies, .getMovie:
      return .get
    }
  }
  
  
  var path: String {
    switch self {
    case .getMovies:
      return "discover/movie/"
      
    case .getMovie(let id):
      return "movie/\(id)"
    }
  }
  
  
  var parameters: Parameters {
    var params = Parameters()
    
    params["api_key"] = privateKey
    
    switch self {
    case .getMovies:
      params["sort_by"] = "popularity.desc"
      params["include_adult"] = "false"
      
    default:
      break
    }
    
    return params
  }
  
  
  func asURLRequest() throws -> URLRequest {
    let requestURL = baseURL.appendingPathComponent(path)
    
    var baseRequest = URLRequest(url: requestURL)
    baseRequest.httpMethod = method.rawValue
    
    let encoding = URLEncoding.default
    
    return try encoding.encode(baseRequest, with: parameters)
  }
}



