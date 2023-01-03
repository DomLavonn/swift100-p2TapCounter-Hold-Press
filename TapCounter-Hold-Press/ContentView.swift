//
//  ContentView.swift
//  TapCounter-Hold-Press
//
//  Created by Domanik Johnson on 1/1/23.
//

import SwiftUI

struct ContentView: View {
    @State private var counter = 0
    @State private var showAlert = false
    

    var body: some View {
        NavigationStack{
            VStack{
                Text("dfd")
                    .navigationTitle("Tap Counter")
            }.navigationBarTitleDisplayMode(.inline)
            // Adding nav buttons
                .navigationBarItems(leading: HStack {
                    Button("Reset") {
                        
                    }
                    // Putting button to right
                }, trailing: HStack {
                    Button("Settings") {
                        showAlert = true
                    }.alert("Player Settings", isPresented: $showAlert){
                        Button("Cancel", role: .cancel) {}
                    }
                })
        }
                 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
