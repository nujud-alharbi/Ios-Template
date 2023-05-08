//
//  login.swift
//  template-ios
//
//  Created by Hanan Asiri on 17/10/1444 AH.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore

class LoginVC: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    let email : UITextField = {
        let emailTextField = UITextField()
        emailTextField.placeholder = "Enter your Email"
        emailTextField.textAlignment = .center
        emailTextField.backgroundColor = .systemGray6
        emailTextField.layer.cornerRadius = 4
        return emailTextField
    }()
    
    
    let password : UITextField = {
        let passTextField = UITextField()
        passTextField.placeholder = "Enter your password"
        //passTextField.text = "123456"
        passTextField.isSecureTextEntry = true
        passTextField.textAlignment = .center
        passTextField.backgroundColor = .systemGray6
        passTextField.layer.cornerRadius = 4
        return passTextField
    }()
    
    let logIn : UIButton = {
        let logInButton = UIButton()
        logInButton.setTitle(NSLocalizedString("Login", comment: "") , for: .normal)
        logInButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        logInButton.backgroundColor = .black
        logInButton.layer.cornerRadius = 4
        logInButton.tintColor = .white
        logInButton.addTarget(self, action: #selector(login), for: .valueChanged)
        return logInButton
    }()
    

    
    // use StackView
    let stackView : UIStackView = {
        let stackview = UIStackView()
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.axis = .vertical
        stackview.distribution = .fillEqually
        stackview.spacing = 20
        return stackview
    }()
    
    @objc func login() {
        if let email = email.text, email.isEmpty == false,
           let password = password.text, password.isEmpty == false {
            Auth.auth().signIn(withEmail: email, password: password) { result, error in
                if error == nil {
                    // go to main vc
                    let vc = UINavigationController(rootViewController: homeViewController())
                    vc.modalTransitionStyle = .crossDissolve
                    vc.modalPresentationStyle = .fullScreen
                    self.present(vc, animated: true, completion: nil)
                } else {
                    print(error?.localizedDescription)
               }
               }
               }
               }
               }
               }
               }
  // use  extension
    extension LoginVC {
    func setupUI() {
        view.backgroundColor = .white
        view.addSubview(stackView)
        stackView.addArrangedSubview(email)
        stackView.addArrangedSubview(password)
        stackView.addArrangedSubview(logIn)

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -100),
         // stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.heightAnchor.constraint(equalToConstant: 190)
        ])
    }
    }
