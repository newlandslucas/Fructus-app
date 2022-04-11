//
//  SetttingsView.swift
//  Fructus
//
//  Created by Lucas Newlands on 11/04/22.
//

import SwiftUI

struct SetttingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                }
                .navigationTitle("Settings")
                .navigationBarItems(
                    trailing:
                        Button(action : {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                    )
                .navigationBarTitleDisplayMode(.large)
            }
            .padding()
            
        }
        
    }
}

struct SetttingsView_Previews: PreviewProvider {
    static var previews: some View {
        SetttingsView()
            .preferredColorScheme(.dark)
    }
}
