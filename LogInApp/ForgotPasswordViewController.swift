//
//  ForgotPasswordViewController.swift
//  LogInApp
//
//  Created by Александр Уткин on 07/08/2019.
//  Copyright © 2019 Александр Уткин. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    @IBOutlet var getPassword: UIButton!
    @IBOutlet var showPasswordDefault: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        getPassword.layer.cornerRadius = 20
        showPasswordDefault.layer.cornerRadius = 20        
    }
    
    @IBAction func requestNewPassword() {
        let alertNewPassword = UIAlertController(title: "Готово",
                                                 message: "Мы отправили вам новый пароль(нет).",
                                                 preferredStyle: .alert)
        alertNewPassword.addAction(UIAlertAction(title: "OK",
                                                 style: .default,
                                                 handler: nil))
        self.present(alertNewPassword, animated: true, completion: nil)
    }
    
    @IBAction func showDefaultPassword() {
        let alertDefaultPassword = UIAlertController(title: "Пароль по-умолчанию",
                                                     message: "Логин: user, пароль: password",
                                                     preferredStyle: .alert)
        alertDefaultPassword.addAction(UIAlertAction(title: "OK",
                                                     style: .default,
                                                     handler: nil))
        self.present(alertDefaultPassword, animated: true, completion: nil)
    }
}
