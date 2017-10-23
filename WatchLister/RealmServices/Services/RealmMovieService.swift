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
  
  
  init(baseService: MovieServiceType) {
    self.baseService = baseService
  }
  
  
  fileprivate let baseService: MovieServiceType
  
  fileprivate var realm: Realm { return try! Realm() }
  
  
  // MARK: - From Realm
  
  func getMovie(byId id: Int, completion: @escaping MovieResponse) {
    getMovieFromRealm(withId: id, completion: completion)
    getMovieFromService(withId: id, completion: completion)
  }
  
  func getMovies(forPage page: Int, completion: @escaping MoviesResponse) {
    getMoviesFromRealm(completion: completion)
    getMoviesFromService(forPage: page, completion: completion)
  }
  
  fileprivate func getMovieFromRealm(withId id: Int, completion: @escaping MovieResponse) {
    let object = realm.object(ofType: RealmMovie.self, forPrimaryKey: id)
    completion(object, nil)
  }
  
  fileprivate func getMovieFromService(withId id: Int, completion: @escaping MovieResponse) {
    
    baseService.getMovie(byId: id) { movie, error in
      self.persist(movie)
      completion(movie, error)
    }
  }
  
  
  fileprivate func getMoviesFromRealm(completion: @escaping MoviesResponse) {
    let objects = realm.objects(RealmMovie.self).sorted(byKeyPath: "score", ascending: false)
    
    completion(Array(objects), nil)
  }
  
  fileprivate func getMoviesFromService(forPage page: Int, completion: @escaping MoviesResponse) {
    baseService.getMovies(forPage: page) { movies, error in
      self.persist(movies)
      completion(movies, error)
    }
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
