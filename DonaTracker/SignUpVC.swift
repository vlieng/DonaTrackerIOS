//
//  SignUpVC.swift
//  DonaTracker
//
//  Created by Vincent Lieng on 11/30/18.
//  Copyright © 2018 OGBK. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class SignUpVC: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBAction func OnPressSignUp(_ sender: Any) {
        guard
        let email = txtEmail.text,
        email != "",
        
        let password = txtPassword.text,
        password != ""
        
        else
        {
            AlertController.showAlert(inViewController: self, title: "Alert", message: "Please fill out all fields")
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) {
            (user, error) in
            if (user != nil) {
                self.performSegue(withIdentifier: "signUpSegue", sender: nil)
            }
            if (error != nil) {
                AlertController.showAlert(inViewController: self, title: "Error", message: error!.localizedDescription)
                
            }
        }
    }
}
