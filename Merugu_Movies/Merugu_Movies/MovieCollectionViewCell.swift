//
//  MovieCollectionViewCell.swift
//  Merugu_Movies
//
//  Created by Merugu,Ruchitha on 4/24/22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var ImageViewOutlet: UIImageView!
    func assignMovie(_ movie: Movie) {
        ImageViewOutlet.image = movie.image
    
    }
}
