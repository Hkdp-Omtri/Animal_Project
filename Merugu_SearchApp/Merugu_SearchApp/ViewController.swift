//
//  ViewController.swift
//  Merugu_SearchApp
//
//  Created by Student on 3/2/22.
//

import UIKit

class ViewController: UIViewController {
    var imagesArray = [ [UIImage(named: "audicar.jpg"), UIImage(named: "Tata.jpeg"), UIImage(named: "Honda.jpg"), UIImage(named: "mahindra.jpg"), UIImage(named: "images.jpg") ], [UIImage(named: "rosey.jpg"), UIImage(named: "jasmin.jpg"), UIImage(named: "sunflower.jpg"), UIImage(named: "tulips.jpg"), UIImage(named: "dafodil.jpg") ], [UIImage(named: "pandaC.jpg"), UIImage(named: "hippo.jpg"), UIImage(named: "lion.jpg"), UIImage(named: "deer.png"), UIImage(named: "elephant.jpg") ]]
    
    var emptySearchImage = [UIImage(named: "imagenotfound.jpg")]
    var wordEntered:String = ""
    
    var car_keywords = ["audi", "tata", "honda", "mahindra", "lamborghini"]
    var flower_keywords = ["rose", "jasmin", "sunflower", "tulips" , "dafodil"]
    var animals_keywords = ["panda", "hippo", "lion", "deer", "elephant"]
    
    let car_keywords_description = [ ["Audi is a German automative manufacture of luxury cars headquartered in Germany, founded by engineer August Horch"],["Tata cars is an Indian Car Manufacturer established in 1945, headquarted in Mumbai, founder J.R.D.Tata"],["Honda is Japanese Multinational company headquarted in Japan, founded by Hamamaatsu in 1948, its one of the leading cat makers in Japan"], ["Mahindra & Mahindra is Indian Multinational Automative Manufcturing Co-operation head quartered in Mumbai established in 1945 and its on of the fortune 500 company"], ["Automobili Lambo is an Italian brand and manufactureer of luxury sports car and company owned by volkswagon group, founded in 1963 by Ferruccio"]]
    
    let flower_keywords_description = [ ["Rose scientific name is Rosa, there are over Hundred types, its orginated from Great Britan in 1972 and it has sharp prickles "], ["Jasmin has scientific name Jasminum , orginated from Africa, the characteristic of the jasime is there fragrance"], ["Sunflower belongs to Helianthus and its native to North America and Central America, the seeds of this plants are used to produce oil which is used for day to day cooking"], ["Tulips has an scientific name Tulipa, it belongs to Central Asia, they are of different colors like Red, Pink and Purple"], ["They belongs to Narcissus, they are found mostly found in South Florida, it represents rebirth and new beginnings"]]
    
    let animals_keywords_description = [ ["The Species belongs to China, it is characterized by bold black and white coat and rotund body, the lifespan is about 20 years and it belongs to herbivorouds"], ["Hippo species belongs to Saharan-Africa, its an Omnivorous animal and lifespan is 40 to 50 years, the max speed is 30 kmph"], ["Lion is a large cat of the genus Panthera native to Africa and India. It has mascular body  and king of jungle, it is a Carnivorus animal and lifespan is 10 t0 15 years"], ["Deer are hoofed ruminant mammals forming the family Cervidae. The two main groups are Cervinae, including th muntjac, the elk, the male deer is called buck"], ["Elephant are the largest existing land animals, Three living species are currently recognised: the african bush elephant, the african forest elephant and the Asian elephant, the lifespan is aroung 40 years"]]
    

 
    @IBOutlet weak var searchTextField: UITextField!
    
    
    
    
    @IBOutlet weak var resultImage: UIImageView!
    
    
    
    @IBOutlet weak var topicInfoText: UITextView!
    
    var i:Int = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    
    @IBAction func searchButtonAction(_ sender: UIButton) {
    }
    
    
    @IBAction func showNextImageBtn(_ sender: UIButton) {
    }
    
  
    @IBAction func showPrevImageBtn(_ sender: UIButton) {
    }
    
    @IBAction func ResetBtn(_ sender: UIButton) {
    }
}

