//
//  ReviewModel.swift
//  Sushi Savior
//
//  Created by Jon Harlan on 11/4/15.
//  Copyright © 2015 Jon Harlan. All rights reserved.
//

import Foundation

class Review {
    
    var rating:Int
    var cost:Int
    var description:String
    
    init(rating:Int, cost:Int, description:String) {
        self.rating = rating
        self.cost = cost
        self.description = description
    }
}