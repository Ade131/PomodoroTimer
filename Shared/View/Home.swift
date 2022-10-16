//
//  Home.swift
//  PomodoroTimer
//
//  Created by Aidan Kelly on 16/10/2022.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack{
            Text("Pomodoro Timer")
                .font(.title2.bold())
                .foregroundColor(.white)
            
            GeometryReader{proxy in
                VStack (spacing: 15) {
                    ZStack{
                        Circle()
                        
                        Circle()
                            .trim(from: 0, to: 0.5)
                            .stroke(Color("Purple").opacity(0.7),lineWidth: 10)
                    }
                    .padding(60)
                    .frame(width: proxy.size.width)
                    .rotationEffect(.init(degrees: -90))
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity,
                       alignment: .center)
            }
        }
        .padding()
        .preferredColorScheme(.dark)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(PomodoroModel())
    }
}
