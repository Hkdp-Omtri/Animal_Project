//
//  ViewController.swift
//  Mangina_TableViewDisplay
//
//  Created by JayaShankar Mangina on 11/15/21.
//

import UIKit

var listArray = [String]()

var prodListArray = [secondVC]()

var dispImagArray = [thirdVC]()

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        //Arrays
        listArray = [
            
            "MacBook Softwares",
            "Super Cars",
            "Marvel SuperHeros",
            "TV Series",
            "Time Travel Theories"
            
        ]
        
        prodListArray = [
            
            secondVC(prod: ["XCode","FinalCut Pro","GarageBand","Finder","Dock"]),
            secondVC(prod: ["Bugatti","Maserati","WMotors","Ferrari","Aston Martin"]),
            secondVC(prod: ["IronMan","Spider-Man","Thor","Hulk","Dr.Strange"]),
            secondVC(prod: ["Silicon Valley","Mr.Robot","The Flash","BlackList","Tehran"]),
            secondVC(prod: ["WormHole","BootStrap Paradox","Time Capsule","Causal Loop","Tachyonic Anti-Telephone"])
            
        ]
        
        dispImagArray = [
            
            thirdVC(
            image: ["xCode","finalCutPro","garageband","macFinder","macOsDock"],
            prodInfo: [
                "An IDE developed by Apple Inc. Widely used for application development of iOS,macOS,watchOS,tvOS,iPadOS,homePodOS",
                "An Application Software developed by Apple. Widely used for Professional Video Editing in industries.",
                "An Apple app that provides the easiest way to record and create original music on your Mac, iPhone, or iPad",
                "The Finder is the default file manager and graphical user interface shell used on all Macintosh operating systems.",
                "The Dock is a prominent feature of the graphical user interface of macOS. It is used to launch applications and to switch between running applications"]),
            
            thirdVC(
            image: ["bugatti","maserati","lycan","ferrari","astonMartin"],
            prodInfo: [
                "The CHIRON is the fastest, most powerful, and exclusive production super sports car in BUGATTI’s history",
                "Maserati MC20 is the first super sports car of the Trident Brand. Discover now its ingenious technologies for outstanding speed",
                "The first hypercar created by W Motors, the Lykan HyperSport, catapulted the company to international stardom when it took center stage in Universal Studios' Furious 7",
                "The Ferrari 812 Superfast[6] (Type F152M) is a front mid-engine, rear-wheel-drive grand tourer produced by Italian sports car manufacturer Ferrari that made its debut at the 2017 Geneva Motor Show.",
                "Standard-bearer for an all-new generation of cars, DB11 is the most powerful and efficient ‘DB’ production model in Aston Martin’s history."]),
            
            thirdVC(
            image: ["ironMan","spiderman","thor","hulk","drStrange"],
            prodInfo: [
                "A wealthy American business magnate, playboy, philanthropist, inventor and ingenious scientist, Anthony Edward 'Tony' Stark. He created a mechanized suit of armor and successive versions to protect the world as Iron Man.",
                "Spider-Man is the alias of Peter Parker. In his origin story, he gets spider-related abilities from a bite from a radioactive spider; these include clinging to surfaces, superhuman strength and agility, and detecting danger with his 'spider-sense'.",
                "The Thor character is based on the Norse deity of the same name, the Asgardian god of thunder whose enchanted hammer Mjolnir enables him to fly and manipulate weather, among his other superhuman attributes.",
                "Following his accidental exposure to gamma rays, Banner transforms into the Hulk when subjected to emotional stress, at or against his will, often leading to destructive rampages and conflicts. The Hulk's level of strength is normally conveyed as proportionate to his level of anger",
                "Doctor Strange serves as the Sorcerer Supreme, the primary protector of Earth against magical and mystical threats. He acquires an assortment of mystical objects, including the powerful Eye of Agamotto and Cloak of Levitation. Strange assumes the title of Sorcerer Supreme."]),
            
            thirdVC(
            image: ["siliconValley","mrRobot","flash","blacklist","tehran"],
            prodInfo: [
                "The series, a parody of Silicon Valley culture, focuses on Richard Hendricks (Thomas Middleditch), a programmer who founds a startup company called Pied Piper, and chronicles his struggles trying to maintain his company while facing competition from larger entities.",
                "Elliot Alderson, a CyberSec Engineer and Hacker gets recruited by an insurrectionary anarchist known as 'Mr. Robot', to join a group of hacktivists called 'fSociety'. The group aims to destroy all debt records by encrypting the financial data of E Corp, the largest conglomerate in the world.",
                "The series follows Barry Allen, portrayed by Grant Gustin, a crime scene investigator who gains super-human speed, which he uses to fight criminals, including others who have also gained superhuman abilities",
                "Raymond 'Red' Reddington, a former U.S. Navy officer turned high-profile criminal who voluntarily surrenders to the FBI, tells them that he has a list of the most dangerous criminals in the world, and willing to inform their operations in exchange for immunity. However, he insists on working exclusively with rookie FBI profiler Elizabeth Keen.",
                "Protagonist Tamar Rabinyan, a young Jewish woman born in Iran but raised in Israel, is a Mossad agent and computer hacker on an undercover mission in the Iranian capital to disable a nuclear reactor. Her objective is neutralizing Iranian air defenses so that Israeli warplanes can bomb a nuclear plant and prevent Iran from obtaining an atomic bomb."]),
            
            thirdVC(
            image: ["wormhole","bootstrapParadox","timeCapsule","causalLoop","tachyonic"],
            prodInfo: [
                "Wormholes are a hypothetical warped spacetime concept. A proposed time-travel machine using a traversable wormhole is to Take one entrance of the wormhole and move it to within the gravitational field of an object that has higher gravity than the other entrance, and then return it to a position near the other entrance.",
                "The Bootstrap Paradox is a theoretical paradox of time travel that occurs when an object or piece of information sent back in time becomes trapped within an infinite cause-effect loop in which the item no longer has a discernible point of origin, and is said to be “uncaused” or “self-created”.",
                "A time capsule is a historic cache of goods or information, usually intended as a deliberate method of communication with future people. The preservation of holy relics dates back for millennia, but the practice of preparing and preserving a collection of everyday artifacts and messages to the future appears to be a more recent practice.",
                "A causal loop is a paradox of time travel that occurs when a future event is the cause of a past event, which in turn is the cause of the future event. Both events then exist in spacetime, but their origin cannot be determined. A causal loop may involve an event, a person or object, or information.",
                "A tachyonic antitelephone is a hypothetical device that could be used to send signals into one's own past. According to the current understanding of physics, no such thing is actually possible. The hypothetical tachyon particles do not exist even theoretically in the standard model of particle physics, due to tachyon condensation."])
        ]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "allProducts", for: indexPath)
        cell.textLabel?.text = listArray[indexPath.row]
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indexPath = self.tableView.indexPathForSelectedRow
        var passingProdListArray : secondVC
        var passingDispImgListArray : thirdVC
        var passingDisImgInfoArray : thirdVC
        
        passingProdListArray = prodListArray[indexPath!.row]
        passingDispImgListArray = dispImagArray[indexPath!.row]
        passingDisImgInfoArray = dispImagArray[indexPath!.row]
        
        let identifier = segue.identifier
        if identifier == "showProducts" {
            let dest = segue.destination as! ProductsDisplayViewController
            dest.productListArray = passingProdListArray.prod
            dest.dispImgInfoArray = passingDisImgInfoArray.prodInfo
            dest.DispImgListArray = passingDispImgListArray.image
        }
    }
    
    }

    



