//
//  SignInnViewController.swift
//  A2carousel4
//
//  Created by dt on 2/15/15.
//  Copyright (c) 2015 D3. All rights reserved.
//

import UIKit

class SignInnViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signInButtonDidPress(sender: AnyObject) {
        if (emailTextField.text == "dt@mediabrigade.com" && passwordTextField.text == "GoldenGate") {performSegueWithIdentifier("signInnSegue", sender: self)
        } else { var alertView = UIAlertView (title:"Nope!", message: "Your credentials have been denied.", delegate: nil, cancelButtonTitle: "Ok :(")
            alertView.show()
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
