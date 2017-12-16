//
//  LogInViewController.swift
//  Chatty
//
//  Created by Hassan El Desouky on 11/26/17.
//  Copyright © 2017 Hassan El Desouky. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD


class LogInViewController: UIViewController {

    //Textfields pre-linked with IBOutlets
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

   
    @IBAction func logInPressed(_ sender: AnyObject) {
        
        SVProgressHUD.show()
        
        //TODO: Log in the user
        Auth.auth().signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { ( user, error) in
            if error != nil {
                print(error!)
                
            } else {
                print("Logging in Success! ")
                
                SVProgressHUD.dismiss()
                
                self.performSegue(withIdentifier: "gpToChat", sender: self)
            }
        }
        
    }
    


    
}  
