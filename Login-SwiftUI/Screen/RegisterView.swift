//
//  RegisterView.swift
//  Login-SwiftUI
//
//  Created by Muhamad Arif on 12/07/22.
//

import SwiftUI

struct RegisterView: View {
    @AppStorage("login") var isLoginView: Bool = false
    @AppStorage("register") var isregisterView: Bool = true
    @State var username: String = ""
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        NavigationView{
            ZStack{
                VStack(alignment: .leading, spacing: 25) {

                    VStack(alignment: .leading, spacing: 5){
                        Text("Hi !")
                            .font(.system(size: 60, weight: .bold))
                            .foregroundColor(Color("MainColor"))
                        
                        Text("Create a new account")
                            .font(.system(size: 25, weight: .regular))
                            .foregroundColor(Color("SecondColor"))
                        

                    }
                   
                    
                    
                    VStack{
                        TextField("Username", text: $username)
                            .padding()
                            .background(Color("GreyColor"))
                            .cornerRadius(5.0)
                            .frame(width: 360, height: 60)
                            .padding(.bottom, 20)
                        
                        TextField("Email", text: $email)
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
                    
                        
                        
                        
                        
                        HStack {
                            Rectangle()
                                .frame(width: 160, height: 1, alignment: .trailing)
                            Text("or")
                            Rectangle()
                                .frame(width: 160, height: 1, alignment: .trailing)
                            
                        }
                        
                        AppleLogin()
                        GoogleLogin()
                        
                        .frame(width: 360, height: 50, alignment: .center)
                        
                        HStack {
                            Text("Didn't have account?")
                            Button {
                                isregisterView = false
                                isLoginView = true
                            } label: {
                                Text("Sign In")
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

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
