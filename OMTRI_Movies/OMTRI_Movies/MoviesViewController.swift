//
//  MoviesViewController.swift
//  OMTRI_Movies
//
//  Created by Merugu,Ruchitha on 4/24/22.
//

import UIKit

class MoviesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return genres.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       let cell =
        CollectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "Movie", for: indexPath) as! MovieCollectionViewCell
        cell.assignMovie(with: Movie[indexPath.row])
return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        assignMovieDetails(index:indexPath)
    }
    func assignMovieDetails(index:IndexPath){
        movieNameLabel.text = "Movie Name: \(Movie[index.row].title)"
    }
    

    @IBOutlet weak var CollectionViewOutlet: UICollectionView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieRatingLabel: UILabel!
    @IBOutlet weak var movieBoxOfficeLabel: UILabel!
    @IBOutlet weak var movieYearLabel: UILabel!
    @IBOutlet weak var moviePlotLabel: UILabel!
    @IBOutlet weak var movieCastLabel: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        CollectionViewOutlet.delegate = self
        CollectionViewOutlet.dataSource =  self
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
