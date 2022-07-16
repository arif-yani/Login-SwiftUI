//
//  ButtonView.swift
//  Login-SwiftUI
//
//  Created by Muhamad Arif on 14/07/22.
//

import SwiftUI

struct buttonView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Button(action: {
                
            }) {
                Text(.init(systemName: "applelogo"))
                    .font(.title)
                    .foregroundColor(.black)
                
            }

            Button(action: {
                
            }) {
                
                Image("google")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
        }
        .frame(width: 360, height: 50, alignment: .center)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
