//
//  ViewController.swift
//  FirstApp2.0
//
//  Created by Eduardo S.S on 08/08/18.
//  Copyright © 2018 Eduardo S.S. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var tableView: UITableView!
    
    let arrayNames = ["Jj","Lady B","Iss","Abner.A","Peter"]
    let arrayNumbers = ["5546576789", "5546352312", "5520394857","5540404040","5559595959"]
    let arrayPhotos = ["Jj.jpg", "ladyB.jpg", "Iss.jpg", "AbnerA.jpg", "Peter.jpg"]
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        navigationItem.title = "Mis contactos😎" //recomendable ponerle el nmismo titulo que el de la aplicacion
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayNames.count //ponemos arrayNames.count para que sea el mismo numero de celdas que espacios en el arreglo, de otro modo vale popis
        //este metodo tambien es obligatorio
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { //aqui se customiza la celda
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell") //el estilo default no permite poner un subtitulo
        //es obligatorio este metodo
        cell.textLabel?.text = arrayNames[indexPath.row] //va poniendo los nombres a las celdas
        cell.imageView?.image = UIImage(named: arrayPhotos[indexPath.row])  //indexPath.row es como para hacer un seguimiento, un track; tiene dos propiedades: ROW(posición) y SECTION
        cell.detailTextLabel?.text = arrayNumbers[indexPath.row]
        cell.detailTextLabel?.textColor = UIColor.darkGray
        cell.accessoryType = .disclosureIndicator
        return cell
    }
//los dos metodos debe coincidir en numero de posiciones o vale popis
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "detail", sender: self)
        name = arrayNames[indexPath.row]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //cuando se ejecuta el segue se llama esta funcion
        if segue.identifier == "detail"{
            let destinationViewController = segue.destination as! detailContactViewController
            destinationViewController.nameTitle = name
        }
    }
    func tasab

}

