//
//  ViewController.swift
//  FoodTracker
//
//  Created by Daniel Schimanski on 10/04/17.
//  Copyright (c) 2017 Acyonix Limited. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {


    //MARK: Properties
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var ratingControl: RatingControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Handle the text field's user input through delegate callbacks
        nameTextField.delegate = self
    }


    //MARK: UITextFieldDelegate

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard
        textField.resignFirstResponder()

        return true
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
        textField.text = ""
    }


    //MARK: UIImagePickerControllerDelegate

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {

        // Dismiss the picker if the user canceled
        dismiss(animated: true, completion: nil)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {

        // The info dictionary may contain multiple representations of the image.
        // You want to use the original.
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage
                else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }

        // Set photoImageView to display the selected image.
        photoImageView.image = selectedImage

        // Dismiss the picker.
        dismiss(animated: true, completion: nil)
    }

    //MARK: Actions
    
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {

        // Hide text field
        nameTextField.resignFirstResponder()

        // Create imagePickerController, which is a view controller letting
        // the user pick media from their photo library.
        let imagePickerController = UIImagePickerController()

        // Make it so the photos are picked rather than taken?
        // Here just use the simulator's camera roll
        imagePickerController.sourceType = .photoLibrary

        // Notify class ViewController when user picks an image
        imagePickerController.delegate = self

        present(imagePickerController, animated: true, completion: nil)


    }

}