//
//  ViewController.swift
//  Reproductor
//
//  Created by Saul Zuñiga Perez on 18/01/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    
    private let myData = ["Escuchaste: 34 min", "Artista favorito: Molotov", "Podscast: 12", "AudioLibros: 23", "Krakatoa: 4 victorys", "Elaborado por Saúl Zúñiga"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableview?.dataSource = self
    }


}


extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableview.dequeueReusableCell(withIdentifier: "cell")
        
        if cell == nil {
            
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        
        
        cell!.textLabel?.text = myData[indexPath.row]
        return cell!
    }
    
}
