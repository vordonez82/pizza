//
//  TipoQuesoViewController.swift
//  pizzaApp
//
//  Created by Vicente Ordoñez Garcia on 10/28/18.
//  Copyright © 2018 Ikal. All rights reserved.
//

import UIKit

class TipoQuesoViewController: UIViewController {
    var tipoQueso : String = ""
    var tamanio : String = ""
    var tipoMasa : String = ""
    
    @IBOutlet weak var txtTipoQueso: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func seleccionMozarela(_ sender: Any) {
        tipoQueso = "Mozarela"
        txtTipoQueso.text = tipoQueso
    }
    @IBAction func seleccionCheddar(_ sender: Any) {
        tipoQueso = "Cheddar"
        txtTipoQueso.text = tipoQueso
    }
    @IBAction func seleccionParmesano(_ sender: Any) {
        tipoQueso = "Parmesano"
        txtTipoQueso.text = tipoQueso
    }
    @IBAction func seleccionSinQueso(_ sender: Any) {
        tipoQueso = "Sin Queso"
        txtTipoQueso.text = tipoQueso
    }
    
    override func viewWillAppear(_ animated: Bool) {
        txtTipoQueso.text = tipoQueso
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaIngredientes = segue.destination as! IngredientesViewController
        vistaIngredientes.tamanio = self.tamanio
        vistaIngredientes.tipoMasa = self.tipoMasa
        vistaIngredientes.tipoQueso = self.tipoQueso
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
