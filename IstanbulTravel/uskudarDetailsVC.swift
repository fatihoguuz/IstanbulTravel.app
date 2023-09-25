//
//  uskudarDetailsVC.swift
//  IstanbulTravel
//
//  Created by Fatih Oğuz on 24.09.2023.
//

import UIKit

class uskudarDetailsVC: UIViewController {
    
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
