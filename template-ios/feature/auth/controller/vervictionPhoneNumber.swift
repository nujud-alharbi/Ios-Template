////
////  vervictionPhoneNumber.swift
////  template-ios
////
////  Created by razan aljohani on 20/10/1444 AH.
////
//
//import UIKit
//import SwiftUI
//import FirebaseAuth
//
//
//
//class VervictionPhoneNumberController : UIViewController{
//    @State var code = ""
//    @Binding var show : Bool
//    @Binding var ID : String
//    @State var msg = ""
//    @State var alert = false
//
//    init(show: Binding<Bool>, ID: Binding<String> ) {
//
//        self._show = show
//        self._ID = ID
//        super.init(nibName: nil, bundle: nil)
//
//
//
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//
//    private let signUpLebel : UILabel = {
//        let label = UILabel()
//        label.text = "enter your number"
//        label.tintColor = .black
//        label.font = UIFont.boldSystemFont(ofSize: 20)
//        return label
//    }()
//    private let phoneTextField : UITextField = {
//        let tf = Utilities().textField(withPlaceholder: "phone number")
//        return tf
//    }()
//    private lazy var nameController : UIView = {
//        let image = UIImage(systemName: "phone")
//        let view = Utilities().inputContainerView(withImage: image! , textField: phoneTextField)
//        return view
//
//    }()
//    private let signUpButton : UIButton = {
//        let button = UIButton(type: .system)
//        button.setTitle("done", for: .normal)
//        button.backgroundColor = .black
//        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        button.layer.cornerRadius = 5
//        button.tintColor = .white
//        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
//        button.addTarget(self, action: #selector(handleSignUp), for: .touchUpInside)
//        return button
//    }()
//    @objc func handleSignUp(){
//
//        let credential =  PhoneAuthProvider.provider().credential(withVerificationID: self.ID, verificationCode: self.code)
//
//        Auth.auth().signIn(with: credential) { (res, err) in
//
//            if err != nil{
//
//                self.msg = (err?.localizedDescription)!
//                self.alert.toggle()
//                return
//            }
//        }
//
//        func viewDidLoad() {
//            super.viewDidLoad()
//            view.backgroundColor = .white
//            configureUI()
//
//        }
//
//        func configureUI(){
//
//
//            view.backgroundColor = UIColor(named: "Background")
//
//            view.addSubview(signUpLebel)
//
//            signUpLebel.centerX(inView: view , topAnchor: view.safeAreaLayoutGuide.topAnchor )
//            signUpLebel.setDimensions(width: 200, height: 70)
//
//            let stack = UIStackView(arrangedSubviews: [nameController , signUpButton])
//            stack.spacing = 40
//            view.addSubview(stack)
//            stack.anchor(top : signUpLebel.bottomAnchor ,left: view.leftAnchor , right : view.rightAnchor,paddingLeft: 38 , paddingRight: 38)
//            //        view.addSubview(nameController)
//            //        nameController.anchor(left : view.leftAnchor ,bottom: view.safeAreaLayoutGuide.centerYAnchor , right: view.rightAnchor , paddingLeft: 40 ,
//            //                              paddingRight: 40)
//
//        }
//    }
//
//}
