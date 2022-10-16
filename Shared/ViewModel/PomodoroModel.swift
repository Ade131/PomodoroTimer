//
//  PomodoroModel.swift
//  PomodoroTimer
//
//  Created by Aidan Kelly on 16/10/2022.
//

import SwiftUI

class PomodoroModel: NSObject,ObservableObject {
    @Published var progress: CGFloat = 1
    @Published var timerStringValue: String = "00:00"
    
    @Published var hour: Int = 0
    @Published var minutes: Int = 0
    @Published var seconds: Int = 0
}


