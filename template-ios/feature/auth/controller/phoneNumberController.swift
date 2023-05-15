//
//  phoneNumberController.swift
//  template-ios
//
//  Created by razan aljohani on 20/10/1444 AH.
//

import UIKit
import Firebase
import FirebaseAuth
import SwiftUI



class PhoneNumberController : UIViewController{
    
    var ID : String? = nil
    @State var ccode = ""
    @State var no = ""
    @State var show = false
    @State var msg = ""
    @State var alert = false
    
    private let signUpLebel : UILabel = {
        let label = UILabel()
        label.text = "enter your number"
        label.tintColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    private let phoneTextField : UITextField = {
        let tf = Utilities().textField(withPlaceholder: "phone number")
        return tf
    }()
    private lazy var nameController : UIView = {
        let image = UIImage(systemName: "phone")
        let view = Utilities().inputContainerView(withImage: image! , textField: phoneTextField)
        return view

    }()
    private let OTPTextField : UITextField = {
        let tf = Utilities().textField(withPlaceholder: "otp")
        return tf
    }()
    private lazy var OTPController : UIView = {
        let image = UIImage(systemName: "book")
        let view = Utilities().inputContainerView(withImage: image! , textField: OTPTextField)
        return view

    }()

    private let signUpButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("done", for: .normal)
        button.backgroundColor = UIColor(named: "Tint")
        button.heightAnchor.constraint(equalToConstant: 10).isActive = false
        button.layer.cornerRadius = 5
        button.tintColor = UIColor(named: "Background")
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.addTarget(self, action: #selector(handleSignUp), for: .touchUpInside)
        return button
        
        
    }()
    
    @objc func handleSignUp(){
      
        if OTPTextField.isHidden{
            if !phoneTextField.text!.isEmpty {
                Auth.auth().settings?.isAppVerificationDisabledForTesting = false
                
                
//                                PhoneAuthProvider.provider().verifyPhoneNumber("+"+self.ccode+self.no, uiDelegate: nil)
                                
                PhoneAuthProvider.provider().verifyPhoneNumber(phoneTextField.text!, uiDelegate: nil )
                

                {(ID, err) in
                    if err != nil{
                        return
                    }
                    
                    
                    else{
                        self.ID = ID
                        self.OTPController.isHidden = false
                        self.OTPTextField.isHidden = false
                    }
                    
                }
            }
            else {
            print("please inter you phone number")
            }
      }
        
        else {
            if ID != nil{
                let credintal = PhoneAuthProvider.provider().credential(withVerificationID: ID!, verificationCode: OTPTextField.text!)
                
                Auth.auth().signIn(with: credintal,completion: {authData,error in
                    if (error != nil){
                        print(error.debugDescription)
                        print("auth invalid  ")

                    }
                    else {
                        print("auth sucess with " + (authData?.user.phoneNumber!)!)
                    }
                })
            }
            else{
             print("error")
            }
        }
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureUI()
        OTPTextField.isHidden = true
        OTPController.isHidden = true
        
      
       
    }
    
    func configureUI(){
        

        view.backgroundColor = UIColor(named: "Background")

        view.addSubview(signUpLebel)
        
        signUpLebel.centerX(inView: view , topAnchor: view.safeAreaLayoutGuide.topAnchor )
        signUpLebel.setDimensions(width: 200, height: 70)

        let stack = UIStackView(arrangedSubviews: [nameController ,OTPController, signUpButton])
        stack.spacing = 40
        
        
        stack.axis = .vertical
        stack.spacing = 20
        stack.distribution = .fillEqually
        view.addSubview(stack)
        stack.anchor(top : signUpLebel.bottomAnchor ,left: view.leftAnchor , right : view.rightAnchor,paddingLeft: 38 , paddingRight: 38)
//        view.addSubview(nameController)
//        nameController.anchor(left : view.leftAnchor ,bottom: view.safeAreaLayoutGuide.centerYAnchor , right: view.rightAnchor , paddingLeft: 40 ,
//                              paddingRight: 40)
        
    }
}









