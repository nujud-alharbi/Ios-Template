//
//  ForgotPassViewController.swift
//  template-ios
//
//  Created by Hanan Asiri on 21/10/1444 AH.
//


import UIKit
import Firebase

class ForgotPassViewController: UIViewController {

    let alert =  Alert()
    private let ForgotpassLebel : UILabel = {
        let label = UILabel()
        label.text = "Enter Your Email"
        label.tintColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    
    private lazy var emailController : UIView = {
        let image = UIImage(systemName: "envelope.fill")
        let view = Utilities().inputContainerView(withImage: image! , textField: emailTextField)
        return view
    }()
    
    private let emailTextField  : UITextField = {
        let tf = Utilities().textField(withPlaceholder: "Email")
        return tf
    }()
    
    let sendButton : CustomButton  = {
    let authButton = CustomButton(title: "Send", comment : "String")
    authButton.configuration = .filled()
    authButton.configuration?.baseBackgroundColor = UIColor(named: "buttonColor")
    authButton.addTarget(self, action: #selector(forgotPassButton), for: .touchUpInside)
    return authButton
}()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
      
    }
    
    
    @objc func forgotPassButton() {
        let auth = Auth.auth()
        auth.sendPasswordReset(withEmail: emailTextField.text!) { (error) in
            if let error = error {
                self.alert.showAlert(with: "Error", message: "Email not found" , on: self)
                return
                
            }
//            self.alert.showAlert(with: "OK ", message: "password reset email has been sent" , on: self)
//            return
        }
        }
    
    @objc func handleSend () {
        
    }
    
    func configureUI(){

        view.backgroundColor = UIColor(named: "Background")
        view.addSubview(ForgotpassLebel)
        ForgotpassLebel.centerX(inView: view , topAnchor: view.safeAreaLayoutGuide.topAnchor )
        ForgotpassLebel.setDimensions(width: 128, height: 128)
        let stack = UIStackView(arrangedSubviews: [emailTextField , sendButton])
        stack.axis = .vertical
        stack.spacing = 20
        stack.distribution = .fillEqually
        view.addSubview(stack)
        stack.anchor(top : ForgotpassLebel.bottomAnchor ,left: view.leftAnchor , right : view.rightAnchor ,paddingLeft: 32 , paddingRight: 32 )
        
        
    }
    }

