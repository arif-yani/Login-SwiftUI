//
//  AppleLogin.swift
//  Login-SwiftUI
//
//  Created by Muhamad Arif on 14/07/22.
//

import SwiftUI
import AuthenticationServices

struct AppleLogin: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @AppStorage("email") var email: String = ""
    @AppStorage("firstName") var firstName: String = ""
    @AppStorage("lastName") var lastName: String = ""
    @AppStorage("userId") var userId: String = ""
    
    var body: some View {
        VStack {
            //                if userId.isEmpty {
            SignInWithAppleButton(.continue) { request in
                request.requestedScopes = [.email, .fullName]
            } onCompletion: { result in
                
                switch result {
                case .success(let auth):
                    
                    
                    switch auth.credential {
                    case let creditial as ASAuthorizationAppleIDCredential:
                        
                        let userId = creditial.user
                        
                        let email = creditial.email
                        let firsName = creditial.fullName?.givenName
                        let lastName = creditial.fullName?.familyName
                        
                        self.email = email ?? ""
                        self.firstName = firstName ?? ""
                        self.lastName = lastName ?? ""
                        self.userId = userId ?? ""
                        
                        
                    default:
                        break
                    }
                    
                case .failure(let error):
                    print("error")
                }
                
            }
            .signInWithAppleButtonStyle(
                colorScheme == .dark ? .white : .black
            )
            .frame(height: 50)
            .padding()
            .cornerRadius(8)
            //                } else {
            //                    print("sign in")
            //                }
            
        }
    }
}


struct AppleLogin_Previews: PreviewProvider {
    static var previews: some View {
        AppleLogin()
    }
}
