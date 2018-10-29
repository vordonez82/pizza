//
//  ConfirmacionViewController.swift
//  pizzaApp
//
//  Created by Vicente Ordoñez Garcia on 10/28/18.
//  Copyright © 2018 Ikal. All rights reserved.
//

import UIKit

class ConfirmacionViewController: UIViewController {
    var tamanio : String = ""
    var tipoMasa : String = ""
    var tipoQueso : String = ""
    var ingredientes : String = ""
    @IBOutlet weak var txtOrden: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let orden : String = "Una pizza \(tamanio) con tipo de masa \(tipoMasa), tipo de queso \(tipoQueso), ingredientes: \(ingredientes)."
        txtOrden.text = orden
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
