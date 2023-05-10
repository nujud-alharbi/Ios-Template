//
//  localizationView.swift
//  template-ios
//
//  Created by Nujud Alalawi on 11/10/1444 AH.
//

import UIKit

class HomeView: UIView {

//    ---------------------------- properties
    
    let languageImage = UIImageView()

    let languageLabel = UILabel()
    
    var localization = Localization ()

    
    let changeLanguageButton: CustomButton = {

        let changeLanguage = CustomButton(title: "language", comment : "String")
                                            
        changeLanguage.configuration = .filled()
       changeLanguage.configuration?.baseBackgroundColor = .black
        
       changeLanguage.addTarget(self, action: #selector(changeLanguageTapped), for: .touchUpInside)
        return changeLanguage
    }()
  
    


   
//    ----------------------------
    
      override init(frame: CGRect) {
          super.init(frame: UIScreen.main.bounds)
          setup()
      }
    
      required init?(coder: NSCoder) {
          super.init(coder: coder)
          setup()
      }
      
      
//    ------------------------------ helper
    
    
    
    
      func setup (){
          
          addSubview(languageLabel)
          addSubview(changeLanguageButton)
          addSubview(languageImage)
          
         
          
          languageImage.image = UIImage(systemName: "globe")
          languageImage.tintColor = .systemGray
          
          languageLabel.text = "Language"
          languageLabel.tintColor = .systemGray
       

          
          changeLanguageButton.anchor(top: safeAreaLayoutGuide.topAnchor,right: rightAnchor, paddingTop: 100, paddingRight  : 20, width: 100, height: 20)
          
          languageLabel.anchor(top: safeAreaLayoutGuide.topAnchor ,left : leftAnchor, paddingTop: 100, paddingLeft  : 20, width: 100 , height: 20)

       
      
          
  

          
      }
      
    
// action button
      @objc
      func changeLanguageTapped(){
      

          
          localization.changeLanguage()
         

      }
    
    
    
    
 
    
    

}
