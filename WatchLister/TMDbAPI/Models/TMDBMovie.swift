//
//  TMDBMovie.swift
//  WatchLister
//
//  Created by Francis Breidenbach on 10/15/17.
//  Copyright © 2017 Francis Breidenbach. All rights reserved.
//

import Foundation
import ObjectMapper


class TMDBMovie: MovieObjectType, Mappable {
  
  required public init?(map: Map) { }
  
  
  var title = ""
  var posterPath = ""
  var summary = ""
  var releaseDate = ""
  var id = 0
  var backdropPath = ""
  var score: Float = 0.0
  var isFavorite = false
  
  func mapping(map: Map) {
    title <- map["title"]
    posterPath <- map["poster_path"]
    summary <- map["overview"]
    releaseDate <- map["release_date"]
    id <- map["id"]
    backdropPath <- map["backdrop_path"]
    score <- map["vote_average"]
  }
  
  
  
  
  
}
