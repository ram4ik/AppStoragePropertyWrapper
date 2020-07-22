//
//  ContentView.swift
//  AppStoragePropertyWrapper
//
//  Created by ramil on 22.07.2020.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("username") var username = "SwiftUI User"
    
    var body: some View {
        Text("User name is \(username)").padding()
        
        Button("Get my new name") {
            withAnimation {
                username = "New Name User"
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
