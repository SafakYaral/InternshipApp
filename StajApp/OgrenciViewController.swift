//
//  OgrenciViewController.swift
//  StajApp
//
//  Created by Safak Yaral on 22.10.2022.
//

import UIKit

import WebKit

class OgrenciViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{
   
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var isGunuButton: UIButton!
    
    
    var lessonArr = [String]()
    var pdfArr = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        lessonArr = ["Staj İçin İzlenecek Yol","Staj Yönergesi","Staj İçin İstenen Evraklar","Staj Komisyonu","Staj Tarihleri","İş Yeri Staj Sözleşmesi"]
        
        pdfArr = ["1","2","3","4","5","6"]
      
       
    }
    
    
    @IBAction func Btn_URL(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://is-gunu.hesaplama.net")! as URL,options: [:], completionHandler: nil)
        
        }
    
    @IBAction func Btn_URL2(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://euniversite.nku.edu.tr/kullanicidosyalari/1261/files/staj_kabul_yazisi.pdf")! as URL,options: [:], completionHandler: nil)
    }
    
    @IBAction func Btn_URL3(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://euniversite.nku.edu.tr/kullanicidosyalari/1261/files/sigorta_baslatma_islem_belgesi.pdf")! as URL,options: [:], completionHandler: nil)
    }
    
    @IBAction func Btn_URL4(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.turkiye.gov.tr/spas-mustahaklik-sorgulama")! as URL,options: [:], completionHandler: nil)
    }
   
    @IBAction func Btn_URL5(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://euniversite.nku.edu.tr/kullanicidosyalari/1261/files/Staj_Zorunluluk_Belgesi.pdf")! as URL,options: [:], completionHandler: nil)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lessonArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let abc = tableView.dequeueReusableCell(withIdentifier: "abc") as UITableViewCell?
        
        let mylabel = abc?.viewWithTag(100) as! UILabel
        mylabel.text = lessonArr[indexPath.row]
        
        return abc!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        pdfname = pdfArr[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    

}
