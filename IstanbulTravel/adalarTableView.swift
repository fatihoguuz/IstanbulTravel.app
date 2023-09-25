//
//  adalarTableView.swift
//  IstanbulTravel
//
//  Created by Fatih Oğuz on 16.09.2023.
//

import UIKit

class adalarTableView: UIViewController,UITableViewDelegate, UITableViewDataSource {
    var myTravel = [travel]()
    var chosenTravel : travel?
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        let adaMuze = travel(imageV:UIImage(named: "adaMuze")!, nameV: "Adalar Müzesi", infoV: "Adalar Müzesi, Türkiye'nin İstanbul ilinin Adalar ilçesine bağlı Büyükada'da yer alan müze. 10 Eylül 2010 tarihinde İstanbul 2010 Avrupa Kültür Başkenti Ajansının desteği ile açıldı. İstanbul'un ilk çağdaş kent müzesi olarak bilinmektedir.")
        
        let ayaYorgi = travel(imageV: UIImage(named: "ayaYorgi")!, nameV: "Aya Yorgi Kilisesi", infoV: "Aya Yorgi Manastırı, Büyükada'da yer alan manastır. Patrikhane kayıtlarından elde edilen bilgilere göre Aya Yorgi Manastırı'nın inşa ediliş tarihi 1751'dir. Bu tarihte inşa edilmiş olan küçük kilise, şapel ve dua yeri eski kilise olarak bilinir ve iki katlı, kiremit örtülü küçük bir yapıdır.")
        
       
        let degirmen = travel(imageV: UIImage(named: "degirmen")!, nameV: "Değirmen Burnu Tabiat Parkı", infoV: "Heybeliada'nın batısındaki Değirmen burnu Ada'nın en güzel koylarından biri olan plaj ve piknik yeridir. Değirmen burnu, plajı kuzey rüzgarlarından korur. Eskiden burası deniz hamamı idi, gerisi de bostandı. Bostan Abbas Hilmi Paşa köşküne kadar uzanırdı.")
        let naikbey = travel(imageV: UIImage(named: "naikbey")!, nameV: "Naikbey Plajı", infoV: "Büyükada'nın tek aile plajı olup, yalnız erkekler alınmamaktadır. Büyükada İskelesi'nden – plaja gidiş-dönüş ücretsiz motor servisi, temiz kabinleri, tuvaletleri ve duşlarıyla her konuda rahat edebileceğiniz bir mekandır. Deniz kıyısı sığ olup, boy seviyesine kadar kumdur.")
        let resat = travel(imageV: UIImage(named: "resat")!, nameV: "Reşat Nuri Güntekin Evi", infoV: "Ünlü Türk roman yazarı Büyükada'daki evi. Evde, ünlü Türk romancısı Reşat Nuri Güntekin ailesiyle birlikte yaşamıştır.. Bir müzesi yok ama 3 katlı evin pempe pervazlı dış cephesi bulunmaktadır. ")
        let rumYetimhane = travel(imageV: UIImage(named: "rum")!, nameV: "Rum Yetimhanesi", infoV: "Büyükada Rum Yetimhanesi (ya da Prinkipo Rum Yetimhanesi) Büyükada'da bulunan yetimhanedir. 1903-1964 yılları arasında hizmet veren yetimhane, Avrupa'nın en büyük, Dünyanın ise ikinci en büyük ahşap yapısı olarak kabul edilmektedir.")
        let  sait  = travel(imageV: UIImage(named: "sait")!, nameV: "Sait Faik Abasıyanık Evi", infoV: "Sait Faik Abasıyanık Müzesi, İstanbul’da, Burgaz Adası'nda yazar Sait Faik Abasıyanık'ın yaşamış olduğu köşkte 1959'dan bu yana hizmet veren müze-ev. Sait Faik Abasıyanık Müzesi'nde ziyaretçilere ünlü hikâyecinin yaşamına tanıklık etmiş eşyalar, fotoğraflar, mektuplar, kartpostallar sergilenir.")
        
        let tabiat = travel(imageV: UIImage(named: "tabiat")!, nameV: "Tabiat Parkı", infoV: "Büyükada Tabiat Parkı, İstanbul ilinde bulunan bir tabiat parkıdır. Büyükada'nın doğusundaki bu bölge 2011 yılında Tarım ve Orman Bakanlığı tarafından tabiat parkı ilan edilmiştir. 445 hektarlık bir alanı kaplamaktadır.")
        let trocki = travel(imageV: UIImage(named: "trocki")!, nameV: "Trocki Evi", infoV: "Yıkık Sivastopol Köşkü (Troçki’nin evi) Çankaya Caddesi’nden kuzey sahiline uzanan Hamlacı Sokağı’nda, bakımsız bahçesi içerisinde ayakta durmaktadır. Leon Troçki ise Rusya’dan sürülmesinin ardından, otobiyografisini ve Rus Devrim Tarihi adlı kitabını yazdığı Büyükada’da, 1929-33 yılları arasında yaşamıştır.")
        
        myTravel.append(adaMuze)
        myTravel.append(ayaYorgi)
        myTravel.append(degirmen)
        myTravel.append(naikbey)
        myTravel.append(resat)
        myTravel.append(rumYetimhane)
        myTravel.append(sait)
        myTravel.append(tabiat)
        myTravel.append(trocki)
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
        chosenTravel = myTravel[indexPath.row]
        self.performSegue(withIdentifier: "adaDetails", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "adaDetails" {
            
            let destinationVS = segue.destination as! adalarDetailsVC
            destinationVS.selectedTravel = chosenTravel
        }
    }
}
