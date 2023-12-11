//
//  ViewController.swift
//  iOS Login
//
//  Created by Christopher Lamm on 12/11/23.
//

import UIKit

class ViewController: UIViewController {
    let forgotUsernameOrPasswordSegue = "ForgottenUsernameOrPassword"
    
    @IBOutlet var usernameField: UITextField!
    @IBOutlet var forgotUsernameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        
        if sender == forgotUsernameButton {
            segue.destination.title = "Forgot Username"
        } else if sender == forgotPasswordButton {
            segue.destination.title = "Forgot Password"
        } else {
            segue.destination.title = usernameField.text
        }
    }
    
    @IBAction func forgotUsernameButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: forgotUsernameOrPasswordSegue, sender: forgotUsernameButton)
    }
    
    @IBAction func forgotPasswordButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: forgotUsernameOrPasswordSegue, sender: forgotPasswordButton)
    }
}

