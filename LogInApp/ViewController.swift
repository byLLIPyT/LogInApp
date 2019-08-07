//
//  ViewController.swift
//  LogInApp
//
//  Created by Александр Уткин on 06/08/2019.
//  Copyright © 2019 Александр Уткин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var enterButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    @IBOutlet var anotherOptionButton: UIButton!
    
    
    @IBOutlet var textLogin: UITextField!
    @IBOutlet var textPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        enterButton.layer.cornerRadius = 20
    }
    
    @IBAction func checkPassword() {
        if textLogin.text == "user" && textPassword.text == "password" {
        } else {
            wrongPassword()
        }
    }
    
    @IBAction func anotherOptionsButton() {
       let selectRegistration = UIAlertController(title: nil,
                                                  message: nil,
                                                  preferredStyle: .actionSheet)
      
        selectRegistration.addAction(UIAlertAction(title: "Войти через Facebook", style: .default, handler: nil))
        selectRegistration.addAction(UIAlertAction(title: "Войти через BK", style: .default, handler: nil))
        selectRegistration.addAction(UIAlertAction(title: "Войти через Google", style: .default, handler: nil))
        selectRegistration.addAction(UIAlertAction(title: "Реегистрация по email/телефону", style: .default, handler: nil))
        selectRegistration.addAction(UIAlertAction(title: "Отменить", style: .cancel, handler: nil))
        
        self.present(selectRegistration, animated: true, completion: nil)
    }
    
    private func wrongPassword() {
            let alertWrongPassword = UIAlertController(title: "Это не ваш пароль",
                                                       message: "Попробуйте еще раз или воспользуйтесь восстановлением пароля.",
                                                       preferredStyle: .alert)
            alertWrongPassword.addAction(UIAlertAction(title: "OK",
                                                       style: .default,
                                                       handler: nil))
            self.present(alertWrongPassword, animated: true, completion: nil)
    }
}

