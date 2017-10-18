//
//  NetworkMovieService.swift
//  WatchLister
//
//  Created by Francis Breidenbach on 10/16/17.
//  Copyright © 2017 Francis Breidenbach. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper


class NetworkMovieService: NetworkServiceType, MovieServiceType {
  
  func getMovie(byId id: Int, completion: @escaping MovieResponse) {
    request(at: MoviesRouter.getMovie(id: id))
      .responseObject { (callback: DataResponse<TMDBMovie>) in
        completion(callback.result.value, callback.result.error)
    }
  }
  
  func getMovies(forPage page: Int, completion: @escaping MoviesResponse) {
    request(at: MoviesRouter.getMovies(page: page))
        .responseObject { (callback: DataResponse<TMDBMovie>) in
            
    }
  }
  
  
}
