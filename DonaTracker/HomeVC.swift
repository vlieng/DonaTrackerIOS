//
//  HomeVC.swift
//  DonaTracker
//
//  Created by Vincent Lieng on 11/30/18.
//  Copyright © 2018 OGBK. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func OnPressLogOut(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            performSegue(withIdentifier: "homeSegue", sender: sender)
        } catch {
            print(error)
        }
    }
    
    

}
