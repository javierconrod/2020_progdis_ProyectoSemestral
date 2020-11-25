//
//  ViewController.swift
//  ProyectoFinal
//
//  Created by Alumno on 11/24/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var legendarios : [Legendario] = []
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return legendarios.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celdaLegendario = tableView.dequeueReusableCell(withIdentifier: "celdaLegendario") as! CeldaLegendarioController
        celdaLegendario.lblNombre.text = legendarios[indexPath.row].nombre
        celdaLegendario.lblCategoria.text = legendarios[indexPath.row].categoria
        celdaLegendario.lblPeso.text = legendarios[indexPath.row].peso
        celdaLegendario.lblAltura.text = legendarios[indexPath.row].altura
        celdaLegendario.imgTipo1.image = UIImage(named: legendarios[indexPath.row].tipo1)
        celdaLegendario.imgTipo2.image = UIImage(named: legendarios[indexPath.row].tipo2)
        celdaLegendario.imgLegendario.image = UIImage(named: legendarios[indexPath.row].imagen)
        return celdaLegendario
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Pokemon"
        legendarios.append(Legendario(nombre: "Articuno", categoria: "Freeze Pokémon", tipo1: "hielo", tipo2: "volador", altura: "1.7 m", peso: "55.4 kg", imagen: "articuno"))
        
        legendarios.append(Legendario(nombre: "Zapdos", categoria: "Electric Pokémon", tipo1: "electrico", tipo2: "volador", altura: "1.6 m", peso: "52.6 kg", imagen: "zapdos"))
        
        legendarios.append(Legendario(nombre: "Moltres", categoria: "Flame Pokémon", tipo1: "fuego", tipo2: "volador", altura: "2.0 m", peso: "60,0 kg", imagen: "moltres"))
        
        legendarios.append(Legendario(nombre: "Lugia", categoria: "Diving Pokémon", tipo1: "psiquico", tipo2: "volador", altura: "5,2 m", peso: "216,0 kg", imagen: "lugia"))
        
        legendarios.append(Legendario(nombre: "Ho-oh", categoria: "Rainbow Pokémon", tipo1: "fuego", tipo2: "volador", altura: "3.8 m", peso: "199.0 kg", imagen: "ho-oh"))
    }


}

