//
//  MainViewController.swift
//  LogInApp
//
//  Created by Александр Уткин on 07/08/2019.
//  Copyright © 2019 Александр Уткин. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var backButton: UIButton!
    @IBOutlet var loginText: UILabel!
    
    var login: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        backButton.layer.cornerRadius = 20
        loginText.text = login
       
    }    

}
