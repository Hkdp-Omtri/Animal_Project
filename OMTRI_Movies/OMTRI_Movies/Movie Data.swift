//
//  Movie Data.swift
//  OMTRI_Movies
//
//  Created by Merugu,Ruchitha on 4/24/22.
//

import Foundation
import UIKit
struct Genre{
    var section = ""
    var items_Array:[Movie] = []
}
struct Movie{
    var movieName = ""
    var Image = ""
    var movieRating = ""
    var BoxOfficeCollection = ""
    var MovieReleasedYear = ""
   
}
let Movie1 = Genre(section: "Drama",items_Array:[
    Movie(movieName:"Boyhood",Image:"boyhood",movieRating: "7.9", BoxOfficeCollection: "57.3M", MovieReleasedYear: "2014"),
    Movie(movieName:"Mad Max: Fury Road",Image:"mad max",movieRating: "8.1", BoxOfficeCollection: "375.6M", MovieReleasedYear: "2015"),
    Movie(movieName:"Moonlight",Image: "moonlight",movieRating: "7.4", BoxOfficeCollection: "65.3M", MovieReleasedYear: "2016"),
    Movie(movieName:"Inception",Image: "inception",movieRating: "8.8", BoxOfficeCollection: "836.8", MovieReleasedYear: "2010"),
    Movie(movieName:"Slumdog Millionaire",Image: "slumdog millionaire",movieRating: "8", BoxOfficeCollection: "378.1M", MovieReleasedYear: "2008")])
                   
let Movie2 = Genre(section: "comedy",items_Array:[   Movie(movieName:"The Dark Knight",Image:"the dark knight",movieRating: "9", BoxOfficeCollection: "1.005 B", MovieReleasedYear: "2008"),
                                                     Movie(movieName:"The Social Network",Image: "the social network",movieRating: "7.7", BoxOfficeCollection: "224.9M", MovieReleasedYear: "2010"),
                                                     Movie(movieName:"The Wolf of Wall Street",Image:"the wolf of wall street",movieRating: "8.2", BoxOfficeCollection: "392M", MovieReleasedYear: "2013"),
                                                     Movie(movieName:"There Will be Blood",Image: "there will be blood",movieRating: "8.2", BoxOfficeCollection: "76.2M", MovieReleasedYear: "2007"),
                                                     Movie(movieName:"Wall-E",Image: "walle",movieRating: "8.4", BoxOfficeCollection: "521.3M", MovieReleasedYear: "2008")
])
let Movie3 = Genre(section: "thriller",items_Array:[   Movie(movieName:"The Dark Knight",Image:"the dark knight",movieRating: "9", BoxOfficeCollection: "1.005 B", MovieReleasedYear: "2008"),
                                                     Movie(movieName:"The Social Network",Image: "the social network",movieRating: "7.7", BoxOfficeCollection: "224.9M", MovieReleasedYear: "2010"),
                                                     Movie(movieName:"The Wolf of Wall Street",Image:"the wolf of wall street",movieRating: "8.2", BoxOfficeCollection: "392M", MovieReleasedYear: "2013"),
                                                     Movie(movieName:"There Will be Blood",Image: "there will be blood",movieRating: "8.2", BoxOfficeCollection: "76.2M", MovieReleasedYear: "2007"),
                                                     Movie(movieName:"Wall-E",Image: "walle",movieRating: "8.4", BoxOfficeCollection: "521.3M", MovieReleasedYear: "2008")
])

let  genres = [Movie1,Movie2,Movie3]
