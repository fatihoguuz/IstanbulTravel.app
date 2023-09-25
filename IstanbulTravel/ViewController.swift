//
//  ViewController.swift
//  IstanbulTravel
//
//  Created by Fatih Oğuz on 8.09.2023.
//

import UIKit


class ViewController: UIViewController  {
   
    @IBOutlet weak var mailTextFiled: UITextField!
    
        @IBOutlet weak var passwordTextFiled: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func logınButton(_ sender: Any) {
     
            performSegue(withIdentifier: "infoButton", sender: nil)
    
        func makeAlert(titleInput: String, messageInput: String) {
            let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
            
            let okButton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler: nil)
            
            alert.addAction(okButton)
            
            self.present(alert, animated: true, completion: nil)
        }
        
        if mailTextFiled.text == "" {
            makeAlert(titleInput: "Hata!", messageInput: "İsim Giriniz")
        } else if passwordTextFiled.text == "" {
            makeAlert(titleInput: "Hata!", messageInput: "Soyisim Giriniz")
        }
        
        else {
            makeAlert(titleInput: "Başarılı", messageInput: "")
        }
        
    }
 
}
    


