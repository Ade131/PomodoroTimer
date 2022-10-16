//
//  Home.swift
//  PomodoroTimer
//
//  Created by Aidan Kelly on 16/10/2022.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject var pomodorolModel: PomodoroModel
    var body: some View {
        VStack{
            Text("Pomodoro Timer")
                .font(.title2.bold())
                .foregroundColor(.white)
            
            GeometryReader{proxy in
                VStack (spacing: 15) {
                    ZStack{
                        Circle()
                            .fill(.white.opacity(0.06))
                            .padding(-40)
                        
                        Circle()
                            .trim(from: 0, to: pomodorolModel.progress)
                            .stroke(.white.opacity(0.03),lineWidth: 80)
                        
                        //MARK: Shadow
                        Circle()
                            .stroke(Color("Purple"),lineWidth: 5)
                            .blur(radius: 15)
                            .padding(-2)
                        
                        Circle()
                            .fill(Color("BG"))
                        
                        //MARK: Knob
                        Circle()
                            .trim(from: 0, to: pomodorolModel.progress)
                            .stroke(Color("Purple").opacity(0.7),lineWidth: 10)
                        
                        GeometryReader{proxy in
                            let size = proxy.size
                            
                            Circle()
                                .fill(Color("Purple"))
                                .frame(width: 30, height: 30)
                                .overlay(content: {
                                    Circle()
                                        .fill(.white)
                                        .padding(5)
                                })
                                .frame(width: size.width,
                                       height: size.height,
                                       alignment: .center)
                                .offset(x: size.height / 4)
                                .rotationEffect(.init(degrees: pomodorolModel.progress * 360))
                        }
                        
                        Text(pomodorolModel.timerStringValue)
                            .font(.system(size: 45, weight: .light))
                            .rotationEffect(.init(degrees: -90))
                            .animation(.none, value: pomodorolModel.progress)
                        
                    }
                    .padding(60)
                    .frame(width: proxy.size.width)
                    .rotationEffect(.init(degrees: -90))
                    .animation(.easeInOut, value: pomodorolModel.progress)
                    .frame(maxWidth: .infinity, maxHeight: .infinity,
                           alignment: .center)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "pause")
                            .font(.largeTitle.bold())
                            .foregroundColor(.white)
                            .frame(width: 80, height: 80)
                            .background{
                                Circle()
                                    .fill(Color("Purple"))
                            }
                            .shadow(color: Color("Purple"), radius: 9, x: 0, y: 0)
                    }
                }
                
                .frame(maxWidth: .infinity, maxHeight: .infinity,
                       alignment: .center)
            }
        }
        .padding()
        .background{
            Color("BG")
                .ignoresSafeArea()
        }
        .preferredColorScheme(.dark)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(PomodoroModel())
    }
}
