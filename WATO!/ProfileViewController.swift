//
//  ProfileViewController.swift
//  WATO!
//
//  Created by Kailasam A S on 2/25/17.
//  Copyright © 2017 KailuCr8. All rights reserved.
//

import Foundation
import Firebase
import FirebaseAuth
import UIKit

class ProfileViewController: UIViewController{
    
    @IBAction func logoutUser(_ sender: Any) {
        if FIRAuth.auth()?.currentUser != nil {
            do {
                try FIRAuth.auth()?.signOut()
                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController")
                present(vc, animated: true, completion: nil)
                
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        }
    }
}
