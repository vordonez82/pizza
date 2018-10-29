//
//  TipoMasaViewController.swift
//  pizzaApp
//
//  Created by Vicente Ordoñez Garcia on 10/28/18.
//  Copyright © 2018 Ikal. All rights reserved.
//

import UIKit

class TipoMasaViewController: UIViewController {
    var tipoMasa : String = ""
    var tamanio : String = ""

    @IBOutlet weak var txtTipoMasa: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func seleccionDelgada(_ sender: Any) {
        tipoMasa = "Delgada"
        txtTipoMasa.text = tipoMasa
    }
    @IBAction func seleccionCrujiente(_ sender: Any) {
        tipoMasa = "Crujiente"
        txtTipoMasa.text = tipoMasa
    }
    @IBAction func seleccionGruesa(_ sender: Any) {
        tipoMasa = "Gruesa"
        txtTipoMasa.text = tipoMasa
    }
    override func viewWillAppear(_ animated: Bool) {
        txtTipoMasa.text = tipoMasa
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaTipoQueso = segue.destination as! TipoQuesoViewController
        vistaTipoQueso.tamanio = self.tamanio
        vistaTipoQueso.tipoMasa = self.tipoMasa
        
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
