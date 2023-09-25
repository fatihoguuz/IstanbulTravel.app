//
//  sariyerDetailsVC.swift
//  IstanbulTravel
//
//  Created by Fatih Oğuz on 24.09.2023.
//

import UIKit

class sariyerDetailsVC: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var infoLabel: UILabel!
    
    
    
    var selectedTravel : travel?
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        imageView.image = selectedTravel?.image
        nameLabel.text = selectedTravel?.name
        infoLabel.text = selectedTravel?.info
    }
    



}
