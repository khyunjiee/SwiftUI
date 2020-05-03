//
//  ContentView.swift
//  ExampleView
//
//  Created by 김현지 on 2020/05/02.
//  Copyright © 2020 김현지. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var idColor: UIColor = .gray
    var body: some View {
        ZStack {
            Image("backLogin")
                .padding(.all, 0.0)
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading) {
                Text("아이디")
                    .fontWeight(.medium)
                    .foregroundColor(Color(red: 49/255, green: 49/255, blue: 49/155, opacity: 1.0))
                    .padding(.leading, 19.0)
                    
                    
                TextField("아이디를 입력해주세요.", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/, onEditingChanged: { _ in
                    self.idColor = .blue
                })
                    .padding(.vertical, 13.0)
                    .padding(.leading, 19.0)
                    .frame(height: 49.0)
//                    .border(idColor, width: /*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                
//                    .cornerRadius(25.0)
//                    .mask(RoundedRectangle(cornerRadius: 25.0))
                
            }
            .padding(.horizontal, 42.0)
            
        }
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
