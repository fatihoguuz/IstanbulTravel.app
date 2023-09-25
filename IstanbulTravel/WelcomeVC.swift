//
//  WelcomeVC.swift
//  IstanbulTravel
//
//  Created by Fatih Oğuz on 10.09.2023.
//

import UIKit

class WelcomeVC: UIViewController {
    
    @IBOutlet weak var welcomeImageV: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.welcomeImageV.center.y -= view.bounds.height
    }
    override func viewWillAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.5, delay: 0.4, animations: {
            self.welcomeImageV.center.y += self.view.bounds.height
        })
    }
        
    
        
        
        
        
    
    @IBAction func nextButton(_ sender: Any) {
        performSegue(withIdentifier: "nextButton1", sender: nil)
        
    }
}
