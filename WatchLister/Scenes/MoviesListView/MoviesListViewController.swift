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
  
  @IBOutlet weak var tableView: UITableView!
  
  
  // MARK: - Properties
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
}


extension MoviesListViewController: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 5
  }
  
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    return UITableViewCell()
  }
  
}

