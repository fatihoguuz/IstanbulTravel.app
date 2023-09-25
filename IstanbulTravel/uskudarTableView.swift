//
//  uskudarTableView.swift
//  IstanbulTravel
//
//  Created by Fatih Oğuz on 24.09.2023.
//

import UIKit

class uskudarTableView: UIViewController,UITableViewDelegate, UITableViewDataSource {

    var myTravel = [travel]()
        var chonsenTravel : travel?
      

    @IBOutlet weak var tableView: UITableView!
    
        override func viewDidLoad() {
            super.viewDidLoad()

            tableView.dataSource = self
            tableView.delegate = self
            
            
            let beylerbeyi = travel(imageV: UIImage(named: "beylerbeyi")!, nameV: "Beylerbeyi Sarayı", infoV: "Beylerbeyi Sarayı, İstanbul'un Üsküdar ilçesinde bulunan yazlık bir Osmanlı sarayıydı. Günümüzde müze olarak kullanılan Beylerbeyi Sarayı, kendisine bağlı çeşitli yapı ve diğer unsurlardan oluşan bir kompleksin parçasıdır. Adını, bulunduğu Beylerbeyi semtinden alır.")
            let camii = travel(imageV: UIImage(named: "camii")!, nameV: "Çamlıca Camii", infoV: "Çamlıca Camii, Türkiye'nin İstanbul şehrinde yer alan bir camidir. Çamlıca, Üsküdar'da yapımına 29 Mart 2013'te başlanan ve 3 Mayıs 2019'da açılışı yapılan cami, cumhuriyet tarihinin en büyük camisidir. 63 bin kişi kapasiteli ve 6 minareli cami 57 bin 500 metrekarelik alana sahiptir. ")
            let camlica = travel(imageV: UIImage(named: "camlica")!,nameV: "Çamlıca Tepesi", infoV: "Çamlıca Tepesi, Üsküdar‘da gezilecek yerler arasında en popüler olan yerlerden birisi konumunda. Üsküdar’ın yaklaşık 4 km. kadar sırtlarında 260 metrelik bir tepede bulunan Çamlıca Tepesi’nde muhteşem İstanbul manzarası eşliğinde güzel bir dinlence keyfi sürmek mümkün. Özellikle hafta sonu manzaralı güzel bir mekanda sabah kahvaltıları ve akşam yemekleri için çok ideal.")
            let fethipasa = travel(imageV: UIImage(named: "fethipasa")!, nameV: "Fethi Paşa Korusu", infoV: "Fethipaşa Korusu, İstanbul'un Üsküdar ilçesi, Paşalimanı bölgesinde bulunan, denize bakan bir korudur. Kuzguncuk ve Sultantepe mahalleleri arasında yer alır. Koru adını, Osmanlı vezirlerinden Fethi Ahmet Paşa'dan almaktadır.")
            let kizkulesi = travel(imageV: UIImage(named: "kizkulesi")!, nameV: "Kız Kulesi", infoV: "Kız Kulesi, İstanbul Boğazı'nın Marmara Denizi'ne yakın kısmında, Salacak açıklarında yer alan küçük adacık üzerinde inşa edilmiş yapıdır. ")
           
            let kuzguncuk = travel(imageV: UIImage(named: "kuzguncuk")!, nameV: "Kuzguncuk", infoV: "Kuzguncuk İstanbul'un Anadolu yakasında Üsküdar ilçesinde yer alan bir semttir. Boğaziçi’nin Anadolu kıyısında, Üsküdar, Paşalimanı ile Beylerbeyi arasındaki yerleşme Kuzeybatı-güneydoğu doğrultusunda oluşmuş, Boğaziçi’ne açılan bir vadi içinde gelişmiştir.")
            let mihrimah = travel(imageV: UIImage(named: "mihrimah")!, nameV: "Mihrimah Sultan Camii", infoV: "Mihr-î-Mâh Sultan Camii, Mihrimah Sultan Camii ya da İskele Camii, İstanbul'un Üsküdar ilçesinde meydanda bulunan Mimar Sinan'ın Kanuni Sultan Süleyman'ın Hürrem Sultan'dan olan kızı Mihrimah Sultan için yaptığı camidir. Sinan'ın erken dönem eserlerindendir. Kubbesi, ön cephesi dışındaki diğer üç cephesinden yarım kubbelerle desteklenmiştir.")
            let selimiye = travel(imageV: UIImage(named: "selimiye")!, nameV: "Selimiye Kışlası", infoV: "Selimiye Kışlası, İstanbul'un Üsküdar ilçesinde III. Selim tarafından Nizâm-ı Cedîd askerleri için inşa ettirilen kışla. Selimiye Kışlası ilk olarak III. Selim devrinde yeni kurulan Nizâm-ı Cedîd askerleri için kesmetaş bir kaide üzerinde ahşap olarak inşa edildi.")
            
            
           
            
            myTravel.append(beylerbeyi)
            myTravel.append(camii)
            myTravel.append(camlica)
            myTravel.append(fethipasa)
            myTravel.append(kizkulesi)
            myTravel.append(kuzguncuk)
            myTravel.append(mihrimah)
            myTravel.append(selimiye)
          
            
           
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
            self.performSegue(withIdentifier: "uskudarDetails", sender: nil)
        }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "uskudarDetails"{
                let destinationVS = segue.destination as! uskudarDetailsVC
                destinationVS.selectedTravel =
                chonsenTravel
            }
        }

}
