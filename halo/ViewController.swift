//
//  ViewController.swift
//  halo
//
//  Created by Alumno on 11/24/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tvSpartans: UITableView!
    
    var personaje : [Personaje] = []
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesSpartanViewController
        destino.personaje = personaje[tvSpartans.indexPathForSelectedRow!.row]
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personaje.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaSpartans") as! CeldaPersonajesController
        
        celda.imgPersonaje.image = UIImage(named: personaje[indexPath.row].imagen)
        celda.lblNombre.text = personaje[indexPath.row].nombre
        celda.lblEdad.text = personaje[indexPath.row].edad
        celda.lblRango.text = personaje[indexPath.row].rango
        celda.lblSexo.text = personaje[indexPath.row].sexo
        celda.lblId.text = personaje[indexPath.row].id
        
        return celda
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personaje.append(Personaje(nombre: "Master Chief", edad: "48 años", id: "Id: 117", sexo: "Sexo: M", rango: "Master Chief", imagen: "Master Chief", imagen2: "Master Chief 2", kills: "9999 kills confirmados", batallasPeleadas: "999 batallas peleadas", tiempoServicio: "48 años de servicio"))
        personaje.append(Personaje(nombre: "Douglas", edad: "42 años", id: "Id: 042", sexo: "Sexo: M", rango: "Soldado", imagen: "Douglas", imagen2: "Douglas 2", kills: "40 kills confirmados", batallasPeleadas: "12 batallas peleadas", tiempoServicio: "4 años de servicio"))
        personaje.append(Personaje(nombre: "Eduard", edad: "32 años", id: "Id: 052", sexo: "Sexo: M", rango: "General", imagen: "eduard", imagen2: "eduard 2", kills: "366 kills confirmados", batallasPeleadas: "150 batallas peleadas", tiempoServicio: "12 años de servicio"))
        personaje.append(Personaje(nombre: "Jorge", edad: "37 años", id: "Id: 038", sexo: "Sexo: M", rango: "Soldado", imagen: "jorge", imagen2: "jorge 2", kills: "7 kills confirmados", batallasPeleadas: "3 batallas peleadas", tiempoServicio: "1 año de servicio"))
        personaje.append(Personaje(nombre: "Silvia", edad: "36 años", id: "Id: 098", sexo: "Sexo: F", rango: "Capitan", imagen: "silvia", imagen2: "silvia 2", kills: "62 kills confirmados", batallasPeleadas: "26 batallas peleadas", tiempoServicio: "6 años de servicio"))
        personaje.append(Personaje(nombre: "Juan", edad: "54 años", id: "Id: 075", sexo: "Sexo: M", rango: "Soldado", imagen: "Juan", imagen2: "Juan 2", kills: "1 kill confirmado", batallasPeleadas: "1 batalla peleada", tiempoServicio: "0.5 años de servicio"))
        personaje.append(Personaje(nombre: "Julio", edad: "24 años", id: "Id: 642", sexo: "Sexo: M", rango: "Recluta", imagen: "julio", imagen2: "julio 2", kills: "0 kills confirmados", batallasPeleadas: "0 batallas peleadas", tiempoServicio: "0 años de servicio"))
        personaje.append(Personaje(nombre: "Paul", edad: "38 años", id: "Id: 299", sexo: "Sexo: M", rango: "Sargento", imagen: "Paul", imagen2: "Paul 2", kills: "50 kills confirmados", batallasPeleadas: "19 batallas peleadas", tiempoServicio: "11 años de servicio"))
        personaje.append(Personaje(nombre: "Erick", edad: "55 años", id: "Id: 042", sexo: "Sexo: M", rango: "General", imagen: "erick", imagen2: "erick 2", kills: "400 kills confirmados", batallasPeleadas: "164 batallas peleadas", tiempoServicio: "24 años de servicio"))
        personaje.append(Personaje(nombre: "Jenn", edad: "42 años", id: "Id: 042", sexo: "Sexo: F", rango: "Sargento", imagen: "Jenn", imagen2: "Jenn 2", kills: "66 kills confirmados", batallasPeleadas: "20 batallas peleadas", tiempoServicio: "2 años de servicio"))
    }
}
