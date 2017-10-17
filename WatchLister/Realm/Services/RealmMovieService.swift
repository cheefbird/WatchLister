//
//  RealmMovieService.swift
//  WatchLister
//
//  Created by Francis Breidenbach on 10/16/17.
//  Copyright © 2017 Francis Breidenbach. All rights reserved.
//

import Foundation
import RealmSwift


class RealmMovieService: MovieServiceType {
    func getMovie(byId id: Int, completion: @escaping MovieResponse) {
        
    }
    
    func getMovies(forPage page: Int, completion: @escaping MoviesResponse) {
        
    }
    
    
    init(baseService: MovieServiceType) {
        self.baseService = baseService
    }
    
    
    fileprivate let baseService: MovieServiceType
    
    fileprivate var realm: Realm { return try! Realm() }
    
    
    // MARK: - From Realm
    
    fileprivate func getMovieFromDb(withId id: Int, completion: @escaping MovieResult)
    
}
