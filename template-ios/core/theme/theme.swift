//
//  theme.swift
//  template-ios
//
//  Created by Hanan Asiri on 17/10/1444 AH.

import UIKit


class ThemeView: UIView {
    
    let defaults = UserDefaults.standard
    var DarkisOn = Bool()
    let darkMode = "darkModeEnabled"

    func setup() {
        
        let darkModeEnabled = defaults.bool(forKey: darkMode)
        if darkModeEnabled {
          
            defaults.set(true, forKey: darkMode)

        } else {
            self.backgroundColor = UIColor.systemBackground
            defaults.set(false, forKey: darkMode)


        }
    
        backgroundColor = .systemBackground
        let StyleButton = UIButton()
        StyleButton.setImage(UIImage(systemName: "sun.max.fill"), for: .normal)
        StyleButton.setTitleColor(.blue, for: .normal)
        StyleButton.tintColor = UIColor(named: "Tint")
        StyleButton.frame = CGRect(x: 220, y: -130, width: 250, height: 500)
        //StyleButton.frame.size = CGSize(width: 20.0, height: 20.0)
        StyleButton.addTarget(self, action: #selector(toggleInterfaceStyle), for: .touchUpInside)
        self.addSubview(StyleButton)
//        toggleInterfaceStyle()
        
    }
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        
        let darkModeEnabled = defaults.bool(forKey: darkMode)
        setup()
       // toggleInterfaceStyle()
       
    }
  
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
     
    @objc func toggleInterfaceStyle() {

        let scenes = UIApplication.shared.connectedScenes
        let windowScene = scenes.first as? UIWindowScene
        let window = windowScene?.windows.first
        let interfaceStyle = window?.overrideUserInterfaceStyle == .unspecified ? UIScreen.main.traitCollection.userInterfaceStyle : window?.overrideUserInterfaceStyle

        if interfaceStyle != .dark {
            window?.overrideUserInterfaceStyle = .dark
            backgroundColor = UIColor(named: "Background")
            defaults.set(true, forKey: darkMode)
       
        } else {
            window?.overrideUserInterfaceStyle = .light
            backgroundColor = UIColor(named: "Background")
            defaults.set(false, forKey: darkMode)
           
        }

        }
        }
