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
    @State private var isPressed = false
    @State private var tester = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("\(counter)")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                    .padding(.bottom)
                    .navigationTitle("Tap Counter")
                
                Text("\(tester)")
              
                
                
                Button(action: {
                    isPressed = false
                    
                    self.tester = "Tap Done"
                    
                    
                    
                }, label: {
                    Text("Hold to get up ")
                })
                .simultaneousGesture(LongPressGesture(minimumDuration: 0.5).onEnded({ _ in
                        self.tester = "Hold"
                    
                    self.isPressed = true
                    
                    
                    repeat {
                        
                        counter = counter + 1
                            // Put your code which should be executed with a delay here
                        
                    }while( counter  < 12)
                        
                    }))
                    .foregroundColor(.blue)
                
            }.navigationBarTitleDisplayMode(.inline)
            // Adding nav buttons
                .navigationBarItems(leading: HStack {
                    Button("Reset") {
                        counter = 0
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
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
