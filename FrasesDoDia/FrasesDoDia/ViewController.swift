//
//  ViewController.swift
//  FrasesDoDia
//
//  Created by Gabriel Drumond Rocha on 27/03/17.
//  Copyright © 2017 Gabriel Drumond Rocha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    @IBOutlet weak var Frase: UILabel!
    @IBAction func NovaFrase(_ sender: Any) {
        
        var frases: [String] = []
        var contador = arc4random_uniform(3)
        
        frases.append("O cruzeirao e cabuloso")
        frases.append("Melhor time do Brasil")
        frases.append("Maior do Mundo")
        frases.append("Bi-campeão da libertadores")
        
        Frase.text = frases[Int(contador)]
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

