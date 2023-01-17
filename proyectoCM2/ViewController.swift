//
//  ViewController.swift
//  proyectoCM2
//
//  Created by Alumno on 17/01/23.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    var carritoI:carritoP = carritoP()
    
    var agua:producto = producto(name: "Agua", precio: 10.1, descripcion:"Agua natural",id:0)
    
    var aguaJamaica:producto = producto(name: "Agua de Jamaica", precio: 10.2, descripcion:"Agua sabor Jamaica",id:1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        carritoI.add(producto: agua)
        carritoI.add(producto: aguaJamaica)
        carritoI.add(producto: agua)
        
        print("Resultado",carritoI.carrito[1].cantidad)
        
        print(carritoI.carrito[0].name)
        print(carritoI.carrito[1].id)
        
        
        
    }
    
    
    
}

