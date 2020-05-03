//
//  TimeData.swift
//  ObservableDemo
//
//  Created by 김현지 on 2020/05/03.
//  Copyright © 2020 김현지. All rights reserved.
//

import Foundation
import Combine

class TimerData: ObservableObject {
    @Published var timeCount = 0
    
    var timer: Timer?
    
    init() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerDidFire), userInfo: nil, repeats: true)
    }
    
    @objc func timerDidFire() {
        timeCount += 1
    }
    
    func resetCount() {
        timeCount = 0
    }
}
