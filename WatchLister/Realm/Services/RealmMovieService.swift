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
    
    fileprivate func getMovieFromRealm(withId id: Int, completion: @escaping MovieResponse) {
        let object = realm.object(ofType: RealmMovie.self, forPrimaryKey: id)
        completion(object, nil)
    }
    
    fileprivate func getMovieFromNetwork(withId id: Int, completion: @escaping MovieResponse) {
        
    }
    
    
    // MARK: - Persist
    
    fileprivate func persist(_ movie: MovieObjectType?) {
        guard let movie = movie else { return }
        
        persist([movie])
    }
    
    fileprivate func persist(_ movies: [MovieObjectType]) {
        let objects = movies.map { RealmMovie(copy: $0) }
        
        try! realm.write {
            realm.add(objects, update: true)
        }
    }
    
}
