//
//  ContentView.swift
//  PomodoroTimer
//
//  Created by Aidan Kelly on 16/10/2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var pomodoroModel: PomodoroModel
    var body: some View {
        Home()
            .environmentObject(pomodoroModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
