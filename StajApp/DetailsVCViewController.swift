//
//  DetailsVCViewController.swift
//  StajApp
//
//  Created by Safak Yaral on 22.10.2022.
//

import UIKit
import WebKit

var pdfname=""

class DetailsVCViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource:pdfname, ofType: "pdf")
        let url = URL(fileURLWithPath: path!)
        let request = URLRequest(url: url)
        webView.load(request)
    }
    


}
