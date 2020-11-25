//
//  Legendario.swift
//  ProyectoFinal
//
//  Created by Alumno on 11/24/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import Foundation

class Legendario{
    var nombre : String
    var categoria : String
    var tipo1 : String
    var tipo2 : String
    var altura : String
    var peso : String
    var imagen: String
    
    init(nombre:String, categoria:String, tipo1:String, tipo2:String, altura:String, peso:String, imagen:String){
        self.nombre=nombre
        self.categoria=categoria
        self.tipo1=tipo1
        self.tipo2=tipo2
        self.altura=altura
        self.peso=peso
        self.imagen=imagen
    }
}
