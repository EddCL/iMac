//
//  UserViewController.swift
//  Login
//
//  Created by Abner Castro on 9/3/18.
//  Copyright © 2018 Abner Castro. All rights reserved.
//

import UIKit

class UserViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameLabel.text = user?.username
        firstNameLabel.text = user?.name
        lastNameLabel.text = user?.lastName
        emailLabel.text = user?.email
        phoneLabel.text = user?.phone
        
        //Crear el navigation button con un icono de camara
        let cameraButton = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(selectPhoto))
        //Colocar el button en la parte superior derecha del navigation bar
        navigationItem.rightBarButtonItem = cameraButton
        
    }
    
    @objc func selectPhoto() {
        let actionSheet = UIAlertController(title: "Selecciona una opción", message: nil, preferredStyle: .actionSheet)
        
        actionSheet.addAction(UIAlertAction(title: "Biblioteca de Fotos", style: .default, handler: {(action) in
            let pickerController = UIImagePickerController()
            pickerController.sourceType = .photoLibrary
            pickerController.allowsEditing = true
            pickerController.delegate = self
            self.present(pickerController, animated: true, completion: nil)
        }))
        
        
        actionSheet.addAction(UIAlertAction(title: "Tomar foto", style: .default, handler: nil))
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(actionSheet, animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
        print("EL usuario canceló la selección de foto")
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        print("El usuario seleccionó una foto")
        
        let image = info[UIImagePickerControllerEditedImage] as! UIImage
        imageView.image = image
        picker.dismiss(animated: true, completion: nil)
    }
    
    
}






































































