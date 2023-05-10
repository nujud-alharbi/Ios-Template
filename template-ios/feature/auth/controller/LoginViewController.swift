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
    
    private let loginLebel : UILabel = {
        let label = UILabel()
        label.text = "login"
        label.tintColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
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
    
    private let emailTextField  : UITextField = {
        let tf = Utilities().textField(withPlaceholder: "Email")
        return tf
    }()
    
    
    private let passwordTextField : UITextField = {
        let tf = Utilities().textField(withPlaceholder: "Password")
        tf.isSecureTextEntry = true
        return tf
    }()

    private let loginButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("login", for: .normal)
        button.backgroundColor = .black
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        button.layer.cornerRadius = 5
        button.tintColor = .white
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        return button
    }()
    
    
    
    
    private let alreadyHaveAccountButton : UIButton = {
        let button = Utilities().attributedButton("Dont have an account? ", " SingUp")
        button.addTarget(self, action: #selector(handleShowLogin), for: .touchUpInside)
        return button
    }()
    
    private let forgotLebel : UILabel = {
        let label = UILabel()
        label.text = "Forgot paasword ?"
        label.tintColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textAlignment = .left
        return label
    }()
    
    private let signwithPhoneButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("sign in with phone", for: .normal)
        button.backgroundColor = .systemBackground
        button.backgroundColor = .systemGray6
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.layer.cornerRadius = 9
        button.layer.masksToBounds = true;
        button.tintColor = .black
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(handleWithPhone), for: .touchUpInside)
        return button
    }()
    
    private let signwithGoogleButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("sign in with Google", for: .normal)
        button.backgroundColor = .systemGray6
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.layer.cornerRadius = 9
        button.layer.masksToBounds = true;
        button.tintColor = .black
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(handleWithGoogle), for: .touchUpInside)
        return button
    }()
    
    private let signwithAppleButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("sign in with Apple", for: .normal)
        button.backgroundColor = .systemGray6
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.layer.cornerRadius = 9
        button.tintColor = .black
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(handleWithApple), for: .touchUpInside)
        return button
    }()
    
    
    
    
    
    //     lifcycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        let checkbox = CircularCheckBox(frame: CGRect(x: 48 , y: 358, width: 18 , height: 18))
        let lable = UILabel (frame: CGRect(x: 76, y: 334, width: 200, height: 70))
        lable.text = "Rember me"
        lable.font = UIFont.boldSystemFont(ofSize: 13)
        lable.textColor = .systemGray2
        
        view.addSubview(lable)
        view.addSubview(checkbox)
       
    }
    
    

    //    selecters
    
    @objc func handleShowLogin(){
        navigationController?.popViewController(animated: true)
    }
    
    @objc func handleWithPhone(){
        navigationController?.popViewController(animated: true)
    }
    
    @objc func handleWithGoogle(){
        navigationController?.popViewController(animated: true)
    }
    
    @objc func handleWithApple(){
        navigationController?.popViewController(animated: true)
    }
    
    
    @objc func handleLogin(){
//        if let email = emailController.text, email.isEmpty == false,
//                 let password = passwordController.text, password.isEmpty == false {
//                  Auth.auth().signIn(withEmail: email, password: password) { result, error in
//                      if error == nil {
//                          // go to main vc
//                          let vc = UINavigationController(rootViewController: homeViewController())
//                          vc.modalTransitionStyle = .crossDissolve
//                          vc.modalPresentationStyle = .fullScreen
//                          self.present(vc, animated: true, completion: nil)
//                      } else {
//                          print(error?.localizedDescription)
//                     }
//                     }
                    // }

    }
    
    
    //     helpers
    
    func configureUI(){
        

        view.backgroundColor = UIColor(named: "Background")
        view.addSubview(loginLebel)
        loginLebel.centerX(inView: view , topAnchor: view.safeAreaLayoutGuide.topAnchor )
        loginLebel.setDimensions(width: 128, height: 128)
        let stack = UIStackView(arrangedSubviews: [emailController, passwordController, loginButton, //forgotLebel ,
        signwithPhoneButton ,signwithGoogleButton , signwithAppleButton])
        stack.axis = .vertical
        stack.spacing = 40
        stack.distribution = .fillEqually
        view.addSubview(stack)
        stack.anchor(top : loginLebel.bottomAnchor ,left: view.leftAnchor , right : view.rightAnchor,paddingLeft: 38 , paddingRight: 38)
        view.addSubview(alreadyHaveAccountButton)
        alreadyHaveAccountButton.anchor(left : view.leftAnchor ,bottom: view.safeAreaLayoutGuide.bottomAnchor , right: view.rightAnchor , paddingLeft: 40 , paddingRight: 40)
        
        
    }
    
    }
