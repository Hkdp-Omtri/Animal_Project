//
//  ViewController.swift
//  Omtri_SearchApp
//
//  Created by Student on 3/3/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var searchOption: UIButton!

    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var prevImage: UIButton!
    
    @IBOutlet weak var nextImage: UIButton!
    
    @IBOutlet weak var topicinfoText: UITextView!
    
    @IBOutlet weak var resetAction: UIButton!
    
    var imageNumber = 0;
    var topic: Int = -1
    var count1 : Int = -1
    var imagesArray = [["d1","r1","j1","k1","tj1"],
                       ["h1","l1","m1","da1","o1"],
                       ["dol","do1","ra1","p1","f1"]]
    
     var cartoon_keys = ["dexter", "richie", "johnny", "kick", "tom and jerry"]
     var flower_keys = ["hibiscus", "lotus", "marigold", "daisy" , "orchids"]
     var animals_keys = ["dolphin", "dog", "rabbit", "peacock", "flemmingo"]
    
    var description_arrays_assignment = [[ "Dexter's Laboratory is an American animated television series created by Genndy Tartakovsky for Cartoon Network. .","Richie Rich is a Saturday morning animated series produced by Hanna-Barbera Productions and broadcast on ABC from November 8, 1980, to September 1, 1984, based upon the Harvey Comics character of the same name.","Johnny Bravo is the second Cartoon Cartoon, created by animator Van Partible for Cartoon Network.which is one of the famous character in cartoons ", "Kick Buttowski: Suburban Daredevil  is an American animated television series created by Sandro Corsaro and produced by Disney Television Animation. ", "Tom and Jerry is an American animated media franchise and series of comedy short films created in 1940 by William Hanna and Joseph Barbera."],["It is a genus of flowering plants in the mallow family, Malvaceae.", "Nelumbo is a genus of aquatic plants with large, showy flowers. Members are commonly called lotus, though lotus is a name also applied to various other plants and plant groups, including the unrelated genus Lotus.", "agetes  is a genus of annual or perennial, mostly herbaceous plants in the sunflower family Asteraceae.", "Bellis perennis the daisy is a common European species of the family Asteraceae, often considered the archetypal species of that name. ", "Orchids are the beautiful flowers which are mostly grown in North America and European continent, it is the second largest family of flowering plant"],["A dolphin is an aquatic mammal within the infraorder Cetacea.There are 40 extant species named as dolphins.","The dog or domestic dog (Canis familiaris or Canis lupus familiaris) is a domesticated descendant of the wolf which is characterized by an upturning tail.", "Rabbits, also known as bunnies or bunny rabbits, are small mammals in the family Leporidae (which also contains the hares) of the order Lagomorpha (which also contains the pikas).", "Peafowl is a common name for three bird species in the genera Pavo and Afropavo within the tribe Pavonini of the family Phasianidae, the pheasants and their allies.", "Flamingos or flamingoes are a type of wading bird in the family Phoenicopteridae, which is the only extant family in the order Phoenicopteriformes. There are four flamingo species distributed throughout the Americas (including the Caribbean), and two species native to Africa, Asia, and Euope."]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        searchOption.isEnabled = false
        nextImage.isHidden = true
        prevImage.isHidden = true
        resetAction.isHidden = true
        resultImage.image = UIImage(named: "imagenotfound")
    }


 
    @IBAction func searchFieldAction(_ sender: Any) {
        searchOption.isEnabled = true
    }
    
    @IBAction func searchButtonAction(_ sender: UIButton) {
        if(cartoon_keys.contains(searchTextField.text!)){
            topic = 0
           
            imageNumber = 0
            buttonsDisable()
        }
        else if(flower_keys.contains(searchTextField.text!)){
            topic = 1
            imageNumber = 0
            buttonsDisable()
        }
        else if(animals_keys.contains(searchTextField.text!)){
            topic = 2
            imageNumber = 0;
            buttonsDisable()
        }
        else{
            topic = -1
            resultImage.image = UIImage(named: "imagenotfound")
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
            topicinfoText.text = description_arrays_assignment[topic][0]
        }
        
    }
    
    @IBAction func ShowPrevImagesBtn(_ sender: UIButton) {
            nextImage.isEnabled = true;
            imageNumber -= 1
            resultImage.image = UIImage(named: imagesArray[topic][imageNumber])
            topicinfoText.text = description_arrays_assignment[topic][imageNumber]
            if(imageNumber == 0){
                        prevImage.isEnabled = false
                }
    
    }
    
    @IBAction func ShowNextImagesBtn(_ sender: UIButton) {
            prevImage.isEnabled = true
            imageNumber += 1
            resultImage.image = UIImage(named: imagesArray[topic][imageNumber])
            topicinfoText.text = description_arrays_assignment[topic][imageNumber]
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
        resultImage.image = UIImage(named: "imagenotfound")
        
    }
    func buttonsDisable(){
        nextImage.isHidden = false
        prevImage.isHidden = false
        resetAction.isHidden = false
    }


}
