//
//  localizationView.swift
//  template-ios
//
//  Created by Nujud Alalawi on 11/10/1444 AH.
//

import UIKit

class LocalizationView: UIView {
    
//    ---------------------------- varibale & object
    
    let languageImage = UIImageView()

    let languageLabel = UILabel()
    
    var localization = Localization ()

    
    let changeLanguageButton: CustomButton = {
        
        let changeLanguage = CustomButton(title: "language", t: "String")
                                            
                                            
                                            
                                            
                                            
                                            
                                          
        
        
        
        
        
        
        
        
        
        
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
      
      
//    ------------------------------ add constraint component
    
    
    
    
      func setup (){
          
          addSubview(languageLabel)
          addSubview(changeLanguageButton)
          addSubview(languageImage)
          
          languageImage.image = UIImage(systemName: "globe")
          languageImage.tintColor = .systemGray
          
          languageLabel.text = "Language"
          languageLabel.tintColor = .systemGray
          
//          languageImage.frame = CGRect(x : 20, y : 100, width : 20 , height: languageImage.frame.height + 20)
//          languageLabel.frame = CGRect(x : 50 , y : 100, width : 100 , height: 20)
//       changeLanguage.frame = CGRect(x : 250 , y : 100, width : 100 , height: 20)
          
          changeLanguageButton.configuration = .filled()
          changeLanguageButton.configuration?.baseBackgroundColor = .systemRed

//          changeLanguage.configuration?.title = NSLocalizedString("language", comment: " hello label")
//          changeLanguage.addTarget(self, action: #selector(localization)
//                                      , for: .touchUpInside)
//
          languageLabel.translatesAutoresizingMaskIntoConstraints = false
          changeLanguageButton.translatesAutoresizingMaskIntoConstraints = false
          
        

          NSLayoutConstraint.activate([




          changeLanguageButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor , constant:  100),
          
          changeLanguageButton.trailingAnchor.constraint(equalTo:
                                                    trailingAnchor ,constant: -20 ),

         changeLanguageButton.widthAnchor.constraint(equalToConstant: 100),
          changeLanguageButton.heightAnchor.constraint(equalToConstant:  20),
          
          languageLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor , constant:  100),
              languageLabel.leadingAnchor.constraint(equalTo:
                                                        leadingAnchor ,constant:20),
          
          languageLabel.widthAnchor.constraint(equalToConstant: 100),
          languageLabel.heightAnchor.constraint(equalToConstant:  20),


          ])

          
      }
      
    
//  -------------------------------    button Tapped /
      @objc
      func changeLanguageTapped(){
      

          
          localization.changeLanguage()
         

      }
    
    
    

}
