//
//  IntroViewController.swift
//  WATO!
//
//  Created by Kailasam A S on 2/25/17.
//  Copyright © 2017 KailuCr8. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class IntroViewController: UIViewController {
    
    @IBOutlet weak var Bio: UITextView!
    
    let rootRef = FIRDatabase.database().reference()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        rootRef.child("conditon")
    }
    
}
