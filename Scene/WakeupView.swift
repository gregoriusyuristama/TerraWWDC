//
//  WakeupScene.swift
//  Terra
//
//  Created by Gregorius Yuristama Nugraha on 2/25/24.
//

import Foundation
import SwiftUI

extension AnyTransition {
    static var moveAndFade: AnyTransition {
        .asymmetric(
            insertion: .move(edge: .trailing).combined(with: .opacity),
            removal: .scale.combined(with: .opacity)
        )
    }
}

struct WakeupView: View {
    
    @State var choice = 0
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .foregroundStyle(.black)
            
            if choice == 0 {
                firstScene
            } else if choice == 1 {
                keepSleepingScene
                    .transition(.moveAndFade)
            } else if choice == 2 {
                wakeupEarlyScene
            }
            
        }
        .ignoresSafeArea()
    }
    
    private var firstScene: some View {
        VStack {
            Spacer()
            Text("It’s 7:00 AM, what Terra will choose?")
                .font(.custom(FontNames.poppinsBold, size: 40))
                .foregroundStyle(.white)
            
            Spacer()
            HStack {
                Button {
                    choice = 1
                } label: {
                    Text("Keep Sleeping")
                        .font(.custom(FontNames.poppinsRegular, size: 40))
                        .foregroundStyle(.white)
                }
                
                
                Spacer()
                
                Button {
                    choice = 2
                    ChoiceState.shared.isWakeupEarly = true
                } label: {
                    Text("Wake Up Immediately")
                        .font(.custom(FontNames.poppinsRegular, size: 40))
                        .foregroundStyle(.white)
                }
                
            }
            .frame(maxWidth: 1000)
            .padding(.bottom, 120)
        }
    }
    
    private var keepSleepingScene: some View {
        VStack {
            Text(
                    """
                    You choose to keep staying in your dream...
                    Suddenly, Terra realize now it's 9:00 AM and you rush out to his bathroom because Terra need to go to Apple Academy at 10:00 AM or Terra will be late
                    """
            )
            .font(.custom(FontNames.poppinsBold, size: 40))
            .foregroundStyle(.white)
            
            NavigationLink {
                MorningView()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Continue")
                    .font(.custom(FontNames.poppinsRegular, size: 40))
                    .foregroundStyle(.white)
            }

        }
        
        .frame(maxWidth: 1000)
        .padding(.bottom, 120)
    }
    
    private var wakeupEarlyScene: some View {
        VStack {
            Text(
                    """
                    You choose to wake up early...
                    Terra wake up and make up his bed. After that, to fight his drowsiness he take a shower and prepare himself to go to Apple Academy
                    """
            )
            .font(.custom(FontNames.poppinsBold, size: 40))
            .foregroundStyle(.white)
            
            NavigationLink {
                MorningView()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Continue")
                    .font(.custom(FontNames.poppinsRegular, size: 40))
                    .foregroundStyle(.white)
            }

        }
        
        .frame(maxWidth: 1000)
        .padding(.bottom, 120)
    }
}
