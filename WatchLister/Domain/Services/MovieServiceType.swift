//
//  MovieServiceType.swift
//  WatchLister
//
//  Created by Francis Breidenbach on 10/15/17.
//  Copyright © 2017 Francis Breidenbach. All rights reserved.
//

import Foundation


typealias MovieResponse = (_ movie: MovieObjectType?, _ error: Error?) -> ()
typealias MoviesResponse = (_ movies: [MovieObjectType], _ error: Error?) -> ()


protocol MovieServiceType: class {
  
  func getMovie(byId id: Int, completion: @escaping MovieResponse)
  func getMovies(forPage page: Int, completion: @escaping MoviesResponse)
  
}
