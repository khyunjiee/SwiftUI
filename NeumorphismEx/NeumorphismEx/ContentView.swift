//
//  ContentView.swift
//  NeumorphismEx
//
//  Created by 김현지 on 2020/04/25.
//  Copyright © 2020 김현지. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("Background"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color("Background"))
                .frame(width: 300, height: 180)
                .shadow(color: Color("LightShadow"), radius: 8, x: -8, y: -8)
                .shadow(color: Color("DarkShadow"), radius: 8, x: 8, y: 8)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .environment(\.colorScheme, .dark)
    }
}
