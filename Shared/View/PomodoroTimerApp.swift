//
//  PomodoroTimerApp.swift
//  PomodoroTimer
//
//  Created by Aidan Kelly on 16/10/2022.
//

import SwiftUI

@main
struct PomodoroTimerApp: App {
    @StateObject var pomodoroModel: PomodoroModel = .init()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(pomodoroModel)
        }
    }
}
