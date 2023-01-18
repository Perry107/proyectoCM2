//
//  ViewController.swift
//  proyectoCM2
//
//  Created by Alumno on 17/01/23.
//

import UIKit
import Foundation

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return inventarioL.lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellI", for: indexPath)
        cell.textLabel?.text = inventarioL.lista[indexPath.row].name
        return cell
    }
    

    
    @IBOutlet weak var tablaInicio: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        inventarioL.add(producto: agua)
        inventarioL.add(producto: aguaJamaica)
        
        carritoL.add(producto: aguaJamaica)
        carritoL.add(producto: agua)
        carritoL.del(producto: agua)
        
        for (index,producto) in carritoL.lista.enumerated(){
            print(index,".",producto.name)
        }
        
        carritoL.add(producto: agua)
        carritoL.add(producto: aguaJamaica)
        
        for (index,producto) in carritoL.lista.enumerated(){
            print(index,".",producto.name)
        }
        
        tablaInicio.delegate = self
        tablaInicio.dataSource = self
        
        
    }
    
    
}
