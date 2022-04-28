//
//  ViewController.swift
//  Merugu_Movies
//
//  Created by Merugu,Ruchitha on 4/22/22.
//

import UIKit

class GenreViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    let category = categoryArray
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        category.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = genreTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        cell.textLabel?.text = category[indexPath.row].category
        return cell
    }
    

    @IBOutlet weak var genreTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        genreTableView.dataSource = self
        genreTableView.delegate = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "movieSegue" {
            let destination = segue.destination as! MoviesViewController
            destination.moviesArray = category[genreTableView.indexPathForSelectedRow!.row].movies
            
        }
    }


}

