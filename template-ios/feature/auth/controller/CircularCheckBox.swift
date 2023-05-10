//
//  CircularCheckBox.swift
//  template-ios
//
//  Created by Hanan Asiri on 19/10/1444 AH.
//

import UIKit

final class CircularCheckBox: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.borderWidth = 2
        layer.borderColor = UIColor.secondaryLabel.cgColor
        layer.cornerRadius = 4
        backgroundColor = .systemBackground
    }
    
    required init? (coder: NSCoder){
        fatalError()
    }
    
    func setChecked(_ isChecked: Bool) {
       if isChecked {
            backgroundColor = .systemBlue
        }
        else{
            backgroundColor = .systemBackground
        }
    }
}
