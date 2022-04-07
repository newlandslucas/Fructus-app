//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Lucas Newlands on 05/04/22.
//

import SwiftUI

struct OnBoardingView: View {
    
    //MArk - propertier
    
    //Mark - Body
    var body: some View {
        TabView {
            ForEach(0..<15) {item in
                Text("Cards")
//                FruitCardView()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
        
    }
}

// Mark - preview

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
