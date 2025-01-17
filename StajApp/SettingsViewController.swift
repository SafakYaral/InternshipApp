//
//  SettingsViewController.swift
//  StajApp
//
//  Created by Safak Yaral on 9.01.2023.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    @IBAction func logoutClicked(_ sender: Any) {
        performSegue(withIdentifier: "toYoneticiVC", sender: nil)
        
    }
    
    

}
