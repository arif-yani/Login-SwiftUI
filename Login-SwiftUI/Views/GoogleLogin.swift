//
//  GoogleLogin.swift
//  Login-SwiftUI
//
//  Created by Muhamad Arif on 14/07/22.
//

import SwiftUI

struct GoogleLogin: View {
    var body: some View {
        Button(action: {
            
        }) {
        
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.red)
                .frame(width: 360, height: 50)
                .overlay{
                    HStack{
                        Image("download")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                        Text("Continue with Google")
                            .font(.title3)
                            .foregroundColor(.white)
                    }
                    
                    
                }
        }
    }
}

struct GoogleLogin_Previews: PreviewProvider {
    static var previews: some View {
        GoogleLogin()
    }
}
