//
//  ViewController.swift
//  template-ios
//
//  Created by Nujud Alalawi on 11/10/1444 AH.
//

import UIKit

class homeViewController: UIViewController {

    
    //  properties
   
    private let localizationView = HomeView()
    


   private let themeview = ThemeView()

    
    let authButton : CustomButton  = {
        
        let authButton = CustomButton(title: "authButton", comment : "String")

    authButton.configuration = .filled()
   authButton.configuration?.baseBackgroundColor = UIColor(named: "buttonColor")
      
    
    authButton.addTarget(self, action: #selector(authButtonTapped), for: .touchUpInside)
    return authButton
}()

    
    
//     lifecycle
    
    
    override func loadView() {

       view = localizationView;
       view = themeview;

    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       view.backgroundColor = .white
        
        
       

        
        settup()
    }

// helper
    
    
    func settup (){
        

      
        
        view.addSubview(authButton)
//        authButton.
        authButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            authButton.centerXAnchor.constraint(equalTo: view.centerXAnchor) ,
            authButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            authButton.widthAnchor.constraint(equalToConstant : 200),
            
            authButton.heightAnchor.constraint(equalToConstant: 50),
        
        
        ])

        

    
        
    }
    
    
//  action button
    
    
    
    @objc func authButtonTapped(){
        
      
      let signUpScreen = signUpViewController()

     navigationController?.pushViewController(signUpScreen, animated: true)

  }
    
    
    

    
}




