//
//  ContentView.swift
//  Fructus
//
//  Created by Lucas Newlands on 29/03/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("ColorBlueberryLight")
                .ignoresSafeArea(.all)
            Text("Lucas Newlands")
                .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
