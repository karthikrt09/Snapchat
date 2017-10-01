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
import FirebaseDatabase


class SignInViewController: UIViewController {
    
    @IBOutlet weak var passwordTextFiled: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
    }
    
    
    @IBAction func turnUpTapped(_ sender: Any) {
        
        FIRAuth.auth()?.signIn(withEmail: emailTextField.text!, password: passwordTextFiled.text!, completion: { (user, error) in
            
            print("Tried to signin")
            
            if error != nil{
                print("Hey there is an error :\(error)")
                
                FIRAuth.auth()?.createUser(withEmail:self.emailTextField.text!, password:self.passwordTextFiled.text!, completion: { (user, error) in
                    
                    print("we tried to create user")
                    
                    if error != nil{
                        print("Hey there is an error:\(error)")
                    }else{
                        
                FIRDatabase.database().reference().child("users").child(user!.uid).child("email").setValue(user!.email)
                        
                        print("User created sucessfully")
                        self.performSegue(withIdentifier: "siginsegue", sender: nil)
                    }
                    
                    
                })
                
                
            } else{
                print("Signed in Scucessful!")
                self.performSegue(withIdentifier: "siginsegue", sender: nil)
            }
            
        })
        
    }
    
    
}

