//
//  sariyerTableView.swift
//  IstanbulTravel
//
//  Created by Fatih Oğuz on 24.09.2023.
//

import UIKit

class sariyerTableView: UIViewController,UITableViewDelegate, UITableViewDataSource {

    var myTravel = [travel]()
        var chonsenTravel : travel?
      
    @IBOutlet weak var tableView: UITableView!
    
        override func viewDidLoad() {
            super.viewDidLoad()

            tableView.dataSource = self
            tableView.delegate = self
            
            
            let ataturk = travel(imageV: UIImage(named: "ataturk")!, nameV: "Atatürk Arboretumu", infoV: "Sarıyer, park bakımından en zengin ilçelerimizden birisidir. Atatürk Arboretumu da, Sarıyer içerisindeki yeşillik açısından zengin parklar arasında yer alıyor. Gölet ve havuz gibi doğal güzellikler açısından zenginleştirilen atmosferi içerisinde piknik yapabilmeniz de mümkündür. Ancak girişler ücretlidir.")
            let belgrad = travel(imageV: UIImage(named: "belgrad")!, nameV: "Belgrad Ormanı", infoV: "İstanbul’un akciğerleri Sarıyer’in kalbi olarak lanse edilen Belgrad Ormanı, İstanbul’un en eski ormanları arasında yer alıyor. Mimar Sinan tarafından yaptırılan su kemerleriyle bir dönem İstanbul’un su ihtiyacının Belgrad Ormanı sınırları içerisindeki ırmak üzerinden karşılandığı biliniyor. Bugün ise su kemerleri piknik ve gezi amaçlı ormana gelen kişilerin ziyaret ettikleri tarihi eserler arasındadır.")
            let duatepe = travel(imageV: UIImage(named: "duatepe")!,nameV: "Duatepe Parkı", infoV: "Parkın adından da anlaşılacağı gibi tepe üzerine yapılandırılan Duatepe parkı; Rumeli Hisarı ile 15 Temmuz Şehitler Köprüsü manzarasına sahiptir. 19 bin metrekare alanda kurulan parkın içerisinde yürüme parkur, bisiklet yolu ve restoranlar yer alıyor. Çeşitli türden bitki ve çiçeklerin yer aldığı parka botanik tutkunları fotoğraf çekmek için sıkça geliyor.")
            let emirgan = travel(imageV: UIImage(named: "emirgan")!, nameV: "Emirgan Korusu", infoV: "Istanbul’un en meşhur korusu arasında bulunan Emirgan, Sarıyer’in en çok ziyaret edilen noktaları arasındadır. Bu nedenle Emirgan Korusu, Sarıyer gezilecek yerler arasında bizim için birinci sırada. Nisan ayında lale festivallerinin düzenlendiği korunun en kalabalık ve renkli alanı, meydanıdır. Alanda, kahvaltı yapabileceğiniz ahşaptan inşa edilen egzotik restoranlar yer alıyor. Harika bir güne başlamak için Emirgan Korusu oldukça idealdir.")
            let kusgozlem = travel(imageV: UIImage(named: "kusgozlem")!, nameV: "Milli Parklar Kuş Gözlem Kulesi", infoV: "Sarıyer’in en çok ziyaret edilen noktaları arasında kuş gözlem kulesi yer alıyor. Eğitim ve turizm amaçlı inşa edilen kuleye yolculuk ederken eşsiz orman havası alınıyor. Ardından kuş meraklıları ve gözlemcileri için inşa edilen ve turistlik amaçlı da ziyaret edilebilen 30 metre yükseklikteki kule üzerinden yaban hayatı yakından izlenebiliyor.")
           
            let rumeli = travel(imageV: UIImage(named: "rumeli")!, nameV: "Rumeli Hisarı", infoV: "Kesinlikle görülmesi gereken tarihi mirasımız arasında bulunan Rumeli Hisarı, İstanbul’un fetih hazırlıkları için yaptırıldı. Anadolu Hisarı’nın karşısına inşa edilen Rumeli Hisarı, Kuzey’den gelecek yardımların kesilmesi hedefine ulaşmak için yapıldı. Halen birçok kişi tarafından ziyaret edilen Rumeli Hisarı, eşsiz bir manzaraya sahiptir.")
            let sabancı = travel(imageV: UIImage(named: "sabanci")!, nameV: "Sakıp Sabancı Müzesi", infoV: "Dünya ünlü sanatçıların eserlerinin sergilendiği müzede, her dönem farklı sanatçıların koleksiyonları sergileniyor. Sanata meraklı kişilerin mutlaka ziyaret etmesi gereken müzeye giriş ücretlidir. Müze kartına sahip olanlar ise, ücretsiz giriş yapabilirler.")
            
            
           
            
            myTravel.append(ataturk)
            myTravel.append(belgrad)
            myTravel.append(duatepe)
            myTravel.append(emirgan)
            myTravel.append(kusgozlem)
            myTravel.append(rumeli)
            myTravel.append(sabancı)
            
           
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
            self.performSegue(withIdentifier: "sariyerDetails", sender: nil)
        }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "sariyerDetails"{
                let destinationVS = segue.destination as! sariyerDetailsVC
                destinationVS.selectedTravel =
                chonsenTravel
            }
        }

}
