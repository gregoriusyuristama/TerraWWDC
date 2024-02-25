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
                    After taking bath, Terra picks up his Water Bottle and go to kitchen to prepare his meal
                    """
                )
                .padding(.top, 80)
                .font(.custom(FontNames.poppinsBold, size: 32))
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
                    After taking bath, Terra rush out to his motorcycle
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


