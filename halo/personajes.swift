//
//  personajes.swift
//  halo
//
//  Created by Alumno on 11/24/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import Foundation

class Personaje{
    var nombre: String
    var edad: String
    var id: String
    var sexo: String
    var rango: String
    var imagen: String
    var imagen2: String
    var kills: String
    var batallasPeleadas: String
    var tiempoServicio: String
    
    init(nombre:String, edad:String, id:String, sexo:String, rango:String, imagen:String, imagen2:String, kills:String, batallasPeleadas:String, tiempoServicio:String){
        self.nombre = nombre
        self.edad = edad
        self.id = id
        self.sexo = sexo
        self.rango = rango
        self.imagen = imagen
        self.imagen2 = imagen2
        self.kills = kills
        self.batallasPeleadas = batallasPeleadas
        self.tiempoServicio = tiempoServicio
    }
}
