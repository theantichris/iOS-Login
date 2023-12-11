//
//  ViewController.swift
//  iOS Login
//
//  Created by Christopher Lamm on 12/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var usernameField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.title = usernameField.text
    }
}

