//
//  CustomButton.swift
//  template-ios
//
//  Created by Nujud Alalawi on 12/10/1444 AH.
//

import UIKit

class CustomButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
    
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
      
    }
    
    init(title : String , t : String){
        super.init(frame: .zero)
        backgroundColor = .purple
        setTitle( LocalizationSystem.sharedInstance.localizedStringForKey(key: title, comment: t), for: .normal)
        setTitleColor(.white, for: .normal)
         layer.cornerRadius = 8
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
         layer.masksToBounds = true
    }
}
