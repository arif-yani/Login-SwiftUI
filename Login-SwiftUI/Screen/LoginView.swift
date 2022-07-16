//
//  LoginView.swift
//  Login-SwiftUI
//
//  Created by Muhamad Arif on 12/07/22.
//

import SwiftUI
import AuthenticationServices

struct LoginView: View {
    @AppStorage("login") var isLoginView: Bool = true
    @AppStorage("register") var isregisterView: Bool = false
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        NavigationView {
            ZStack{
                VStack(spacing: 50) {
                    VStack{
                        Text("Welcome !")
                            .font(.system(size: 60, weight: .bold))
                            .foregroundColor(Color("MainColor"))
                        
                        Text("Sign In to Continue")
                            .font(.system(size: 25, weight: .regular))
                            .foregroundColor(Color("SecondColor"))
                    }
                    
                    
                    VStack{
                        TextField("Email", text: $username)
                            .padding()
                            .background(Color("GreyColor"))
                            .cornerRadius(5.0)
                            .frame(width: 360, height: 60)
                            .padding(.bottom, 20)
                        
                        SecureField("Password", text: $password)
                            .padding()
                            .background(Color("GreyColor"))
                            .cornerRadius(5.0)
                            .frame(width: 360, height: 60)
                            .padding(.bottom, 20)
                        
                        Button(action: {
                            
                        }) {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color("MainColor"))
                                .frame(width: 360, height: 50)
                                .overlay{
                                    Text("LOGIN")
                                        .font(.title3)
                                        .foregroundColor(.white)
                                    
                                }
                        }
                        
                        Button {
                            isLoginView = false
                        } label: {
                            Text("Forgot Password ?")
                                .font(.system(size: 15, weight: .regular))
                                .frame(width: 360, height: 50)
                        }
                        
                        

                        HStack {
                            Rectangle()
                                .frame(width: 160, height: 1, alignment: .trailing)
                            Text("or")
                            Rectangle()
                                .frame(width: 160, height: 1, alignment: .trailing)
                            
                        }
                        
                        AppleLogin()
                        GoogleLogin()
                        
                        
                        
                        
                        HStack {
                            Text("Didn't have account?")
                            Button {
                                isLoginView = false
                                isregisterView = true
                            } label: {
                                Text("Sign Up")
                                    .foregroundColor(.blue)
                            }

                            
                        }
                        .frame(width: 360, height: 50, alignment: .center)
                    }
                    
                    
                }
               
            }
        }
        
        
    }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}



