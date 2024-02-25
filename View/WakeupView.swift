//
//  WakeupScene.swift
//  Terra
//
//  Created by Gregorius Yuristama Nugraha on 2/25/24.
//

import Foundation
import SwiftUI

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
                    .onAppear(perform: {
                        AudioManager.shared.playSoundEffect(fileName: MusicPath.snoring)
                    })
            } else if choice == 2 {
                wakeupEarlyScene
                    .onAppear(perform: {
                        AudioManager.shared.playSoundEffect(fileName: MusicPath.showering)
                    })
            }
            
        }
        .onAppear(perform: {
            AudioManager.shared.backgroundMusicPlayer?.volume = 0
            AudioManager.shared.playSoundEffect(fileName: MusicPath.alarm)
        })
        .onDisappear(perform: {
            AudioManager.shared.backgroundMusicPlayer?.volume = 1
            AudioManager.shared.stopSoundEffect()
        })
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

                Terra's eyes snap open! It's 9:00 AM and Apple Academy starts at 10:00 AM! Uh oh, no time to waste! Terra scrambles out of bed, knowing a quick shower is the first step to getting ready on time!
                """
            )
            .font(.custom(FontNames.poppinsBold, size: 40))
            .foregroundStyle(.white)
            
            Spacer()
            
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
        .padding(.vertical, 120)
    }
    
    private var wakeupEarlyScene: some View {
        VStack {
            Text(
                """
                You choose to wake up early...
                
                Sunrise nudges Terra awake. He makes his bed in a flash and hops in the shower, chasing away sleep with a blast of cool water. Ready to tackle the day !
                """
            )
            .font(.custom(FontNames.poppinsBold, size: 40))
            .foregroundStyle(.white)
            
            Spacer()
            
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
        .padding(.vertical, 120)
    }
}
