//
//  ViewController.swift
//  DogAge
//
//  Created by Gabriel Drumond Rocha on 12/03/17.
//  Copyright © 2017 Gabriel Drumond Rocha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    //Estrutura referente ao textbox
    @IBOutlet weak var campodogage: UITextField!
    @IBOutlet weak var resultadoage: UILabel!
    //Estrutura referente ação do botão "descobrir a idade"
    @IBAction func descobrirage(_ sender: AnyObject) {
        
        var idadedog = Int(campodogage.text!)!
        
        idadedog = idadedog * 7
        
        resultadoage.text = "A idade do cachorro e: " + String(idadedog)
        
     
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

