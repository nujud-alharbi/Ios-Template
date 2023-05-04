//
//  ButtonFeature.swift
//  template-ios
//
//  Created by Nujud Alalawi on 14/10/1444 AH.
//

import UIKit

class ButtonFeature: UIView {
    let authButton: CustomButton = {
        
        let authButton = CustomButton(title: "language", comment : "String")
                                            
        authButton.configuration = .filled()
        authButton.configuration?.baseBackgroundColor = .black
        
        authButton.addTarget(self, action: #selector(authButtonTapped), for: .touchUpInside)
        return authButton
    }()
  
   
//    ----------------------------
    
      override init(frame: CGRect) {
          super.init(frame: UIScreen.main.bounds)
          settup()
      }
    
      required init?(coder: NSCoder) {
          super.init(coder: coder)
          settup()
      }
      

    
    
    
 @objc func authButtonTapped(){
        
        
    }
    
    
    
    func settup(){
        

        addSubview(authButton)
   
        
        authButton.anchor(top: safeAreaLayoutGuide.topAnchor,left : leftAnchor, right: rightAnchor , paddingTop: 200, paddingLeft: 20,  paddingRight  : 20, width: 100, height: 20)
        
    

    }
}
