//
//  DetallesCovenantViewController.swift
//  halo
//
//  Created by Alumno on 11/29/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class DetallesCovenantViewController: UIViewController {
    @IBOutlet weak var imgCovenant: UIImageView!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblPlaneta: UILabel!
    @IBOutlet weak var lblAka: UILabel!
    
    var personajeCovenant: PersonajeCovenant?

    override func viewDidLoad() {
        super.viewDidLoad()

        if personajeCovenant != nil {
            lblNombre.text = personajeCovenant?.nombre
            lblPlaneta.text = personajeCovenant?.planetaNatal
            lblAka.text = personajeCovenant?.aka
            imgCovenant.image = UIImage(named: personajeCovenant!.imagen2)
        }
    }
}
