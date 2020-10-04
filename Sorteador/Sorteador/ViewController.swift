//
//  ViewController.swift
//  Sorteador
//
//  Created by Gabriel Drumond Rocha on 15/03/17.
//  Copyright © 2017 Gabriel Drumond Rocha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var LegendaResultado: UILabel!
    @IBOutlet weak var QuantidadePessoas: UITextField!
    @IBAction func GerarNumero(_ sender: Any) {
    
        let Quantidade = QuantidadePessoas.text
        let Convert = Int(Quantidade!)
        if(Quantidade != ""){
            var NumeroAleatorio = arc4random_uniform(UInt32(Convert!))
            
            LegendaResultado.text = String(NumeroAleatorio)
            
        } else {
            LegendaResultado.text = "Vazio"
        }
       

    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

