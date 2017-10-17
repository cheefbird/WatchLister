//
//  NetworkServiceType.swift
//  WatchLister
//
//  Created by Francis Breidenbach on 10/16/17.
//  Copyright © 2017 Francis Breidenbach. All rights reserved.
//

import Foundation
import Alamofire


protocol NetworkServiceType {
  
  func request(at route: URLRequestConvertible) -> DataRequest
  
}


extension NetworkServiceType {
  
  func request(at route: URLRequestConvertible) -> DataRequest {
    return Alamofire.request(route).validate()
  }
  
}

