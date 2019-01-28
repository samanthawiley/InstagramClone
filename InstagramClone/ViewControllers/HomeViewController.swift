//
//  HomeViewController.swift
//  InstagramClone
//
//  Created by Samantha Wiley on 1/16/19.
//  Copyright © 2019 Samantha Wiley. All rights reserved.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {

    @IBAction func logout_TouchUpInside(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            
        } catch let logoutError {
            print(logoutError)
        }
        
        let storyboard = UIStoryboard(name: "Start", bundle: nil)
        let signInVC = storyboard.instantiateViewController(withIdentifier: "SignInViewController")
        self.present(signInVC, animated: true, completion: nil)
        
        
        
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
}
