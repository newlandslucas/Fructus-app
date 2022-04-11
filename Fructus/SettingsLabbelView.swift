//
//  SettingsLabbelView.swift
//  Fructus
//
//  Created by Lucas Newlands on 11/04/22.
//

import SwiftUI

struct SettingsLabbelView: View {
    
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabbelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabbelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
