//
//  YoneticiViewController.swift
//  StajApp
//
//  Created by Safak Yaral on 9.01.2023.
//

import UIKit
import Firebase

class YoneticiViewController: UIViewController {

    @IBOutlet weak var togglePasswordButton: UIButton!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    var isPasswordVisible = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordText.isSecureTextEntry = true

       
    }
    @IBAction func togglePassword(_ sender: Any) {
            if passwordText.isSecureTextEntry {
                passwordText.isSecureTextEntry = false
                togglePasswordButton.setTitle("Gizle", for: .normal)
            } else {
                passwordText.isSecureTextEntry = true
                togglePasswordButton.setTitle("Göster", for: .normal)
            }
        }
    
    
    @IBAction func signInClicked(_ sender: Any) {
        
        if emailText.text != "" && passwordText.text != "" {
            
            Auth.auth().signIn(withEmail: emailText.text!, password: passwordText.text!) { (authdata, error) in
                if error != nil {
                    self.makeAlert(titleInput: "Error!", messageInput: error?.localizedDescription ?? "Error")

                } else {
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)

                }
            }
            
            
        } else {
            makeAlert(titleInput: "Error!", messageInput: "Username/Password?")

        }
        
    }
    
    
    func makeAlert(titleInput:String, messageInput:String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
                    let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                    alert.addAction(okButton)
                    self.present(alert, animated: true, completion: nil)
    }
    
    
}
