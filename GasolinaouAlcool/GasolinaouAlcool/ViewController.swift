//
//  ViewController.swift
//  GasolinaouAlcool
//
//  Created by Gabriel Drumond Rocha on 15/04/17.
//  Copyright © 2017 Gabriel Drumond Rocha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var PrecoAlcoolTextField: UITextField!
    @IBOutlet weak var PrecoGasolinaTextField: UITextField!
    @IBOutlet weak var ResultadoCalculoLabel: UILabel!
    
    
    @IBAction func Calcular(_ sender: Any) {
        var precoalcool: Double = 0
        var precogasolina: Double = 0
        var resultadopreco: Double = 0
        
        //Validações de Campo
        if let resultadoAlcool = PrecoAlcoolTextField.text {
            if resultadoAlcool != "" {
                if let resultadoNumero = Double(resultadoAlcool){
                    precoalcool = resultadoNumero
                }
            }
        }
        
        if let resultadoGasolina = PrecoGasolinaTextField.text {
            if resultadoGasolina != "" {
                if let resultadoNumero = Double(resultadoGasolina){
                    precogasolina = resultadoNumero
                }
            }
        }
        
        //Calculo
        resultadopreco = precoalcool / precogasolina
        if resultadopreco >= 0.7 {
            ResultadoCalculoLabel.text = "Melhor gasolina"
        } else {
            ResultadoCalculoLabel.text = "Melhor álcool"
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

