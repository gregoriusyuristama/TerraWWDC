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
                    A quick glance at the clock confirms Terra's early start. The quiet morning stretches before him, offering a welcome respite before the bustling energy of Apple Academy. He wait for bus, the BSD Link, will soon arrive to whisk him away.
                    """
                )
                .onAppear(perform: {
                    ChoiceState.shared.sustainableScore += 1
                })
                .padding(.top, 80)
                .font(.custom(FontNames.poppinsBold, size: 28))
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
                    9:50 AM! Terra races to his motorcycle, pushing it to the max. He only has 10 minutes to reach Apple Academy - no time to waste!
                    """
                )
                .onAppear(perform: {
                    ChoiceState.shared.sustainableScore -= 1
                })
                .padding(.top, 80)
                .font(.custom(FontNames.poppinsBold, size: 28))
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
