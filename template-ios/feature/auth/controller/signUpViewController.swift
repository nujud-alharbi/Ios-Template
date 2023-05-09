//
//  signUpViewController.swift
//  template-ios
//
//  Created by Nujud Alalawi on 14/10/1444 AH.
//

import UIKit

class signUpViewController: UIViewController {

    //     properties
    
    var authViewModel = AuthViewModel()
    
    
    private let signUpLebel : UILabel = {
        let label = UILabel()
        label.text = "Sign Up"
        label.tintColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    
    private lazy var nameController : UIView = {
        let image = UIImage(systemName: "person.fill")
        let view = Utilities().inputContainerView(withImage: image! , textField: nameTextField)
        return view

    }()
    
    

    private lazy var emailController : UIView = {
        let image = UIImage(systemName: "envelope.fill")
        let view = Utilities().inputContainerView(withImage: image! , textField: emailTextField)
        return view
    }()
    
    private lazy var passwordController : UIView = {
        
        let image = UIImage(systemName: "lock.fill")
        let view = Utilities().inputContainerView(withImage: image! , textField: passwordTextField)
        return view
    }()
    
    
    private lazy var confirmPasswordController : UIView = {
        let image = UIImage(systemName: "lock.fill")
        let view = Utilities().inputContainerView(withImage: image! , textField:
                                                    confirmPasswordTextField)
        return view
    }()
    
    
    private let nameTextField : UITextField = {
        let tf = Utilities().textField(withPlaceholder: "name")
        return tf
    }()
    
    
    private let emailTextField  : UITextField = {
        let tf = Utilities().textField(withPlaceholder: "Email")
        return tf
    }()
    
    
    private let passwordTextField : UITextField = {
        let tf = Utilities().textField(withPlaceholder: "Password")
        tf.isSecureTextEntry = true
        return tf
    }()
    
    
    private let confirmPasswordTextField : UITextField = {
        let tf = Utilities().textField(withPlaceholder: "confirm password")
        tf.isSecureTextEntry = true
        return tf
    }()
    
    
    private let signUpButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign Up", for: .normal)
        button.backgroundColor = .black
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.layer.cornerRadius = 5
        button.tintColor = .white
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.addTarget(self, action: #selector(handleSignUp), for: .touchUpInside)
        return button
    }()
    
    
    private let alreadyHaveAccountButton : UIButton = {
        let button = Utilities().attributedButton("Already have an account? ", " SingUp")
        button.addTarget(self, action: #selector(handleShowLogin), for: .touchUpInside)
        return button
    }()
    
    
    
    
    //     lifcycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
       
    }
    
    

    //    selecters
    
    @objc func handleShowLogin(){
        navigationController?.popViewController(animated: true)
    }
    
    
    @objc func handleSignUp(){
        guard let email =  emailTextField.text else{return }
        guard let passwrd =  passwordTextField.text else{return }
        authViewModel.signUp(email: email, password: passwrd, name: nameTextField.text!)

    }
    
    
    //     helpers
    
    func configureUI(){
        

        view.backgroundColor = UIColor(named: "Background")

        view.addSubview(signUpLebel)
        
        signUpLebel.centerX(inView: view , topAnchor: view.safeAreaLayoutGuide.topAnchor )
        signUpLebel.setDimensions(width: 128, height: 128)

        

        let stack = UIStackView(arrangedSubviews: [nameController,emailController, passwordController, confirmPasswordController , signUpButton ])
        stack.axis = .vertical
        stack.spacing = 20
        stack.distribution = .fillEqually
        view.addSubview(stack)
        stack.anchor(top : signUpLebel.bottomAnchor ,left: view.leftAnchor , right : view.rightAnchor ,paddingLeft: 32 , paddingRight: 32 )
        
        view.addSubview(alreadyHaveAccountButton)
        alreadyHaveAccountButton.anchor(left : view.leftAnchor ,bottom: view.safeAreaLayoutGuide.bottomAnchor , right: view.rightAnchor , paddingLeft: 40 ,
                                        paddingRight: 40)
        
        
    }
    
}
