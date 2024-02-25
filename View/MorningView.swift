//
//  SpriteKitScene.swift
//  Terra
//
//  Created by Gregorius Yuristama Nugraha on 2/25/24.
//

import Foundation
import SwiftUI

struct MorningView: View {
    
    var body: some View {
        ZStack {
            Image(ResourcePath.homeDay)
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            if ChoiceState.shared.isWakeupEarly {
                wakeUpEarlyDialog
            } else {
                lateWakeupDialog
            }
        }
        .ignoresSafeArea()
    }
    
    private var wakeUpEarlyDialog: some View {
        VStack {
            Spacer()
            DialogBox(overlay: VStack {
                Text(
                    """
                    The invigorating shower leaves Terra feeling refreshed and ready to tackle the day. Grabbing his trusty reusable water bottle, he heads to the kitchen, humming a cheerful tune. What delicious and sustainable breakfast will Terra whip up today?
                    """
                )
                .onAppear(perform: {
                    ChoiceState.shared.sustainableScore += 1
                })
                .padding(.top, 80)
                .font(.custom(FontNames.poppinsBold, size: 26))
                .foregroundStyle(.white)
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink {
                        KitchenView()
                            .navigationBarBackButtonHidden()
                    } label: {
                        Text("Continue")
                    }
                    .font(.custom(FontNames.poppinsRegular, size: 32))
                    .foregroundStyle(.white)
                    
                }
                .padding(.bottom, 40)
            }
                .padding(.horizontal, 60)
                .eraseToAnyView()
            )
        }
        .padding(.bottom, 40)
        
    }
    
    private var lateWakeupDialog: some View {
        VStack {
            Spacer()
            DialogBox(overlay: VStack {
                Text(
                    """
                    Showered and ready, Terra races out the door.
                    """
                )
                .padding(.top, 80)
                .font(.custom(FontNames.poppinsBold, size: 32))
                .foregroundStyle(.white)
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink {
                        HomeOutsideView()
                            .navigationBarBackButtonHidden()
                    } label: {
                        Text("Continue")
                    }
                    .font(.custom(FontNames.poppinsRegular, size: 32))
                    .foregroundStyle(.white)
                    
                }
                .padding(.bottom, 40)
            }
                .padding(.horizontal, 60)
                .eraseToAnyView()
            )
        }
        .padding(.bottom, 40)
        
    }
}


