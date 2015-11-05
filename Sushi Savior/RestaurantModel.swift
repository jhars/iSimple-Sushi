//
//  RestaurantModel.swift
//  Sushi Savior
//
//  Created by Jon Harlan on 11/4/15.
//  Copyright © 2015 Jon Harlan. All rights reserved.
//

import Foundation

class Restaurant {
//    var name = "sushi"
//    var reviews:[Reviews]?
//    
//    init(name:String){
//        self.name = name
//    }
    var title:String?
    var publisher:String?
    //    var relatedStories:NSArray
    
    init(title:String, publisher:String) { //relatedStories:NSArray
        self.title = title
        self.publisher = publisher
    }
}