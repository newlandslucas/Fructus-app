//
//  FruiCardView.swift
//  Fructus
//
//  Created by Lucas Newlands on 05/04/22.
//

import SwiftUI

struct FruiCardView: View {
    
    //Mark - Properties
    
    @State private var isAnimating: Bool = false
    
    
    //Mark - Body
    
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                //Frui: image
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                //Fruit: title
                Text("Blueberry")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                //Fruit: Headline
                Text("Blueberry are sweet, nutricious and wildly popular fruit all over the world.")
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                //Button: Start
                StartButtonView()
                
            }//VStack
        } // ZStack
        .onAppear{withAnimation(.easeOut(duration: 0.5)) {
            isAnimating = true
        }}
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

//Mark - Preview

struct FruiCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruiCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
