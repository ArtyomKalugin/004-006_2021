//
//  RegistrationViewController.swift
//  Lesson4
//
//  Created by Artem Kalugin on 06.10.2021.
//

import UIKit

class RegistrationViewController: UIViewController {
    // Outlet properties
    @IBOutlet weak var nicknameTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var townTextField: UITextField!
    @IBOutlet weak var secondNameTextField: UITextField!
    @IBOutlet weak var placeOfWorkTextField: UITextField!
    
    // MARK: - View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Action functions
    @IBAction func registerButtonAction(_ sender: Any) {
        // Properties
        guard let placeOfWork = placeOfWorkTextField.text,
              let nickname = nicknameTextField.text,
              let firstName = firstNameTextField.text,
              let password = passwordTextField.text,
              let login = loginTextField.text,
              let phoneNumber = phoneNumberTextField.text,
              let town = townTextField.text,
              let secondName = secondNameTextField.text else { return }
        
        idNow += 1
        let newUser = User(id: idNow, firstName: firstName, secondName: secondName, nickname: nickname, number: phoneNumber, placeOfWork: placeOfWork, town: town, avatar: "aa.jpg")
        db[[login, password]] = newUser
        userNow = newUser
        
        performSegue(withIdentifier: "RegisterTabBarSegue", sender: nil)
    }
}
