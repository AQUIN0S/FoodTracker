//
//  ViewController.swift
//  FoodTracker
//
//  Created by Daniel Schimanski on 10/04/17.
//  Copyright (c) 2017 Acyonix Limited. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!

    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: Actions
    
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }

}
