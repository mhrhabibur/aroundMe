//
//  ViewController.swift
//  AroundMe
//
//  Created by Habibur Rahman on 7/7/23.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
 
    @IBOutlet var tableView: UITableView!
    var items = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        title = "Around Me"
        
        items.append(Item(name: "ATM", icon: "dollarsign.circle.fill"))
        items.append(Item(name: "Hospital", icon: "cross.case.fill"))
        items.append(Item(name: "Shopping", icon: "cart.fill"))
        items.append(Item(name: "Coffe Shop", icon: "cup.and.saucer.fill"))
        items.append(Item(name: "Hotel", icon: "bed.double.fill"))
        items.append(Item(name: "Gas", icon: "fuelpump.fill"))
        items.append(Item(name: "Pharmacy", icon: "pills.fill"))
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row].name
        cell.imageView?.image = UIImage(systemName: items[indexPath.row].icon)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let mapVC = storyboard?.instantiateViewController(withIdentifier: "mapView") as! MapViewController
        navigationController?.pushViewController(mapVC, animated: true)
        
    }


}

