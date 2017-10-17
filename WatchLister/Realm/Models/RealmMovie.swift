//
//  RealmMovie.swift
//  WatchLister
//
//  Created by Francis Breidenbach on 10/16/17.
//  Copyright © 2017 Francis Breidenbach. All rights reserved.
//

import Foundation
import RealmSwift


class RealmMovie: Object, MovieObjectType {
    
    convenience required public init(copy object: MovieObjectType) {
        self.init()
        
        title = object.title
        posterPath = object.posterPath
        summary = object.summary
        releaseDate = object.releaseDate
        id = object.id
        backdropPath = object.backdropPath
        score = object.score
        isFavorite = object.isFavorite
        
    }
    
    
    // MARK: - Properties
    
    @objc dynamic var title = ""
    @objc dynamic var posterPath = ""
    @objc dynamic var summary = ""
    @objc dynamic var releaseDate = ""
    @objc dynamic var id = 0
    @objc dynamic var backdropPath = ""
    @objc dynamic var score: Float = 0.0
    @objc dynamic var isFavorite = false
    
    
    // MARK: - Realm Overrides
    
    override class func primaryKey() -> String? {
        return "id"
    }
}
