//
//  carrito.swift
//  proyectoCM2
//
//  Created by Alumno on 17/01/23.
//

import Foundation
import UIKit

class carritoP {
    var carrito:[producto] = []
    func add(producto:producto){
        
        for (index,productoC) in self.carrito.enumerated(){
            if(productoC.id == producto.id){
                self.carrito[index].cantidad+=1
                return
            }
        }
        self.carrito.append(producto)
    }
    func del(producto:producto){
        for (index,productoC) in self.carrito.enumerated(){
            if(productoC.id == producto.id){
                self.carrito.remove(at: index)
            }
        }
    }
    
}

