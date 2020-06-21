//
//  ViewController.swift
//  HelloWorld
//
//  Created by Ernesto Redonet on 6/20/20.
//  Copyright © 2020 Ernesto Redonet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var texto: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func boton(_ sender: UIButton) {
        let alert = UIAlertController(title: "HelloWorld", message: texto.text, preferredStyle: .actionSheet)
        let accion = UIAlertAction(title: "ok", style: .default) { (_) in
            print("click on button")
        }
        
        alert.addAction(accion)
        present(alert, animated: true, completion: nil)
    }
    
}

