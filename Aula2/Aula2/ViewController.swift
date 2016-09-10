//
//  ViewController.swift
//  Aula2
//
//  Created by iossenac on 10/09/16.
//  Copyright © 2016 Manuela Tarouco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
 
    @IBOutlet weak var nome: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var sexo: UISegmentedControl!
    
    @IBOutlet weak var recebeEmail: UISwitch!
    
    @IBAction func enviarForm(sender: UIButton) {
        
        print("estou enviando")
        
        print("Nome: "+nome.text!)
        print("Email: "+email.text!)
        print("Sexo:"+sexo.titleForSegmentAtIndex(sexo.selectedSegmentIndex)!)
        let recEm = String(recebeEmail.on)
        
        print("Recebe email "+recEm)
        
        
    }

}

