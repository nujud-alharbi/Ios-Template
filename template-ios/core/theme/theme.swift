//
//  theme.swift
//  template-ios
//
//  Created by Hanan Asiri on 13/10/1444 AH.
//
import UIKit

class ThemeController: UIViewController {

    override func viewDidLoad() {
        view.backgroundColor = .systemBackground
        super.viewDidLoad()
        
        let StyleButton = UIButton()
                StyleButton.setTitle("Dark mode", for: .normal)
                StyleButton.setImage(UIImage(systemName: "search"), for: .normal)
                StyleButton.setTitleColor(.tintColor, for: .normal)
                StyleButton.frame = CGRect(x: 180, y: -130, width: 250, height: 500)
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


