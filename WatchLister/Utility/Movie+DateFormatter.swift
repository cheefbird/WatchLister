//
//  Movie+DateFormatter.swift
//  WatchLister
//
//  Created by Francis Breidenbach on 10/16/17.
//  Copyright © 2017 Francis Breidenbach. All rights reserved.
//

import Foundation
import ObjectMapper


extension DateTransform {
    
    static var custom: DateFormatterTransform {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy"
        
        return DateFormatterTransform(dateFormatter: formatter)
    }
    
}
