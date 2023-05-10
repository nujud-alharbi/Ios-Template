//
//  authService.swift
//  template-ios
//
//  Created by Nujud Alalawi on 18/10/1444 AH.
//

import Foundation
import FirebaseAuth
import FirebaseCore
import GoogleSignIn


class AuthService {
    
    
    //    var a = Auth.auth()
    func signUpWithEmail(email:String, password:String, displayName:String  , complition :@escaping(Bool ,Error? ) -> Void){
        
        
        
        
        
        
        var userAuth =     Auth.auth().createUser(withEmail: email, password: password)
        
        
        
        
        { (result, error) in
            
            
            if let error = error{
                complition(false , error)
                return
            }
            
            guard let resultUser = result?.user else{
                complition(false , nil)
                
                return
                
            }
            
            let changeRequest = Auth.auth().currentUser?.createProfileChangeRequest()
            changeRequest?.displayName = displayName
            changeRequest?.commitChanges { (error) in
                complition(false , error)
                return
                
                
                
            }
            print(changeRequest?.displayName)
            
            complition(true ,nil)
            
            
            
            
            
            
            
        }
    }
    func googleSignin(){
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }
        
        // Create Google Sign In configuration object.
        let config = GIDConfiguration(clientID: clientID)
        GIDSignIn.sharedInstance.configuration = config
        
        // Start the sign in flow!
        GIDSignIn.sharedInstance.signIn(withPresenting: getRootViewController()) {  result, error in
            guard error == nil else {
                return          }
            
            guard let user = result?.user,
                  let idToken = user.idToken?.tokenString
            else {
                return          }
            
            let credential = GoogleAuthProvider.credential(withIDToken: idToken,
                                                           accessToken: user.accessToken.tokenString)
            
            Auth.auth().signIn(with: credential){result, error in
                
                guard error == nil else
                {
                    return
                }
                print("sign in")
            }
        }
        //    public func
    }
}
