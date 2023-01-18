//
//  inventario.swift
//  proyectoCM2
//
//  Created by Alumno on 18/01/23.
//

import Foundation
import UIKit

class inventario{
    
    var inventario:[producto] = []
    
    func add(producto:producto){
        
        for (index,productoI) in self.inventario.enumerated(){
            if(productoI.id == producto.id){
                self.inventario[index].cantidad+=1
                return
            }
        }
        self.inventario.append(producto)
    }
    func del(producto:producto){
        for (index,productoC) in self.inventario.enumerated(){
            if(productoC.id == producto.id){
                self.inventario.remove(at: index)
            }
        }
    }
}

var inventarioI:inventario = inventario()

var agua:producto = producto(name: "Agua", precio: 10.1, descripcion:"Agua natural",id:0)

var aguaJamaica:producto = producto(name: "Agua de Jamaica", precio: 10.2, descripcion:"Agua sabor Jamaica",id:1)


