//
//  ViewController.swift
//  MERUGU_SearchApp
//
//  Created by Student on 3/3/22.
//

import UIKit

class ViewController: UIViewController {

    var imageNumber = 0;
        var topic: Int = -1
        var count1 : Int = -1
        
        var imagesArray = [ [ "audicar",  "Tata", "Honda", "mahindra", "images" ],
                            [ "rosey",  "jasmin",  "sunflower", "tulips","dafodil" ],
                            [ "pandaC",  "hippo", "lion", "deer", "elephant" ]
                          ]

        
        var car_keywords = ["audi", "tata", "honda", "mahindra", "lamborghini"]
        var flower_keywords = ["rose", "jasmin", "sunflower", "tulips" , "dafodil"]
        var animals_keywords = ["panda", "hippo", "lion", "deer", "elephant"]
        
        let topic_array = [ [ "Audi is a German automative manufacture of luxury cars headquartered in Germany, founded by engineer August Horch","Tata cars is an Indian Car Manufacturer established in 1945, headquarted in Mumbai, founder J.R.D.Tata","Honda is Japanese Multinational company headquarted in Japan, founded by Hamamaatsu in 1948, its one of the leading cat makers in Japan", "Mahindra & Mahindra is Indian Multinational Automative Manufcturing Co-operation head quartered in Mumbai established in 1945 and its on of the fortune 500 company", "Automobili Lambo is an Italian brand and manufactureer of luxury sports car and company owned by volkswagon group, founded in 1963 by Ferruccio"],[ "Rose scientific name is Rosa, there are over Hundred types, its orginated from Great Britan in 1972 and it has sharp prickles ", "Jasmin has scientific name Jasminum , orginated from Africa, the characteristic of the jasime is there fragrance", "Sunflower belongs to Helianthus and its native to North America and Central America, the seeds of this plants are used to produce oil which is used for day to day cooking", "Tulips has an scientific name Tulipa, it belongs to Central Asia, they are of different colors like Red, Pink and Purple", "They belongs to Narcissus, they are found mostly found in South Florida, it represents rebirth and new beginnings"],[ "The Species belongs to China, it is characterized by bold black and white coat and rotund body, the lifespan is about 20 years and it belongs to herbivorouds", "Hippo species belongs to Saharan-Africa, its an Omnivorous animal and lifespan is 40 to 50 years, the max speed is 30 kmph", "Lion is a large cat of the genus Panthera native to Africa and India. It has mascular body  and king of jungle, it is a Carnivorus animal and lifespan is 10 t0 15 years", "Deer are hoofed ruminant mammals forming the family Cervidae. The two main groups are Cervinae, including th muntjac, the elk, the male deer is called buck","Elephant are the largest existing land animals, Three living species are currently recognised: the african bush elephant, the african forest elephant and the Asian elephant, the lifespan is aroung 40 years"] ]
        
        
        @IBOutlet weak var searchTextField: UITextField!
            
            @IBOutlet weak var searchOption: UIButton!

            @IBOutlet weak var resultImage: UIImageView!
            
            @IBOutlet weak var prevImage: UIButton!
            
            @IBOutlet weak var nextImage: UIButton!
            
            @IBOutlet weak var topicinfoText: UITextView!
            
            @IBOutlet weak var resetAction: UIButton!
        
    override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            searchOption.isEnabled = false
            nextImage.isHidden = true
            prevImage.isHidden = true
            resetAction.isHidden = true
            resultImage.image = UIImage(named: "notfound")

            //On Loading the app we need to display notfound Image
        }



    @IBAction func searchFieldAction(_ sender: Any) {
            searchOption.isEnabled = true
        }
 
    
        @IBAction func searchButtonAction(_ sender: UIButton) {
            if(car_keywords.contains(searchTextField.text!)){
                topic = 0
                imageNumber = 0
                buttonsDisable()
            }
            else if(flower_keywords.contains(searchTextField.text!)){
                topic = 1
                imageNumber = 0
                buttonsDisable()
            }
            else if(animals_keywords.contains(searchTextField.text!)){
                topic = 2
                imageNumber = 0;
                buttonsDisable()
            }
            else{
                topic = -1
                resultImage.image = UIImage(named: "notfound")
                topicinfoText.text = "No matches with the given Key words. Please try again."
                resetAction.isHidden = true
                nextImage.isHidden = true
                prevImage.isHidden = true
            
            }
            
            if(topic != -1)
            {
                prevImage.isEnabled = false
                nextImage.isEnabled = true
                count1 = imagesArray[topic].count
                resultImage.image = UIImage(named: imagesArray[topic][0])
                topicinfoText.text = topic_array[topic][0]
            }
            
        }
        
        @IBAction func ShowPrevImagesBtn(_ sender: UIButton) {
                nextImage.isEnabled = true;
                imageNumber -= 1
                resultImage.image = UIImage(named: imagesArray[topic][imageNumber])
                topicinfoText.text = topic_array[topic][imageNumber]
                if(imageNumber == 0){
                            prevImage.isEnabled = false
                    }
        
        }
        
        @IBAction func ShowNextImagesBtn(_ sender: UIButton) {
                prevImage.isEnabled = true
                imageNumber += 1
                resultImage.image = UIImage(named: imagesArray[topic][imageNumber])
                topicinfoText.text = topic_array[topic][imageNumber]
                if(imageNumber == count1-1){
                    nextImage.isEnabled = false
                }
        }
        
        @IBAction func resetButton(_ sender: Any) {
            nextImage.isHidden = true
            prevImage.isHidden = true
            resetAction.isHidden = true
            searchTextField.text = ""
            searchOption.isEnabled = false
            topicinfoText.text = ""
            resultImage.image = UIImage(named: "notfound")
            
        }
        func buttonsDisable(){
            nextImage.isHidden = false
            prevImage.isHidden = false
            resetAction.isHidden = false
        }
        

    }



