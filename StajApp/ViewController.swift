//
//  ViewController.swift
//  StajApp
//
//  Created by Safak Yaral on 22.10.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var MyLabel: UILabel!
    @IBOutlet weak var MyLabel2: UILabel!
    
    @IBOutlet weak var Internsİmage: UIImageView!
    
    
    @IBOutlet weak var OgrenciButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    @IBAction func yoneticiClicked(_ sender: Any) {
        
        performSegue(withIdentifier: "toYoneticiVC", sender: nil)
    }
    
   
}

