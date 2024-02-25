//
//  SwiftUIView.swift
//  
//
//  Created by Gregorius Yuristama Nugraha on 2/25/24.
//

import SwiftUI

struct KitchenView: View {
    var body: some View {
        ZStack {
            Image(ResourcePath.homeKitchen)
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            VStack {
                Spacer()
                DialogBox(overlay: VStack {
                    Text(
                        """
                        The aroma of freshly cooked food fills the air as Terra expertly assembles his lunch. With a flourish, he packs it all away in his trusty reusable container.
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
        .ignoresSafeArea()
    }
}

