//
//  loginwithgoogle.swift
//  template-ios
//
//  Created by razan aljohani on 20/10/1444 AH.
//

import SwiftUI

extension AuthService{
    func getRootViewController()-> UIViewController{
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else
        {
            return .init()
        }
        guard let root = screen.windows.first?.rootViewController else {
            return . init()
            
        }
        return root
    }
    
}
