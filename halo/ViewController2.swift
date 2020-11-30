//
//  ViewController2.swift
//  halo
//
//  Created by Alumno on 11/29/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController2: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    @IBOutlet weak var tvCovenant: UITableView!
    var personajesCovent: [PersonajeCovenant] = []
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesCovenantViewController
        destino.personajeCovenant = personajesCovent[tvCovenant.indexPathForSelectedRow!.row]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personajesCovent.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaCovenant") as! CeldaCovenantTableViewCell
        let personaje = personajesCovent[indexPath.row]
        
        celda.lblNombre.text =  personaje.nombre
        celda.lblId.text = personaje.id
        celda.lblPeso.text = personaje.peso
        celda.lblRango.text = personaje.rango
        celda.lblAltura.text = personaje.altura
        celda.imgCovenant.image = UIImage(named: personaje.imagen)
        
        return celda
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personajesCovent.append(PersonajeCovenant(nombre: "Ruutian", altura: "190cm", peso: "90kg", id: "Id: 020", rango: "Soldados", imagen: "ruutian", imagen2: "ruutian 2", planetaNatal: "Planeta natal: Eayn", aka: "Conocidos como: Jackals"))
        personajesCovent.append(PersonajeCovenant(nombre: "Unggoy", altura: "160cm", peso: "115kg", id: "Id: 003", rango: "Reclutas", imagen: "grunt", imagen2: "grunt 2", planetaNatal: "Planeta natal: Balaho", aka: "Conocidos como: Grunts"))
        personajesCovent.append(PersonajeCovenant(nombre: "Sangheili", altura: "240cm", peso: "150kg", id: "Id: 006", rango: "Capitanes", imagen: "elite", imagen2: "elite 2", planetaNatal: "Planeta natal: Sanghelios", aka: "Conocidos como: Elites"))
        personajesCovent.append(PersonajeCovenant(nombre: "Mgalekgolo", altura: "368cm", peso: "4800kg", id: "Id: 015", rango: "Sargentos", imagen: "hunter", imagen2: "hunter 2", planetaNatal: "Planeta natal: Te", aka: "Conocidos como: Hunters"))
        personajesCovent.append(PersonajeCovenant(nombre: "San'Shyuum", altura: "182cm", peso: "90kg", id: "Id: 001", rango: "Generales", imagen: "prophet", imagen2: "prophet 2", planetaNatal: "Planeta natal: Janjur Quom", aka: "Conocidos como: Prophets"))
        personajesCovent.append(PersonajeCovenant(nombre: "Jiralhanae", altura: "270cm", peso: "550kg", id: "Id: 002", rango: "Soldados", imagen: "brute", imagen2: "brute 2", planetaNatal: "Planeta natal: Doisac", aka: "Conocidos como: Brutes"))
        personajesCovent.append(PersonajeCovenant(nombre: "Yanme'e", altura: "177cm", peso: "77kg", id: "Id: 011", rango: "Soldados", imagen: "drone", imagen2: "drone 2", planetaNatal: "Planeta natal: Palamok", aka: "Conocidos como: Drones"))
        personajesCovent.append(PersonajeCovenant(nombre: "Huragok", altura: "274cm", peso: "57kg", id: "Id: 012", rango: "Ingenieros", imagen: "engi", imagen2: "engi 2", planetaNatal: "Planeta natal: Desconocido", aka: "Conocidos como: Engineers"))
        personajesCovent.append(PersonajeCovenant(nombre: "T'vaoan", altura: "200cm", peso: "93kg", id: "Id: 035", rango: "Especialistas", imagen: "skiri", imagen2: "skiri 2", planetaNatal: "Planeta natal: T'vao", aka: "Conocidos como: Skirimishers"))
        personajesCovent.append(PersonajeCovenant(nombre: "Flood", altura: "N/A", peso: "N/A", id: "Id: 000", rango: "N/A", imagen: "flood", imagen2: "flood 2", planetaNatal: "Universo natal: Extragalactico", aka: "Conocidos como: The Flood"))
    }
}
