//
//  ViewController.swift
//  acessingCamera
//
//  Created by Apple on 7/15/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var imagePicker = UIImagePickerController()
    //this is a object we can access to store our photos/take photos within the class Image Picker Controller
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        //this tells our object that any info(photos) is going to go back to this class (self)
    }

    @IBAction func takeSelfieTapped(_ sender: Any) {
    imagePicker.sourceType = .camera
        //this allows me to open my camera
        
        present(imagePicker, animated:
        true, completion: nil)
        //present is a built in function in Apple that allows us to access our camera information
        //animated allows for a smooth transition if we set it to be true
        //completion means that we exit out after we choose our photo
    
    }
    
    @IBAction func photoLibraryTapped(_ sender: Any) {
    imagePicker.sourceType = .photoLibrary
        //this allows me to access the camera roll
        https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&ved=2ahUKEwiwoIO0xbfjAhUB-lQKHS7ZCv4QjRx6BAgBEAU&url=https%3A%2F%2Fwww.redbubble.com%2Fpeople%2Fkh-designs%2Fworks%2F31096548-jaden-smith-syre%3Fp%3Dposter&psig=AOvVaw0NTOineToyIFx4ZJnEq0pN&ust=1563301244487021
        present(imagePicker, animated:true, completion: nil)
        
        //this acesses our photo library and saves a photo of our class! And then when it's done, it quits.
    }
    
    @IBOutlet weak var newImage: UIImageView!
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        //the selected image will replace the stock photo in our Image view with the following code:
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {newImage.image = selectedImage}
        
        imagePicker.dismiss(animated:true, completion: nil)
    }
}

