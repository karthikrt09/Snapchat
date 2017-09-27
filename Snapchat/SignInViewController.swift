//
//  SignInViewController.swift
//  Snapchat
//
//  Created by Karthik Thirunavukkarasan on 9/26/17.
//  Copyright © 2017 Karthik Thiru. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class SignInViewController: UIViewController {
    
    @IBOutlet weak var passwordTextFiled: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func turnUpButtonTapped(_ sender: Any) {
        FIRAuth.auth()?.signIn(withEmail: emailTextField.text!, password: passwordTextFiled.text!, completion: { (user, error) in
            
            print("We tried to signin")
            
            if error !=nil {
                print("There is an error:\(error)")
            } else {
                print("Signed in Successfully")
            }
            
        })
    }
    
}

