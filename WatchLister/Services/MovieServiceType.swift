//
//  MovieServiceType.swift
//  WatchLister
//
//  Created by Francis Breidenbach on 10/15/17.
//  Copyright © 2017 Francis Breidenbach. All rights reserved.
//

import Foundation


typealias MovieResult = (_ movie: Movie?, _ error: Error?) -> ()
typealias MoviesResult = (_ movies: [Movie], _ error: Error?) -> ()


protocol MovieServiceType {
  
  func getMovie(byId id: Int, completion: @escaping MovieResult)
  
  func getPopularMovies(completion: @escaping MoviesResult)
  
  func getFavoriteMovies(completion: @escaping MoviesResult)
  
}



