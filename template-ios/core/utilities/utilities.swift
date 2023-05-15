//
//  utitlities.swift
//  template-ios
//
//  Created by Nujud Alalawi on 18/10/1444 AH.
//


import UIKit
class Utilities {
    
    func inputContainerView(withImage image:UIImage, textField : UITextField) -> UIView{
        let view = UIView()
        let imageView = UIImageView()
        
     
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        imageView.image = image
        imageView.tintColor = UIColor(named: "Tint")
        view.addSubview(imageView)
        imageView.anchor(left : view.leftAnchor , bottom: view.bottomAnchor , paddingLeft:  8 , paddingBottom: 8)
        
        imageView.setDimensions(width: 24, height: 24)
        
        
        view.addSubview(textField)
        textField.anchor(left : imageView.rightAnchor , bottom: view.bottomAnchor , right:  view.rightAnchor , paddingLeft:  8 ,paddingBottom: 8)
       
        let dividerView = UIView()
        dividerView.backgroundColor = .systemGray
        view.addSubview(dividerView)
        dividerView.anchor(left : view.leftAnchor , bottom: view.bottomAnchor , right:  view.rightAnchor , paddingLeft:  8 ,height: 0.75)
        return view
        
        
    }
    
    
    
    func textField(withPlaceholder  placeholder : String) -> UITextField{
        
        let tf = UITextField()
        tf.placeholder = placeholder
        tf.textColor = UIColor(named: "Tint")
        tf.font = UIFont.systemFont(ofSize: 16)
        tf.attributedPlaceholder = NSAttributedString(string: placeholder , attributes: [NSAttributedString.Key.foregroundColor : UIColor(named: "Tint")])
        return tf
    
    }
    
    
    func attributedButton( _ firstPart : String , _ secondPart : String)  -> UIButton{
        
        let button = UIButton(type: .system)
        
        let attributedTitle = NSMutableAttributedString(string: firstPart , attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16),
                                                                                         NSAttributedString.Key.foregroundColor : UIColor(named: "Tint")])
        
        attributedTitle.append(NSAttributedString(string: secondPart ,attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 16),
                                                                                   NSAttributedString.Key.foregroundColor : UIColor(named: "Tint")] ))
        
        
        
        
        button.setAttributedTitle(attributedTitle, for: .normal)
        
        return button
        
        
         
    }
}
