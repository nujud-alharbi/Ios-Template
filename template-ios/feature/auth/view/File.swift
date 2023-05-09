//
//  File.swift
//  template-ios
//
//  Created by Nujud Alalawi on 18/10/1444 AH.
//

import UIKit

final class CircularCheckbox : UIView{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.borderWidth = 0.5
        layer.borderColor = UIColor.secondaryLabel.cgColor
        layer.cornerRadius = frame.size.width/2.0
        backgroundColor = .systemBackground
        
        
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    
    
    func setChecked(_ isChecked : Bool){
        
        
      if  isChecked {
            backgroundColor = .systemBlue
            
            
        }
        else {
            backgroundColor = .systemGray
        }
    }
    
    
    
    
}
