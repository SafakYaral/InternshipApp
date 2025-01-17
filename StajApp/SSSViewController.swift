//
//  SSSViewController.swift
//  StajApp
//
//  Created by Safak Yaral on 6.01.2023.
//

import UIKit

class SSSViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var landmarkNames = [String]()
    var landmarkCevap = [String]()
    
    var chosenLandmarkName = ""
    var chosenLandmarkCevap = ""

    @IBOutlet weak var tableView2: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView2.delegate = self
        tableView2.dataSource = self
        
        landmarkNames.append("Staj dönemine ne yazmalıyım? ")
        landmarkNames.append("Staj defterinin ilk sayfasının aşağısında yer alan tabloya ne yazmalıyım? ")
        landmarkNames.append("Defteri ne zaman teslim etmeliyim? ")
        landmarkNames.append("Pratik çalışma belgesi ile staj defteri zarf içinde mi teslim edilmeli? ")
        landmarkNames.append("Zarfın üzerinde imza kaşe olması gerekiyor mu? ")
        landmarkNames.append("Pratik çalışma belgesini önce mi yollamalıyım? ")
        landmarkNames.append("Aynı firmada 60 gün staj yapabilir miyim? ")
        landmarkNames.append("Aynı firmanın farklı departmanlarında toplam 60 gün staj yapabilir miyim? ")
        landmarkNames.append("Staj defterlerinde yanlış yazılan kısımlarını silmek için tipex kullanırsam sorun olur mu?")
        landmarkNames.append("Staj Yeri Yetkilisi staj sorumlum mu yoksa işyeri sahibi mi?")
        landmarkNames.append("Staj dosyalarımızın tesliminde staj defteri ve pratik çalışma belgemizin dışında herhangi bir belge gerekli mi? ")
        landmarkNames.append("CD ile kodları teslim etmem şart mı? ")
        landmarkNames.append("Staj defterini firmaya imzalatmam gerekiyor mu?")
        landmarkNames.append("Staj defterinin 2. Sayfasında yer alan staj komisyon değerlendirmesi kısmı doldurulmalı mıdır?")
        landmarkNames.append("Sigorta başlatma işlem belgesi imzalanması için staj sorumlusuna kargo ile gönderilebilir mi?")
        landmarkNames.append("Staj bittikten sonra defter ve pratik çalışma belgesini kargo ile gönderebilir miyim?")
        landmarkNames.append("Staj defterini kargo ile nereye yollamam gerekmektedir?")
        
        
        
        landmarkCevap.append("Zorunlu yaz stajı ya da zorunlu dönem içi staj yazılmalıdır.")
        landmarkCevap.append("Stajda yaptığınız konuları ana başlıklara göre ayırıp bölmeniz gerekmektedir.")
        landmarkCevap.append("Yaz döneminde ve ara dönemde yapılan stajlara ait staj defterleri eğitim öğretim başladıktan sonra en geç 2 hafta içerisinde staj komisyonuna teslim edilmelidir. Yaz ve ara dönem dışında yapılan stajlara ait defterler staj bitim tarihinden itibaren 1 hafta içerisinde teslim edilmelidir. Bu tarihten sonraki teslimler kabul edilmez.")
        landmarkCevap.append("Pratik çalışma belgesi imzalı, mühürlü/kaşeli bir şekilde kapalı zarf içinde teslim edilmelidir. Staj defteri zarf içerisinde teslim edilmemelidir.")
        landmarkCevap.append("Evet. Zarfın kapatılan kısmında firmaya ait imza+kaşe/mühür olması gerekmektedir.")
        landmarkCevap.append("Hayır, pratik çalışma belgesi ve defter aynı zamanda teslim edilmelidir.")
        landmarkCevap.append("Hayır tek seferde 60 gün staj yapılamaz.")
        landmarkCevap.append("Hayır.")
        landmarkCevap.append("Hayır sorun olmaz ancak staj defterinin okunurluğuna zarar vermemelidir.")
        landmarkCevap.append("Staj sorumlusu.")
        landmarkCevap.append("Cumartesi günleri staj yaptıysanız şirketten cumartesi günleri çalıştığına dair belge almanız gerekmektedir.")
        landmarkCevap.append("Şart değil ancak yaptığınız projenin/projelerin kaynak kodları ve dijital dokümanlarını cd içerisinde verebilirsiniz.")
        landmarkCevap.append("Staj defterinin ikinci sayfasında yer alan, staj yeri yetkilisi kısmında amirin adı soyadı,  imzası, diploma numarası ile kaşesi veya mührü olmalıdır. Ayrıca staj defterinin her sayfası staj amiri tarafından paraflanmış olmalıdır.")
        landmarkCevap.append("Hayır, boş teslim edilmelidir.")
        landmarkCevap.append("Hayır gönderilemez.")
        landmarkCevap.append("Evet ancak kaybolma veya zarar görme gibi durumlardan öğrenci sorumludur.")
        landmarkCevap.append("NKÜ Çorlu Mühendislik Fakültesi Dekanlığı Silahtarağa Mahallesi Üniversite 1.Sokak No:13   59860 Çorlu / TEKİRDAĞ")
       
        
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //cell.textLabel?.text = "test"
        var content = cell.defaultContentConfiguration()
        content.text = landmarkNames[indexPath.row]
        
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenLandmarkName = landmarkNames[indexPath.row]
        chosenLandmarkCevap = landmarkCevap[indexPath.row]
        
        
        performSegue(withIdentifier: "toSSSvc", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSSSvc" {
            let destinationVC = segue.destination as! toSSSViewController
            destinationVC.selectedLandmarkName = chosenLandmarkName
            destinationVC.selectedLandmarkCevap = chosenLandmarkCevap
        }
    }
    
    
    

}
