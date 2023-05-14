//
//  CustomButtonStyle.swift
//  template-ios
//
//  Created by Hanan Asiri on 24/10/1444 AH.
//

import UIKit

class CustomButtonStyle: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
    
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
      
    }
    
    init(title : String , comment : String){
        super.init(frame: .zero)
        backgroundColor = .systemGray6
        setTitle( NSLocalizedString(title, comment: comment), for: .normal)
        setTitleColor(UIColor(named: "Tint"), for: .normal)
         layer.cornerRadius = 8
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
         layer.masksToBounds = true
    }
    }


