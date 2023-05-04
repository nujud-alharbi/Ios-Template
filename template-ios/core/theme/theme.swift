//
//  theme.swift
//  template-ios
//
//  Created by Hanan Asiri on 13/10/1444 AH.
//
import UIKit

class ThemeController: UIViewController {
    
    let defaults = UserDefaults.standard
    var DarkisOn = Bool()
    let darkMode = "darkModeEnabled"
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidLoad()

        let darkModeEnabled = defaults.bool(forKey: darkMode)
        if darkModeEnabled {
            // Apply your dark theme
            defaults.set(false, forKey: darkMode)
        } else {
            self.view.backgroundColor = UIColor.systemBackground
            defaults.set(true, forKey: darkMode)
           
        }
    }

    override func viewDidLoad() {
    
        view.backgroundColor = .systemBackground
        let StyleButton = UIButton()
        StyleButton.setImage(UIImage(systemName: "sun.max.fill"), for: .normal)
        StyleButton.setTitleColor(.blue, for: .normal)
        StyleButton.tintColor = .blue
        StyleButton.frame = CGRect(x: 220, y: -130, width: 250, height: 500)
        //StyleButton.frame.size = CGSize(width: 20.0, height: 20.0)
        StyleButton.addTarget(self, action: #selector(toggleInterfaceStyle), for: .touchUpInside)
        self.view.addSubview(StyleButton)
        
    }
            
     
    @objc func toggleInterfaceStyle() {
         
        let scenes = UIApplication.shared.connectedScenes
        let windowScene = scenes.first as? UIWindowScene
        let window = windowScene?.windows.first
        let interfaceStyle = window?.overrideUserInterfaceStyle == .unspecified ? UIScreen.main.traitCollection.userInterfaceStyle : window?.overrideUserInterfaceStyle
        
        if interfaceStyle != .dark {
            window?.overrideUserInterfaceStyle = .dark
        } else {
            window?.overrideUserInterfaceStyle = .light
        }
        
        }
        }



