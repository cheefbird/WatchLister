//
//  MoviesNavigator.swift
//  WatchLister
//
//  Created by Francis Breidenbach on 10/15/17.
//  Copyright © 2017 Francis Breidenbach. All rights reserved.
//

import UIKit


protocol MoviesNavigator {
  func toMovies()
  func toMovie(_ movie: Movie)
}
