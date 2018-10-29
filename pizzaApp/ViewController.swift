//
//  ViewController.swift
//  pizzaApp
//
//  Created by Vicente Ordoñez Garcia on 10/28/18.
//  Copyright © 2018 Ikal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var tamanio : String = ""
    
    @IBOutlet weak var txtTamanio: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        txtTamanio.text = tamanio
    }

    @IBAction func seleccionChica(_ sender: Any) {
        tamanio = "Chica"
        txtTamanio.text = tamanio
    }
    
    @IBAction func seleccionMediana(_ sender: Any) {
        tamanio = "Mediana"
        txtTamanio.text = tamanio
    }
    
    @IBAction func seleccionGrande(_ sender: Any) {
        tamanio = "Grande"
        txtTamanio.text = tamanio
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaTipoMasa = segue.destination as! TipoMasaViewController
        vistaTipoMasa.tamanio = self.tamanio
    }
}

