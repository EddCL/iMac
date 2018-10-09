//
//  ViewController.swift
//  Login
//
//  Created by Abner Castro on 9/3/18.
//  Copyright © 2018 Abner Castro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextFields: UITextField!
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameTextField.placeholder = "username..."
        passwordTextFields.placeholder = "password..."
        passwordTextFields.isSecureTextEntry = true
        
        user = User(name: "Edd", lastName: "Carrillo", password: "1006")
    }

    @IBAction func login(_ sender: UIButton) {
        if usernameTextField.text == user?.name && passwordTextFields.text == user?.password {
            self.performSegue(withIdentifier: "loginSegue", sender: self)
        } else {
            
            let alert = UIAlertController(title: "Ups!", message: "Tu nombre y/o contraseña es incorrecta. Inténtalo de nuevo", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "loginSegue" {
            let destinationViewController = segue.destination as! UserViewController
            destinationViewController.user = user
        }
    }
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
}

