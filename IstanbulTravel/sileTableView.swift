//
//  sileTableView.swift
//  IstanbulTravel
//
//  Created by Fatih Oğuz on 24.09.2023.
//

import UIKit

class sileTableView: UIViewController,UITableViewDelegate, UITableViewDataSource {

    var myTravel = [travel]()
        var chonsenTravel : travel?
      
    @IBOutlet weak var tableView: UITableView!
    
        override func viewDidLoad() {
            super.viewDidLoad()

            tableView.dataSource = self
            tableView.delegate = self
            
            
            let agva = travel(imageV: UIImage(named: "agva")!, nameV: "Ağva", infoV: "Ağva, Şile'ye bağlı bir semttir. Hititler, Frigler, Romalılar ve Osmanlılar gibi birçok uygarlığın geçiş yeri olmuş bir belde. M.Ö. 7. yüzyıla uzanan tarihin kalıntılarına, Ağva'ya bağlı civar köylerde rastlamak mümkün.")
            let ayazma = travel(imageV: UIImage(named: "ayazma")!,nameV: "Ayazma Sahil", infoV: "Şile, yaklaşık 10 km.lik bir kumsala sahiptir. Şile’nin kumsal olarak 3 plajı bulunmaktadır. Bunlardan ilki Şile’nin giriş tarafında yer almakta, geniş ve kum bir plaj olan Şile Halk Plajı (Ayazma Plajı)’dır. Diğerleri Ağlayankaya ve Uzunkum Plajlarıdır. Şile Belediyesi bu yaz döneminde de her yıl olduğu gibi halkın güvenlik içinde denize girebilmesi için bir çok önlemi almış durumdadır. ")
            let hacilli = travel(imageV: UIImage(named: "hacilli")!, nameV: "Hacıllı Şelalesi", infoV: "İstanbul’dan kaçmak isteyen kimselerin öncelikli tercihlerinden bir tanesi Şile olur. Şehir hayatına uzak ve doğal alanları ile ön plana çıkan Şile’de genellikle 2-3 günlük planlamalar yapmaya müsait pek çok alan vardır. Bunlardan bir tanesi de Ağva Bölgesi’nde bulunan Hacıllı Köyü ve köy sınırları içerisindeki şelale ve kamp alanlarıdır.")
            let kale = travel(imageV: UIImage(named: "kale")!, nameV: "Şile Kalesi", infoV: "Şile Kalesi veya Ocaklı Ada Kalesi, İstanbul'un Şile ilçesindeki Ocaklı Ada'nın üzerinde konumlanmış kaledir. 2015'teki restorasyon sonrasındaki görünümü SüngerBob'a benzediği için eleştirilmiştir.")
            
           
            
            myTravel.append(agva)
            myTravel.append(ayazma)
            myTravel.append(hacilli)
            myTravel.append(kale)
         
           
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return myTravel.count
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell()
            cell.textLabel?.text = myTravel[indexPath.row].name
            return cell
        }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            chonsenTravel = myTravel[indexPath.row]
            self.performSegue(withIdentifier: "sileDetails", sender: nil)
        }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "sileDetails"{
                let destinationVS = segue.destination as! sileDetailsVC
                destinationVS.selectedTravel =
                chonsenTravel
            }
        }

}
