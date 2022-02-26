//
//  ProductsDisplayViewController.swift
//  Mangina_TableViewDisplay
//
//  Created by JayaShankar Mangina on 11/16/21.
//

import UIKit


class ProductsDisplayViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productListArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = productsTableView.dequeueReusableCell(withIdentifier: "showProducts", for: indexPath)
        cell.textLabel?.text = productListArray[indexPath.row]
        return cell
    }
    
    var productListArray = [String]()
    var DispImgListArray = [String]()
    var dispImgInfoArray = [String]()
    
    @IBOutlet weak var productsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productsTableView.delegate = self
        productsTableView.dataSource = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indexPath = self.productsTableView.indexPathForSelectedRow
        let identifier = segue.identifier
        if identifier == "displayImages" {
            let dest = segue.destination as! displayImageViewController
            dest.productInfo = dispImgInfoArray[indexPath!.row]
            dest.image = UIImage(named: DispImgListArray[indexPath!.row])!
        }
    }
    
}
