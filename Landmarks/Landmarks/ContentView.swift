//
//  ContentView.swift
//  Landmarks
//
//  Created by 김현지 on 2020/04/25.
//  Copyright © 2020 김현지. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    
    var body: some View {
        
        VStack {
            Text("Spring is coming")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(Color.black)
            .padding(4)
            
            Image("ui")
                .frame(width: show ? 414 : 300, height: show ? 600 : 300)
                .clipped()
                .cornerRadius(show ? 0 : 30)
                .shadow(radius: 30)
                .blur(radius: show ? 0 : 30)
                .animation(.spring())
            
            Text("focused on Spring")
                .font(.subheadline)
                .fontWeight(.regular)
                .foregroundColor(Color.gray)
                .scaleEffect(show ? 2 : 1)
                .animation(.spring())
                .padding(4)
            
            Button(action: {
                withAnimation {
                    self.show.toggle()
                }
            }) {
                Text("Animate")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
