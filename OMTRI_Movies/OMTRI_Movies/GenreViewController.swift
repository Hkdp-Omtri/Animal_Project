//
//  ViewController.swift
//  OMTRI_Movies
//
//  Created by Merugu,Ruchitha on 4/24/22.
//

import UIKit

class GenreViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = genreTableView.dequeueReusableCell(withIdentifier:"sectionCell", for: indexPath)
        cell.textLabel?.text = items!.items_Array[indexPath.row].movieName
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return genres.count

    }
    

    
    var items : Genre?
    //func tableview(_ tableView: UITableView, cellForRowAt indexpath: IndexPath) -> UITableViewCell {
      //  var cell = genreTableView.dequeueReusableCell(withIdentifier:"sectionCell", for: indexpath)
      //  cell.textLabel?.text = items!.items_Array[indexpath.row].movieName
       // return cell
   // }
    var genre = Movie()
    var genresArr = genres

    @IBOutlet weak var genreTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = items?.section
        genreTableView.delegate = self
        genreTableView.dataSource = self
    }


}

