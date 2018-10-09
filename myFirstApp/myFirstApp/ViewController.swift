//
//  ViewController.swift
//  myFirstApp
//
//  Created by macbook on 25/06/18.
//  Copyright © 2018 unam. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var siguienteVista: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        button.backgroundColor = UIColor(red:0.13, green:0.19, blue:0.25, alpha:1.0)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 10
        
        siguienteVista.layer.cornerRadius = 10
        
    }
    
    @IBAction func cambiarTexto(_ sender: UIButton)
    {
        //system.brightness = sender.value
        myLabel.text = myTextField.text
    }
    
    @IBAction func trackValue(_ sender: UISlider)
    {
        myLabel.text = "El valor es de: \(sender.value)"
    }
    
    
    
    
}

