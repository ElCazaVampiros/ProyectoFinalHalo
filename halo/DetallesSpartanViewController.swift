//
//  DetallesSpartanViewController.swift
//  halo
//
//  Created by Alumno on 11/29/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class DetallesSpartanViewController: UIViewController {
    var personaje: Personaje?
    
    @IBOutlet weak var imgSpartan: UIImageView!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblKills: UILabel!
    @IBOutlet weak var lblBatallasPeleadas: UILabel!
    @IBOutlet weak var lblTiempoServicio: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if personaje != nil {
            imgSpartan.image = UIImage(named: personaje!.imagen2)
            lblNombre.text = personaje?.nombre
            lblKills.text = personaje?.kills
            lblBatallasPeleadas.text = personaje?.batallasPeleadas
            lblTiempoServicio.text = personaje?.tiempoServicio
        }
    }
}
