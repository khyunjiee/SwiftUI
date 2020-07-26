//
//  SwiftUIView.swift
//  UIHostingController
//
//  Created by 김현지 on 2020/05/09.
//  Copyright © 2020 김현지. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
    
    var text: String
    
    var body: some View {
        VStack {
            Text(text)
            HStack {
                Image(systemName: "smiley")
                Text("This is SwiftUI View")
            }
        }
        .font(.largeTitle)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(text: "Simple Text")
    }
}
