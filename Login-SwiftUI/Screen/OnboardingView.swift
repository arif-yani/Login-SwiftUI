//
//  OnboardingView.swift
//  Login-SwiftUI
//
//  Created by Muhamad Arif on 12/07/22.
//

import SwiftUI

struct OnboardingView: View {
    
    var body: some View {
        ZStack {
            VStack(spacing: 55){
                VStack(spacing: 5) {
                    Image("image3")
                        .resizable()
                    .aspectRatio(contentMode: .fit)
                    
                    Text("Hello !")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color("MainColor"))
                    
                    Text("""
                    Best place to write life stories and
                    share your journey experience
                    """)
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(Color("MainColor"))
                    .multilineTextAlignment(.center)
                }
                
                ButtonView()
                


            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

struct ButtonView: View {
    @AppStorage("login") var isLoginView: Bool = false
    @AppStorage("register") var isregisterView: Bool = false
    var body: some View {
        
        VStack {
            Button(action: {
                isLoginView = true
            }) {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color("MainColor"))
                    .frame(width: 300, height: 50)
                    .overlay{
                        Text("LOGIN")
                            .font(.title3)
                            .foregroundColor(.white)
                        
                    }
                
            }
            Button(action: {
                isregisterView = true
            }) {
                RoundedRectangle(cornerRadius: 20)
                    .inset(by: 3)
                    .stroke(Color("MainColor"), lineWidth: 5)
                    .frame(width: 300, height: 50)
                    .overlay{
                        Text("SIGNUP")
                            .font(.title3)
                            .foregroundColor(Color("MainColor"))
                    }
                
            }
        }
        
        
        
        
    }
}
