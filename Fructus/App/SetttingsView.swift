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
                    // MARK: - Section 1
                    GroupBox(label:
                    SettingsLabbelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                              .font(.footnote)
                        }
                    }
                    // MARK: - Section 2
                    
                    // MARK: - Section 3
                    
                    GroupBox(
                        label: SettingsLabbelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Developer", content: "Lucas Newlands")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "IOS Compatibility", content: "IOS 15")
                        SettingsRowView(name: "Instagram", linkLabel: "@lucasnewlands_", linkDestination: "www.instagram.com/lucasnewlands_")
                        SettingsRowView(name: "LinkedIn", linkLabel: "@lucasnewlands", linkDestination: "www.linkedin.com/in/lucas-newlands-46326b192/")
                        SettingsRowView(name: "Version", content: "1.0.0")
                        
                        
                    
                    }
                    
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
