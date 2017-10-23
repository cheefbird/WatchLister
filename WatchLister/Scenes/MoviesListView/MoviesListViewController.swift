//
//  MoviesListViewController.swift
//  WatchLister
//
//  Created by Francis Breidenbach on 10/14/17.
//  Copyright © 2017 Francis Breidenbach. All rights reserved.
//

import UIKit

class MoviesListViewController: UIViewController {
  
  // MARK: - Outlets
  
  
  // MARK: - Properties
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let baseService = NetworkMovieService()
    let service = RealmMovieService(baseService: baseService)
    var callbackCounter = 0
    
    service.getMovies(forPage: 1) { (movies, error) in
      callbackCounter += 1
      if let error = error {
        print("ERROR: \(error.localizedDescription)")
      } else {
        print("Found \(movies.count) movies (callback #\(callbackCounter)")
      }
    }
    
  }
}


