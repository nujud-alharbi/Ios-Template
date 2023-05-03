//
//  ViewController.swift
//  template-ios
//
//  Created by Nujud Alalawi on 11/10/1444 AH.
//

import UIKit

class homeViewController: UIViewController {

    
//
    

    
    private let localizationView = LocalizationView()


    
  
   
    @objc func buttonTapped(){
        
        print("pussh")
    }
    
    
    
    
    let changeLanguage = UIButton()
    
    override func loadView() {
    view = localizationView

       

    }
//
    override func viewDidLoad() {
        super.viewDidLoad()
       view.backgroundColor = .white

//        view.addSubview(button)
//        button.frame = CGRect(x : 250 , y : 100, width : 100 , height: 20)
    }

    
  
}


