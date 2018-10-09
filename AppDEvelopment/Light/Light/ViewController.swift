//
//  ViewController.swift
//  Light
//
//  Created by Eduardo S.S on 03/10/18.
//  Copyright © 2018 Eduardo S.S. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var luzPrendida = true
    //MARK: Outlets
    @IBOutlet weak var botonLinterna: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //MARK: Acciones
    @IBAction func botonPushado(_ sender: UIButton) {
        luzPrendida = !luzPrendida
        if luzPrendida{
            view.backgroundColor = .white
        }else{
            view.backgroundColor = .black
        }
    }
    
    
}

