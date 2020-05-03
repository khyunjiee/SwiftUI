//
//  ContentView.swift
//  ObservableDemo
//
//  Created by 김현지 on 2020/05/03.
//  Copyright © 2020 김현지. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var timerData: TimerData
    
    var body: some View {
        
        NavigationView {
            VStack {
                Text("Timer count = \(timerData.timeCount)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                Button(action: resetCount) {
                    Text("Reset Counter")
                }
                
                NavigationLink(destination: SecondView()) {
                    Text("Next Screen")
                }
                .padding()
                
            }
        }
    }
    
    func resetCount() {
        timerData.resetCount()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(TimerData())
    }
}
