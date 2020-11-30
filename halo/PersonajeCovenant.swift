//
//  PersonajeCovenant.swift
//  halo
//
//  Created by Alumno on 11/29/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import Foundation

class PersonajeCovenant {
    var nombre: String
    var altura: String
    var peso: String
    var id: String
    var rango: String
    var imagen: String
    var imagen2: String
    var planetaNatal: String
    var aka: String
    
    init(nombre:String, altura:String, peso:String, id:String, rango:String, imagen:String, imagen2:String, planetaNatal:String, aka:String) {
        self.nombre = nombre
        self.altura = altura
        self.peso = peso
        self.id = id
        self.rango = rango
        self.imagen = imagen
        self.imagen2 = imagen2
        self.planetaNatal = planetaNatal
        self.aka = aka
    }
}
