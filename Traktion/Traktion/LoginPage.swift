//
//  LoginPage.swift
//  Traktion
//
//  Created by Dylan Welch on 8/15/17.
//  Copyright © 2017 Dylan Welch. All rights reserved.
//

import Foundation
import UIKit

class LoginPage: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func goToDifferentView() {
        
        self.performSegue(withIdentifier: "loginToMain", sender: self)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
//Sup
