//
//  Movie.swift
//  WatchLister
//
//  Created by Francis Breidenbach on 10/15/17.
//  Copyright © 2017 Francis Breidenbach. All rights reserved.
//

import Foundation
import RealmSwift
import SwiftyJSON


class Movie: Object {
  
  // MARK: - Properties
  
  @objc dynamic var title = ""
  @objc dynamic var posterPath = ""
  @objc dynamic var summary = ""
  @objc dynamic var releaseDate = ""
  @objc dynamic var id = 0
  @objc dynamic var backdropPath = ""
  @objc dynamic var score: Float = 0.0
  
  
  // MARK: - Init
  
  convenience init(fromJSON json: JSON) {
    self.init()
    
    title = json["title"].stringValue
    posterPath = json["poster_path"].stringValue
    summary = json["overview"].stringValue
    releaseDate = json["release_date"].stringValue
    id = json["id"].intValue
    backdropPath = json["backdrop_path"].stringValue
    score = json["vote_average"].floatValue
    
  }
  
  
  // MARK: - Realm Overrides
  
  override static func primaryKey() -> String? {
    return "id"
  }
  
  
  // MARK: - Computed Properties
  
}
