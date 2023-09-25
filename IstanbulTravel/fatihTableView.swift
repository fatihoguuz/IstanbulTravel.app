//
//  fatihTableView.swift
//  IstanbulTravel
//
//  Created by Fatih Oğuz on 24.09.2023.
//

import UIKit

class fatihTableView: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    
       var myTravel = [travel]()
       var chonsenTravel : travel?
       
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
            super.viewDidLoad()

            tableView.dataSource = self
            tableView.delegate = self
            
            
            let cesme = travel(imageV: UIImage(named: "almancesmesi")!,nameV: "Alman Çeşmesi", infoV: "Alman Çeşmesi, İstanbul'daki Sultanahmet Meydanı'nda, Sultan I. Ahmed Türbesi'nin karşısında yer alan çeşme. Alman İmparatoru II. Wilhelm'in Sultana ve İstanbul'a hediyesidir. Almanya'da yapılıp 1901'de İstanbul’daki yerine monte edilmiştir. Neo-Bizanten üslubunda bir çeşmedir; içeriden altın mozaikle süslüdür. ")
            let ayasofya = travel(imageV: UIImage(named: "ayasofya")!, nameV: "Ayasofya Camii", infoV: "Ayasofya, eski adıyla Kutsal Bilgelik Kilisesi ve Ayasofya Müzesi veya günümüzdeki resmî adıyla Ayasofya-i Kebîr Câmi-i Şerîfi İstanbul'da yer alan bir cami ve eski bazilika, katedral ve müzedir. Bizans İmparatoru I. Justinianus tarafından, 532-537 yılları arasında İstanbul'un tarihî yarımadasındaki eski şehir merkezine inşa ettirilmiş bazilika planlı bir patrik katedrali olmuştur. ")
            let balat = travel(imageV: UIImage(named: "balat")!, nameV: "Balat Evleri", infoV: " Rengârenk evleri ve taş döşeli dar sokakları ile Balat, mütevazı bir bölgedir. Popüler kafeler ve modern galeriler, mahallenin eski tarz bakkalları ile aynı sokakları paylaşır. Ekümenik Rum Patrikhanesi bazilikası, sinagoglar ve Bizans kiliseleri gibi yapılar; Yahudi, Rum ve Ermeni topluluklarına ev sahipliği yapan bölgenin kozmopolit tarihini yansıtır.")
            let beyazit = travel(imageV: UIImage(named: "beyazitmeydan")!, nameV: "Beyazıt Meydanı", infoV: "Beyazıt, İstanbul'un Avrupa Yakası'nda bulunan Fatih ilçesine bağlı 57 mahalleden biridir. İdari sınırlarına bakıldığında Mercan, Tayahatun, Mollafenari, Mimar Hayrettin, Mimar Kemalettin, Balabanağa ve Süleymaniye mahalleleri ile komşudur.")
            let kemer = travel(imageV: UIImage(named: "sukemeri")!, nameV: "Bozoğan Kemeri", infoV: "Bozdoğan Kemeri ya da başka adı ile Valens Su kemeri, Romalılar tarafından İstanbul'da yaptırılan su kemeri. Roma İmparatoru Valens tarafından 4. yüzyılın sonlarında tamamlandı. Farklı dönemlerde Osmanlı Sultanları tarafından restore ettirilen su kemeri, şehrin önemli tarihi eserlerinden birisidir.")
            
        let dikilitas = travel(imageV: UIImage(named: "dikilitas")!, nameV: "Dikilitaş", infoV: "Dikilitaş ya da Theodosius Dikilitaşı, Sultanahmet Meydanı'nın güney tarafında, Yılanlı Sütun'un yanında bulunan bir Antik Mısır dikilitaşıdır. MS 390 yılında Roma imparatoru I. Theodosius tarafından Mısır'dan getirilerek şimdiki yerine dikilmiştir.")
            let eminonu = travel(imageV: UIImage(named: "eminonu")!, nameV: "Eminönü", infoV: "Liman kenarındaki Eminönü, şehrin çarşılarının yakınındaki vapur iskelelerinde yolcu indiren teknelerle doludur. Mısır Çarşısı'nda meyve, çay ve baharatlar satan tezgahlar, hemen bitişiğindeki Kapalıçarşı'da ise rengarenk halı, kumaş, lamba ve takılar bulunur. Süleymaniye Camii, bölgeyi yukarıdan seyrederken 16. yüzyılda inşa edilen Rüstem Paşa Camii, İznik çinileriyle ünlüdür.")
        let fatih = travel(imageV: UIImage(named: "fatihcamii")!, nameV: "Fatih Camii", infoV: "Fatih Camii ve Külliyesi, İstanbul'un Fatih ilçesinde II. Mehmed tarafından yaptırılmış olan cami ve külliyedir. Külliye içinde 16 adet medrese, darüşşifa, tabhane imaret, kütüphane ve hamam bulunmaktadır. Şehrin yedi tepesinden birinde inşa edilmiştir.")
        let fenerrum = travel(imageV: UIImage(named: "fenerrum")!, nameV: "Fener Rum Erkek Lisesi", infoV: "Fener Rum Erkek Lisesi İstanbul, Fener’de yer almaktadır. Rumlar ve Yunanlar arasında Milletin Büyük Okulu olarak anılır. 1454 yılında kurulan lise, İstanbul'da faaliyet gösteren üç Rum eğitim kurumundan biridir. Faaliyet halindeki diğer liseler, Zapyon ve Zoğrafyon liseleridir.")
        let gulhane = travel(imageV: UIImage(named: "gulhane")!, nameV: "Gülhane Parkı", infoV: "Gülhane Parkı, İstanbul'un Fatih ilçesinin Eminönü semtinde yer alan tarihî bir parktır. Alay Köşkü, Topkapı Sarayı ve Sarayburnu arasında yer alır.")
        let turkislam = travel(imageV: UIImage(named: "islammuze")!, nameV: "Türk ve İslam Eserleri Müzesi", infoV: "Türk ve İslam Eserleri Müzesi, İstanbul'un Fatih ilçesinde bulunan, İslâm sanatı eserlerini topluca kapsayan ilk Türk müzesidir. ")
        let carsi = travel(imageV: UIImage(named: "carsi")!, nameV: "Kapalıçarşı", infoV: "Kapalıçarşı, İstanbul kentinin merkezinde Beyazıt, Nuruosmaniye ve Mercan semtlerinin ortasında yer alan dünyanın en büyük çarşısı ve en eski kapalı çarşılarından biri. Kapalıçarşı'da yaklaşık 4.000 dükkân bulunmaktadır ve bu dükkânlarda toplam çalışan sayısı yaklaşık 25.000'dir.")
        let molla = travel(imageV: UIImage(named: "molla")!, nameV: "Molla Zeyrek Camii", infoV: "Zeyrek Camii veya Pantokrator Manastırı Kilisesi İstanbul'un Zeyrek semtinde, Bizans dönemi kilisesinden dönüştürülmüş cami. Yapı, iki kilise ve ortalarındaki bir şapelden oluşmaktadır. Orta Dönem Bizans mimarisinin İstanbul’daki en karakteristik örneklerinden biri olarak gösterilmektedir.")
        let sultanahmet = travel(imageV: UIImage(named: "sultanahmet")!, nameV: "Sultanahmet Camii", infoV: "Sultanahmet; Osmanlı Dönemi'nden kalma, ikonik minarelere sahip etkileyici Sultanahmet Camii'ne ve mozaiklerle dolu, ünlü Ayasofya Camii'ne ev sahipliği yapar. Bölgenin yanındaki Sultanahmet Meydanı'nda park, bahçeler ve çeşmelerin yanı sıra Mısır Theodosius Dikilitaşı ve yakınlarda 4. yüzyıldan kalma sütun kalıntısı Milyon Taşı yer alır. Popüler semt mağazalar, oteller ve geleneksel restoranlarla doludur.")
        let suleymaniye = travel(imageV: UIImage(named: "suleymaniye")!, nameV: "Süleymaniye Camii", infoV: "Süleymaniye Camii, Kanuni Sultan Süleyman adına 1551-1557 yılları arasında İstanbul'da Mimar Sinan tarafından inşa edilen camidir. Mimar Sinan'ın kalfalık devri eseri olarak nitelendirilen Süleymaniye Camii, medreseler, kütüphane, hastane, sıbyan mektebi, hamam, imaret, hazire ve dükkânlardan oluşan Süleymaniye Külliyesi'nin bir parçası olarak inşa edilmiştir.")
        let sehzade = travel(imageV: UIImage(named: "sehzade")!, nameV: "Şehzade Camii", infoV: "Şehzade Camii, İstanbul'un Fatih ilçesinde yer alan ve Mimar Sinan tarafından yapılan cami, I. Süleyman tarafından Saruhan Sancak Beyi iken 1543'te 22 yaşında ölen oğlu Mehmed adına yaptırılmıştır. Camiyi 1543-1548 yılları arasında Mimar Sinan'a yaptırttı. Mimar Sinan'ın çıraklık eserimdir dediği camidir.")
        let topkapi = travel(imageV: UIImage(named: "topkapi")!, nameV: "Topkapı Sarayı", infoV: "Topkapı Sarayı, İstanbul Sarayburnu'nda, Osmanlı İmparatorluğu'nun 600 yıllık tarihinin 400 yılı boyunca, devletin idare merkezi olarak kullanılan ve Osmanlı padişahlarının yaşadığı saraydır. Bir zamanlar içinde 4.000'e yakın insan yaşamıştır. ")
        let yedikule = travel(imageV: UIImage(named: "yedikule")!, nameV: "Yedikule Zindanları", infoV: "Yedikule Zindanları, İstanbul'un ve Türkiye'nin en eski açık hava müzelerinden birisidir.")
        let sarnic = travel(imageV: UIImage(named: "sarnic")!, nameV: "Yerebatan Sarnıcı", infoV: "Yerebatan Sarnıcı İstanbul'da şehrin su ihtiyacını karşılamak üzere 526-527 senelerinde yaptırılmış kapalı su sarnıcı. Ayasofya'nın güneybatısında, Soğukçeşme Sokağı'ndadır. Suyun içinden yükselen pek çok mermer sütun nedeniyle halk arasında Yerebatan Sarayı olarak isimlendirilmektedir. ")
            
            myTravel.append(cesme)
            myTravel.append(ayasofya)
            myTravel.append(balat)
            myTravel.append(beyazit)
            myTravel.append(kemer)
            myTravel.append(dikilitas)
            myTravel.append(eminonu)
        myTravel.append(fatih)
        myTravel.append(fenerrum)
        myTravel.append(gulhane)
        myTravel.append(turkislam)
        myTravel.append(carsi)
        myTravel.append(molla)
        myTravel.append(sultanahmet)
        myTravel.append(suleymaniye)
        myTravel.append(sehzade)
        myTravel.append(topkapi)
        myTravel.append(yedikule)
        myTravel.append(sarnic)
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
            self.performSegue(withIdentifier: "fatihDetails", sender: nil)
        }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "fatihDetails"{
                let destinationVS = segue.destination as! fatihDetailsVC
                destinationVS.selectedTravel =
                chonsenTravel
            }
        }

}
