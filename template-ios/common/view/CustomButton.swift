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
    
    init(title : String , comment : String){
        super.init(frame: .zero)
        backgroundColor = .black
        
        setTitle( NSLocalizedString(title, comment: comment), for: .normal)
        setTitleColor(.white, for: .normal)
         layer.cornerRadius = 8
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
         layer.masksToBounds = true
    }
}
