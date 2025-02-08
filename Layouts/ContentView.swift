//
//  ContentView.swift
//  Layouts
//
//  Created by Enzo Arantes on 2/2/25.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "When The Genius Bar Needs Help They Call You!"
    var body: some View {
        VStack/*(spacing: 0)squishes views vertically*/ {
            Text("Awesome!")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(.indigo)
            
            Spacer()
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
                .minimumScaleFactor(0.5) //if the text doesn't fit, this shrinks it down
            
                .multilineTextAlignment(.center)//aligns text a certain way, such as centered and or trailing/leading
            
                .foregroundStyle(.red)
            
                .frame(height: 150) //puts the text in a prison/box
            
                .frame(maxWidth: .infinity) //stretches the prison/box to the max width
            
                .padding() //spaces the text out in all directions
            
            Spacer()
            
            HStack {
                Button("Awesome") {
                    messageString = "You Are Awesome!"
                }
                Spacer()
                
                
                Button("Great") {
                    messageString = "You Are Great!"
                }
            }
            .buttonStyle(.borderedProminent)
            .padding()
            
            Rectangle()
                .frame(height: 0)
                .background(Color.indigo)
        }
    }
}

#Preview {
    ContentView()
}
