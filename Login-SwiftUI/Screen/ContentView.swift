//
//  ContentView.swift
//  Login-SwiftUI
//
//  Created by Muhamad Arif on 12/07/22.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("login") var isLoginView: Bool = false
    @AppStorage("register") var isregisterView: Bool = false
    var body: some View {
        
        if isLoginView {
            LoginView()
        }else if isregisterView {
           RegisterView()
        } else {
            OnboardingView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
