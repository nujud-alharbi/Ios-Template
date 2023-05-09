//
//  authViewModel.swift
//  template-ios
//
//  Created by Nujud Alalawi on 18/10/1444 AH.
//

import UIKit


class AuthViewModel : UIViewController{
    
    var authSerives = AuthService()
    
    
    
    func signUp(email:String, password:String, name: String){
        authSerives.auth(email: email, password: password, displayName: name) {
            
            
            wasRegisterd, error  in
            
            if let error = error {
                print("jjjjjjjjjj")
                
         print(error.localizedDescription)
                
                
             

                self.navigationController?.popViewController(animated: true)
              
                return
            }
            
            print ("wasRegisterd" , wasRegisterd)
        }
        
        
    }
    
}
