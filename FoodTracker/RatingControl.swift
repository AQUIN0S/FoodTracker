//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Daniel Schimanski on 16/04/17.
//  Copyright © 2017 Acyonix Limited. All rights reserved.
//

import UIKit

@IBDesignable class RatingControl: UIStackView {

    //MARK: Properties
    private var ratingButtons = [UIButton]()

    var rating: Int = 0

    @IBInspectable var starSize: CGSize = CGSize(width: 44.0, height: 44.0) {
        didSet {
            setupButtons()
        }
    }
    @IBInspectable var starCount: Int = 5 {
        didSet {
            setupButtons()
        }
    }

    //MARK: Initialization

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }

    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }

    //MARK: Button Action

    func ratingButtonTapped(button: UIButton) {
        print("Ya tapped the red button!")
    }

    //MARK: Private Methods

    private func setupButtons() {

        // Clear any old buttons

        for button in ratingButtons {
            removeArrangedSubview(button)
            button.removeFromSuperview()
        }
        ratingButtons.removeAll()

        // Add new buttons

        for _ in 0..<starCount {

            let button = UIButton()
            button.backgroundColor = UIColor.red

            // Add Constraints

            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
            button.widthAnchor.constraint(equalToConstant: starSize.width).isActive = true

            // Setup the Button Action
            button.addTarget(ViewController(), action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)



            // Add Button to the View
            addArrangedSubview(button)

            // Add Button to the ratingButtons array
            ratingButtons.append(button)

        }
    }

}