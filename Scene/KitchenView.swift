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
                        Terra cook his meal for lunch at the office. After the cooking is done, he pack is meal using a reusable meal container
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
        .ignoresSafeArea()
    }
}

