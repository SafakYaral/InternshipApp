//
//  UrlVC.swift
//  StajApp
//
//  Created by Safak Yaral on 3.11.2022.
//

import UIKit

import WebKit

class UrlVC: UIViewController {

    @IBOutlet weak var urlWebView: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        let webView = WKWebView(frame: view.frame)
        view.addSubview(webView)
        
        let url = URL(string: "https://is-gunu.hesaplama.net")!
        let request = URLRequest(url: url)
        webView.load(request)
    
    }
    


}
