//
//  Meal.swift
//  FoodTracker
//
//  Created by Daniel Schimanski on 18/05/17.
//  Copyright © 2017 Acyonix Limited. All rights reserved.
//

import UIKit

class Meal {
    
    //MARK: Properties
    
    var name: String
    var rating: Int
    var photo: UIImage?

    //MARK: Initialization

    init?(name: String, photo: UIImage?, rating: Int) {

        self.name = name
        self.rating = rating
        self.photo = photo

        if (name.isEmpty || rating < 0) {
            return nil
        }
    }
    
}
