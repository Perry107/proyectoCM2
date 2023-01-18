//
//  OrangeViewController.swift
//  proyectoCM2
//
//  Created by Alumno on 17/01/23.
//

import UIKit

class OrangeViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carritoL.lista.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = carritoL.lista[indexPath.row].name
        
        return cell
    }
    
    @IBOutlet weak var tablaCarrito: UITableView!
    
    @IBOutlet weak var total: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Carrito"
        
        tablaCarrito.delegate = self
        tablaCarrito.dataSource = self
        
        total.text = "$100"

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
