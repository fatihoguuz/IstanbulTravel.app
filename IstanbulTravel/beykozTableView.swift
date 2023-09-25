//
//  beykozTableView.swift
//  IstanbulTravel
//
//  Created by Fatih Oğuz on 24.09.2023.
//

import UIKit

class beykozTableView: UIViewController,UITableViewDelegate,UITableViewDataSource {
var myTravel = [travel]()
    var chonsenTravel : travel?
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        
        let akavagi = travel(imageV: UIImage(named: "akavagi")!,nameV: "Anadolu Kavağı", infoV: "Anadolukavağı, İstanbul ilinin Beykoz ilçesine bağlı bir mahalledir. Nüfusu 1.517'dir. İstanbul Boğazı'nın kuzey ucundadır. Anadolu, Anadolu'nun Türkçe adıdır ve kavak, Osmanlı Türkçesinde kontrol noktası anlamına gelir ve bu da konumunun stratejik önemini gösterir. ")
        let beykoz = travel(imageV: UIImage(named: "beykoz")!, nameV: "Beykoz Korusu", infoV: "Beykoz Korusu ya da Abraham Paşa Korusu, İstanbul'un Beykoz ilçesinde yer alan bir korudur. İstanbul Boğazı sırtlarında, Beykoz ile Paşabahçe semtleri arasında geniş bir arazi üzerine yayılmıştır. Yüzölçümü 27,9 hektardır. Boğaz'a bakan yamaçlardan başlayarak içlerde Riva'ya kadar uzanır. Doğuda doğal ormanlarla bütünleşir.")
        let cam = travel(imageV: UIImage(named: "cam")!, nameV: "Cam ve Billur Müzesi", infoV: "Beykoz Cam ve Billur Müzesi, adını Osmanlı döneminde bu semtte kurulan ve devrinin en önemli cam fabrikası olan Beykoz Cam ve Billurât Fabrika-i Hümâyûnu’ndan almaktadır. Müzenin tarihî binası, Mısır Hidivi İsmail Paşa’nın kapı kethüdası olan ve Sultan Abdülaziz tarafından vezirliğe kadar yükseltilen Abraham Paşa tarafından inşa ettirilmiştir. Abraham Paşa, 19. yüzyılda Beykoz’da bulunan arazisine köşkler, kuşhaneler, havuzlar, tiyatro binası ve ahır yaptırmıştır.")
        let goksu = travel(imageV: UIImage(named: "goksu")!, nameV: "Göksu Deresi", infoV: "Göksu Deresi, İstanbul Boğazı'nın Anadolu yakasında, Anadoluhisarı yakınında Boğaz'a dökülen dere. Göztepe'nin güney yamaçlarından inen sel yataklarının birleşmesiyle meydana gelir ve tepelik bir alanda hafif büklümler çizerek Küçüksu Çayırı denilen düzlüğün kuzey kenarında denize dökülür.")
        let hisar = travel(imageV: UIImage(named: "hisar")!, nameV: "Anadolu Hisarı", infoV: "Anadolu Hisarı, Anadolu Hisarı Kalesi veya diğer adıyla Güzelce Hisarı, İstanbul'un Beykoz ilçesinin Anadoluhisarı semtinde, Göksu Deresi'nin İstanbul Boğazı'na döküldüğü yerde yer alan bir Osmanlı kalesi.")
        
        let kucuksu = travel(imageV: UIImage(named: "kucuksu")!, nameV: "Küçüksu Kasrı", infoV: "Küçüksu Kasrı veya Göksu Kasrı, İstanbul'un Küçüksu semtinde, Göksu Deresi ile Küçüksu Deresi arasında, Boğaziçi'nde Üsküdar-Beykoz sahilyolu üzerinde yer alan kasır. Sultan Abdülmecit tarafından Nigoğos Balyan'a yaptırılmış, inşaatı 1856 yılında tamamlanmıştır.")
        let yaros = travel(imageV: UIImage(named: "yaros")!, nameV: "Yaros Kalesi", infoV: "Yoros Kalesi, İstanbul'da Anadolukavağı sırtlarındaki Doğu Roma döneminden kalma kaledir.")
        
        myTravel.append(akavagi)
        myTravel.append(beykoz)
        myTravel.append(cam)
        myTravel.append(goksu)
        myTravel.append(hisar)
        myTravel.append(kucuksu)
        myTravel.append(yaros)
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
        self.performSegue(withIdentifier: "beykozDetails", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "beykozDetails"{
            let destinationVS = segue.destination as! beykozDetailsVC
            destinationVS.selectedTravel =
            chonsenTravel
        }
    }
}
