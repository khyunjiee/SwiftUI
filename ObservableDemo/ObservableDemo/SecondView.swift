//
//  SecondView.swift
//  ObservableDemo
//
//  Created by 김현지 on 2020/05/03.
//  Copyright © 2020 김현지. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    
    @ObservedObject var timerData: TimerData = TimerData()
    
    var body: some View {
        VStack {
            Text("Second View")
                .font(.largeTitle)
            
            Text("Timer Count = \(timerData.timeCount)")
        }
        .padding()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(timerData: TimerData())
    }
}
