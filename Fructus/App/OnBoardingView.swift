//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Lucas Newlands on 05/04/22.
//

import SwiftUI

struct OnBoardingView: View {
    
    //MArk - propertier
    
    var fruits: [Fruit] = fruitsData
    
    //Mark - Body
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) {item in
           
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
        
    }
}

// Mark - preview

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruits: fruitsData)
    }
}
