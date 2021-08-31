//
//  ViewController.swift
//  propinas
//
//  Created by Alumno on 8/30/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtTotalcuenta: UITextField!
    @IBOutlet weak var sldPorcentajepropina: UISlider!
    @IBOutlet weak var lblPorcentajePropina: UILabel!
    @IBOutlet weak var lblCantidadPropina: UILabel!
    @IBOutlet weak var lblTotalMasPropina: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func doEditEnTotalCuenta(_ sender: Any) {
    }
    
    @IBAction func doChangePorcentajePropina(_ sender: Any) {
        lblPorcentajePropina.text = "\(String(Int(sldPorcentajepropina.value)))%"
        if txtTotalcuenta != nil && txtTotalcuenta.text != "" {
            let cuenta = Float(txtTotalcuenta.text!)!
            let pocentaje = Float(Int(sldPorcentajepropina.value))
            let propina = cuenta * (pocentaje/100.0)
            lblCantidadPropina.text = "$\(String(format: "%.2f", propina))"
            lblTotalMasPropina.text = "$\(String(format: "%.2f", cuenta + propina))"
        }
        
    }
}

