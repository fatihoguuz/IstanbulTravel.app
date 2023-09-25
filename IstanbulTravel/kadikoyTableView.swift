//
//  kadikoyTableView.swift
//  IstanbulTravel
//
//  Created by Fatih Oğuz on 24.09.2023.
//
import UIKit

class kadikoyTableView: UIViewController,UITableViewDelegate,UITableViewDataSource {
var myTravel = [travel]()
    var chonsenTravel : travel?
  
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        
        let goztepe = travel(imageV: UIImage(named: "goztepe")!, nameV: "Göztepe Parkı", infoV: "Göl kıyısında yürüyüş yolu, çocuk parkı ve yeşil çitlerle çevrili rengarenk çiçek tarhları bulunun şehir parkı.")
        let iskele = travel(imageV: UIImage(named: "iskele")!,nameV: "Kadiköy İskele", infoV: "Kadıköy İskelesi, İstanbul'un Kadıköy ilçesi, Kadıköy Meydanı'nda bulunan bir iskeledir. İskele, Kadıköy metro istasyonu ve dolmuş duraklarına da yakındır. Şehir Hatları ve Turyol vapurlarının kalktığı iskeleden Eminönü, Karaköy, Adalar, Beşiktaş, Bakırköy ve Sarıyer'e seferler bulunmaktadır. ")
        let kadikoy = travel(imageV: UIImage(named: "kadikoy")!, nameV: "Kadıköy Çarşısı", infoV: "18. yüzyıldan itibaren Türkler ve Rumların yaşamlarını ve ticaret hayatlarını oluşturan çarşı, sonraki dönemlerde Ermenilere de ev sahipliği yaparak her dinden insana yuva olmuştur. Daha o dönemlerde ticaret merkezi haline gelen Kadıköy Çarşısı, günümüzde hem alışveriş yeri olmaya devam ediyor hem de turistlerin yoğun ilgisini görüyor. Üstelik sadece yerli değil yabancı turistlerin de ilgi alanı durumda.")
        let sali = travel(imageV: UIImage(named: "sali")!, nameV: "Kadıköy Salı Pazarı", infoV: "İstanbul’un en eski pazarlarından Kadıköy Salı Pazarı, alışveriş merakıyla nostaljiyi bir arada yaşamak isteyenlerin uğrak mekanlarından birisi. Çok eskilere dayanan tarihinde, sadece Pazar yeri olarak değil, aynı zamanda ip cambazlarının gösteri yapıp, insanların mesire alanı olarak kullanıldığını da öğreniyoruz. Kadıköy Kuşdili’nde yer alan Pazar, daha sonra belediye meclisini karırıyla daha farklı bir yere taşındı. Bu taşınmanın sebebi, pazara olan ilginin çok fazla olmasıyla Pazar alanında yaşanan trafik ve park sorunu, mahalle sakinlerinin rahatsızlık duyması.")
        let pist = travel(imageV: UIImage(named: "pist")!, nameV: "Intercity İstanbul Park", infoV: "Intercity İstanbul Park Pisti, Türkiye'nin İstanbul ilinin Tuzla ilçesinde, Akfırat mevkiinde bulunan dünya standartlarındaki yarış pisti. 2003 yılında temeli atılan pist, dünyanın en büyük spor organizasyonlarından biri olan Formula 1 yarışlarına 2005-2011 yılları arasında, 2020 ve 2021'de toplamda 9 yarışa ev sahipliği yapmıştır.")
        
       
        
        myTravel.append(goztepe)
        myTravel.append(iskele)
        myTravel.append(kadikoy)
        myTravel.append(sali)
        myTravel.append(pist)
       
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
        self.performSegue(withIdentifier: "kadikoyDetails", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "kadikoyDetails"{
            let destinationVS = segue.destination as! kadikoyDetailsVC
            destinationVS.selectedTravel =
            chonsenTravel
        }
    }
}

