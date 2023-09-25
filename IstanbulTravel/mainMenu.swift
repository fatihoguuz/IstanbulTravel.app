//
//  mainMenu.swift
//  IstanbulTravel
//
//  Created by Fatih Oğuz on 16.09.2023.
//

import UIKit

class mainMenu: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
 
    
      
    @IBAction func adalarButton(_ sender: Any) {
        performSegue(withIdentifier: "adalar", sender: nil)
    }

    
    @IBAction func besiktas(_ sender: Any) {
        performSegue(withIdentifier: "besiktas", sender: nil)
    }
    
    
    @IBAction func beykozButton(_ sender: Any) {
        performSegue(withIdentifier: "beykoz", sender: nil)
    }
    
    
    @IBAction func fatihButton(_ sender: Any) {
        performSegue(withIdentifier: "fatih", sender: nil)
    }
    
    @IBAction func kadikoyButton(_ sender: Any) {
        performSegue(withIdentifier: "kadikoy", sender: nil)
    }
    

    @IBAction func sariyer(_ sender: Any) {
        performSegue(withIdentifier: "sariyer", sender: nil)
    }
    
    @IBAction func sile(_ sender: Any) {
        performSegue(withIdentifier: "sile", sender: nil)
    }
    
    
    @IBAction func uskudar(_ sender: Any) {
        performSegue(withIdentifier: "uskudar", sender: nil)
    }
    
    
    
    
    
    
    }


