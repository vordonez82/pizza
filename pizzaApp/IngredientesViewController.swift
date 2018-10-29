//
//  IngredientesViewController.swift
//  pizzaApp
//
//  Created by Vicente Ordoñez Garcia on 10/28/18.
//  Copyright © 2018 Ikal. All rights reserved.
//

import UIKit

class IngredientesViewController: UIViewController {
    var ordenValida : Bool = false
    var tamanio : String = ""
    var tipoMasa : String = ""
    var tipoQueso : String = ""
    var ingredientes : String = ""
    
    @IBOutlet weak var btnConfirmar: UIButton!
    @IBOutlet weak var txtIngredientes: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func seleccionJamon(_ sender: Any) {
        let str = "Jamón, "
        if ingredientes.contains(str)
        {
            ingredientes = ingredientes.replacingOccurrences(of: "Jamón, ", with: "")
        }
        else {
            ingredientes = ingredientes + str
        }
        txtIngredientes.text = ingredientes
        validarOrden()
    }
    @IBAction func seleccionPepperoni(_ sender: Any) {
        let str = "Pepperoni, "
        if ingredientes.contains(str)
        {
            ingredientes = ingredientes.replacingOccurrences(of: "Pepperoni, ", with: "")
        }
        else {
            ingredientes = ingredientes + str
        }
        txtIngredientes.text = ingredientes
        validarOrden()
    }
    @IBAction func seleccionPavo(_ sender: Any) {
        let str = "Pavo, "
        if ingredientes.contains(str)
        {
            ingredientes = ingredientes.replacingOccurrences(of: "Pavo, ", with: "")
        }
        else {
            ingredientes = ingredientes + str
        }
        txtIngredientes.text = ingredientes
        validarOrden()
    }
    @IBAction func seleccionSalchicha(_ sender: Any) {
        let str = "Salchicha, "
        if ingredientes.contains(str)
        {
            ingredientes = ingredientes.replacingOccurrences(of: "Salchicha, ", with: "")
        }
        else {
            ingredientes = ingredientes + str
        }
        txtIngredientes.text = ingredientes
        validarOrden()
    }
    @IBAction func seleccionAceituna(_ sender: Any) {
        let str = "Aceituna, "
        if ingredientes.contains(str)
        {
            ingredientes = ingredientes.replacingOccurrences(of: "Aceituna, ", with: "")
        }
        else {
            ingredientes = ingredientes + str
        }
        txtIngredientes.text = ingredientes
        validarOrden()
    }
    @IBAction func seleccionCebolla(_ sender: Any) {
        let str = "Cebolla, "
        if ingredientes.contains(str)
        {
            ingredientes = ingredientes.replacingOccurrences(of: "Cebolla, ", with: "")
        }
        else {
            ingredientes = ingredientes + str
        }
        txtIngredientes.text = ingredientes
        validarOrden()
    }
    @IBAction func seleccionPimiento(_ sender: Any) {
        let str = "Pimiento, "
        if ingredientes.contains(str)
        {
            ingredientes = ingredientes.replacingOccurrences(of: "Pimiento, ", with: "")
        }
        else {
            ingredientes = ingredientes + str
        }
        txtIngredientes.text = ingredientes
        validarOrden()
    }
    @IBAction func seleccionPinia(_ sender: Any) {
        let str = "Piña, "
        if ingredientes.contains(str)
        {
            ingredientes = ingredientes.replacingOccurrences(of: "Piña, ", with: "")
        }
        else {
            ingredientes = ingredientes + str
        }
        txtIngredientes.text = ingredientes
        validarOrden()
    }
    @IBAction func seleccionAnchoa(_ sender: Any) {
        let str = "Anchoa, "
        if ingredientes.contains(str)
        {
            ingredientes = ingredientes.replacingOccurrences(of: "Anchoa, ", with: "")
        }
        else {
            ingredientes = ingredientes + str
        }
        txtIngredientes.text = ingredientes
        validarOrden()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        txtIngredientes.text = ingredientes
        validarOrden()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaConfirmacion = segue.destination as! ConfirmacionViewController
        vistaConfirmacion.tamanio = self.tamanio
        vistaConfirmacion.tipoMasa = self.tipoMasa
        vistaConfirmacion.tipoQueso = self.tipoQueso
        vistaConfirmacion.ingredientes = self.ingredientes
    }
    
    func validarOrden() {
        if self.tamanio != "" && self.tipoMasa != "" && self.tipoQueso != "" && self.ingredientes != ""
        {
            ordenValida = true
        }
        else{
            ordenValida = false
        }
        btnConfirmar.isEnabled = ordenValida
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
