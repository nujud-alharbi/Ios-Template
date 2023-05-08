//
//  Localization.swift
//  template-ios
//
//  Created by Nujud Alalawi on 12/10/1444 AH.
//




import UIKit
class Localization {
    
    func changeLanguage (){
        
        let currentLanguage =  Locale.current.languageCode
        let newLanguage = currentLanguage == "en" ? "ar" : "en"
        UserDefaults.standard.setValue([newLanguage], forKey: "AppleLanguages")

        exit(0)
    }
}
