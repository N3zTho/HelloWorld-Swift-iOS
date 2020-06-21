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
        //remove keyboard
        texto.resignFirstResponder()
        let alert = UIAlertController(title: "HelloWorld", message: texto.text, preferredStyle: .alert)
//        let accion = UIAlertAction(title: "ok", style: .default) { (_) in
//            print("click on button")
//        }
        
      let accion =   UIAlertAction(title: "OK", style: .default, handler: {(_) in
            print("Example")
        })
        
        
        alert.addAction(accion)
        present(alert, animated: true, completion: nil)
    }
    
    //remove keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(false)
    }
    
}

