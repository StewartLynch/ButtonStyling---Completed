//
//  ContentView.swift
//  ButtonStyling
//
//  Created by Stewart Lynch on 2020-10-11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Sample 1") {
                print("Tapped")
            }.buttonStyle(FilledRoundedCornerButtonStyle())
            Button("Sample 2") {
                
            }.buttonStyle(FilledRoundedCornerButtonStyle(font: .body,  bgColor: .red, fgColor: .yellow))
            HStack {
                Button("Delete") {
                    
                }.buttonStyle(SpecialButtonStyle(actionType: .delete))
                Spacer()
                Button("Cancel") {
                    
                }.buttonStyle(SpecialButtonStyle(actionType: .cancel, withImage: false))
                Button("OK") {
                    
                }.buttonStyle(SpecialButtonStyle(actionType: .confirm))
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
