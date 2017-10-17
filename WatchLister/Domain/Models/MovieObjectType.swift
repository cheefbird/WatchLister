//
//  MovieObjectType.swift
//  WatchLister
//
//  Created by Francis Breidenbach on 10/15/17.
//  Copyright © 2017 Francis Breidenbach. All rights reserved.
//

import Foundation


protocol MovieObjectType {
    var title: String { get }
    var posterPath: String { get }
    var summary: String { get }
    var releaseDate: String { get }
    var id: Int { get }
    var backdropPath: String { get }
    var score: Float { get }
    var isFavorite: Bool { get }
}
