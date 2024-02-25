//
//  SwiftUIView.swift
//  
//
//  Created by Gregorius Yuristama Nugraha on 2/25/24.
//

import SwiftUI

struct HomeOutsideView: View {
    var body: some View {
        ZStack {
            Image(ResourcePath.homeOutside)
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            if ChoiceState.shared.isWakeupEarly {
                wakeupEarlyScene
            } else {
                wakeupLateScene
            }
        }
        .ignoresSafeArea()
    }
    
    private var wakeupEarlyScene: some View {
        VStack {
            Spacer()
            DialogBox(overlay: VStack {
                Text(
                    """
                    Terra still have time for wait his buses, which is BSD Link, a public transport provided for area around Apple Academy where he currently learning
                    """
                )
                .padding(.top, 80)
                .font(.custom(FontNames.poppinsBold, size: 32))
                .foregroundStyle(.white)
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink {
                        OfficeView()
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
    
    private var wakeupLateScene: some View {
        VStack {
            Spacer()
            DialogBox(overlay: VStack {
                Text(
                    """
                    Terra rush out to his motorcycle, the time is now 9:50 AM he only has 10 minutes left so he pushes his motorcycle to max speed to be not late at Apple Academy
                    """
                )
                .padding(.top, 80)
                .font(.custom(FontNames.poppinsBold, size: 32))
                .foregroundStyle(.white)
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink {
                        OfficeView()
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
