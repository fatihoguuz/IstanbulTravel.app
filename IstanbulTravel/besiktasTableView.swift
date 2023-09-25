//
//  besiktasTableView.swift
//  IstanbulTravel
//
//  Created by Fatih Oğuz on 24.09.2023.
//

import UIKit

class besiktasTableView: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var myTravel = [travel]()
    var chonsenTravel : travel?
    @IBOutlet weak var tableView: UITableView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        let asiyan = travel(imageV: UIImage(named: "asiyan")!, nameV: "Aşiyan Müzesi", infoV: "Aşiyan Müzesi, şair Tevfik Fikret’in 1906-1915 arasında yaşadığı,1945 yılından bu yana müze olarak hizmet veren evidir. Tevfik Fikret ve ailesine ait eşya ile Tanzimat Edebiyatı ve özellikle Edebiyat-ı Cedide döneminin önemli sanatçılarının eşyası sergilenmektedir.")
        
        let bebek = travel(imageV: UIImage(named: "bebek")!, nameV: "Bebek Parkı", infoV: "Bebek Parkı 18. yüzyılda Hümayunabad Kasrı'nın bahçesiydi. II. Meşruiyet sonrası 1908'de park olarak hizmet vermeye başladı. Cumhuriyet döneminde Bebek Kasrı yerine Bebek Gazinosu inşa edilmişti. Bedrettin Dalan'ın belediye başkanlığı döneminde bölge istimlak edildi ve parkın ortasında Şair Fuzuli'nin heykeli dikildi. Park, Sabancı Vakfı tarafından 2008 yılında yenilendi ve Türkan Sabancı Bebek Parkı olarak isimlendirildi. Yenilenen parkın yenileme çalışmaları Casasco ve ekibi tarafından yapıldı.")
        
        let denizmuze = travel(imageV: UIImage(named: "denizmuze")!, nameV: "Deniz Müzesi", infoV: "İstanbul Deniz Müzesi, Türkiye'nin denizcilik alanında en büyük müzesidir, içerdiği koleksiyon çeşitliliği açısından dünyanın sayılı müzelerinden biridir. Koleksiyonunda yaklaşık 20.000 adet eser bulunmaktadır. Deniz Kuvvetleri Komutanlığı'na bağlı olan İstanbul Deniz Müzesi Türkiye'de kurulan ilk askeri müzedir.")
        let dolmabahce = travel(imageV: UIImage(named: "dolmabahce")!, nameV: "Dolmabahçe Sarayı", infoV: "Dolmabahçe Sarayı, İstanbul, Beşiktaş'ta, Kabataş'tan Beşiktaş'a uzanan Dolmabahçe Caddesi'yle İstanbul Boğazı arasında, 250.000 m²'lik bir alan üzerinde bulunan Osmanlı sarayı. Marmara Denizi'nden Boğaziçi'ne deniz yoluyla girişte sol kıyıda, Üsküdar ve Kuzguncuk'un karşısında yer alır. Sultan Abdülmecid tarafından inşa ettirilen sarayın yapımı 1843 yılında başlayıp 1856 yılında bitirilmiştir. Günümüzde müze olarak kullanılmaktadır.")
        let gsadasi = travel(imageV: UIImage(named: "gsadasi")!, nameV: "Galatasaray Adası", infoV: "Galatasaray Adası veya Kuruçeşme Adası, Boğaziçi'nde Kuruçeşme sahilinin 165 m açığında yer alan bir adadır. Galatasaray Spor Kulübü’nün tapulu mülküdür.")
        let ortakoy = travel(imageV: UIImage(named: "ortakoy")!, nameV: "Büyük Mecidiye Camii", infoV: "Büyük Mecidiye Camii ya da Ortaköy Camii, İstanbul Boğaziçi’nde Beşiktaş ilçesinin, Ortaköy semtinde sahilde bulunan Neobarok tarzında bir camiidir. Cami, Sultan Abdülmecid tarafından Ermeni asıllı Mimar Nigoğos Balyan’a 1853 yılında yaptırılmıştır.")
        let resimmuze = travel(imageV: UIImage(named: "resimmuze")!, nameV: "Resim Müzesi", infoV: "Millî Saraylar Resim Müzesi, Dolmabahçe Sarayı'nın Veliaht Dairesi'nde 2014 yılında açılan Millî Saraylar İdaresi Başkanlığı'na bağlı müzedir.")
        let yildiz = travel(imageV: UIImage(named: "yildiz")!, nameV: "Yıldız Parkı", infoV: "Yıldız Parkı, İstanbul'un, Beşiktaş İlçesinde yer alan tarihi park. Balmumcu'dan Ortaköy'e uzanan Palanga Caddesi kuzey ve doğu sınırını, Ortaköy'den Beşiktaş'a uzanan Çırağan Caddesi güney sınırını oluşturur.")
        let zorlu = travel(imageV: UIImage(named: "zorlu")!, nameV: "Zorlu Center", infoV: "Zorlu Center, Zorlu Holding tarafından İstanbul'un Levazım bölgesinde inşa edilen çok amaçlı bir yapılar grubudur.")
        
        myTravel.append(asiyan)
        myTravel.append(bebek)
        myTravel.append(denizmuze)
        myTravel.append(dolmabahce)
        myTravel.append(gsadasi)
        myTravel.append(ortakoy)
        myTravel.append(resimmuze)
        myTravel.append(yildiz)
        myTravel.append(zorlu)
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
        self.performSegue(withIdentifier: "besiktasDetails", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "besiktasDetails" {
            
            let destinationVS = segue.destination as! besiktasDetailsVC
            destinationVS.selectedTravel = chonsenTravel
            
        }
    }
}
