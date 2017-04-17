//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Daniel Schimanski on 16/04/17.
//  Copyright © 2017 Acyonix Limited. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {

   //MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    
    //MARK: Private Methods
    
    private func setupButtons() {
        
        let button = UIButton()
        button.backgroundColor = UIColor.red
        
        // Add Constraints
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44).isActive = true
        
        // Setup the Button Action
        button.addTarget(ViewController(), action: #selector(ViewController.ratingButtonTapped(button:)), for: .touchUpInside)
        
        // Add Button to the View
        addArrangedSubview(button)
    }

}
