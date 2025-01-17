//
//  toSSSViewController.swift
//  StajApp
//
//  Created by Safak Yaral on 6.01.2023.
//

import UIKit

class toSSSViewController: UIViewController {
    
    @IBOutlet weak var CevaplarText: UITextView!
    
    
    var selectedLandmarkName = ""
    var selectedLandmarkCevap = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        CevaplarText.text = selectedLandmarkCevap
    }
    

    

}
