//
//  displayImageViewController.swift
//  Mangina_TableViewDisplay
//
//  Created by JayaShankar Mangina on 11/18/21.
//

import UIKit

class displayImageViewController: UIViewController {
    
    var image = UIImage()
    var productInfo = String()

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var getInfoOutlet: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageView.image = image
        imageView.layer.cornerRadius = 20
        imageView.clipsToBounds = true
        
        getInfoOutlet.layer.cornerRadius = 15
        getInfoOutlet.clipsToBounds = true
        
        displayLabel.text = ""
        
    }
    

    @IBAction func getInfo(_ sender: UIButton) {
        displayLabel.text = productInfo
        displayLabel.textColor = .darkText
        
    }
    

}
