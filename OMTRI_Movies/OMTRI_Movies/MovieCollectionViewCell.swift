//
//  MovieCollectionViewCell.swift
//  OMTRI_Movies
//
//  Created by Merugu,Ruchitha on 4/24/22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var ImageViewOutlet: UIImageView!
    func assignMovie(with movie: Movie){
        ImageViewOutlet.image = Movie.Image
    }
}
