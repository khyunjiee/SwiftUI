//
//  ContentView.swift
//  ProjectDemo
//
//  Created by 김현지 on 2020/05/01.
//  Copyright © 2020 김현지. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Text("Text 1")
                .modifier(StandardTitle())
        }
    }
}

struct StandardTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .background(Color.white)
            .border(Color.gray, width: 0.2)
            .shadow(color: Color.black, radius: 5, x: 0, y: 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
                .previewDisplayName("iPhone 11")
            
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro"))
                .previewDisplayName("iPhone 11 Pro")
        }
    }
}
