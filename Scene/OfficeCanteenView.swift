//
//  SwiftUIView.swift
//  
//
//  Created by Gregorius Yuristama Nugraha on 2/25/24.
//

import SwiftUI

struct OfficeCanteenView: View {
    @State var counter = 0
    var body: some View {
        ZStack {
            Image(ResourcePath.officeCanteen)
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            if counter == 0 {
                firstChoiceBox
            } else if counter == 1 {
                goHomeBox
            }
        }
        .ignoresSafeArea()
    }
    
    private var firstChoiceBox: some View {
        VStack {
            Spacer()
            DialogBox(overlay: VStack {
                Text(
                    """
                    Terra has free time for hobbies and activities. What should he choose:
                    """
                )
                .padding(.top, 80)
                .font(.custom(FontNames.poppinsBold, size: 32))
                .foregroundStyle(.white)
                Spacer()
                HStack {
                    Button {
                        counter += 1
                    } label: {
                        Text("Playing phone mobile games with their friends")
                    }
                    
                    Button {
                        counter += 1
                    } label: {
                        Text("Playing cards in communal room with their friends")
                    }
                    
                }
                .font(.custom(FontNames.poppinsRegular, size: 32))
                .foregroundStyle(.white)
                .padding(.bottom, 40)
            }
                .padding(.horizontal, 60)
                .eraseToAnyView()
            )
        }
        .padding(.bottom, 40)
    }
    
    private var goHomeBox: some View {
        VStack {
            Spacer()
            DialogBox(overlay: VStack {
                Text(
                    """
                    After lunch and do activities, it's now time to go home..
                    """
                )
                .padding(.top, 80)
                .font(.custom(FontNames.poppinsBold, size: 32))
                .foregroundStyle(.white)
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink {
                        HomeNightView()
                            .navigationBarBackButtonHidden()
                    } label: {
                        Text("Continue")
                    }
                    .font(.custom(FontNames.poppinsRegular, size: 32))
                    .foregroundStyle(.white)
                }
                .font(.custom(FontNames.poppinsRegular, size: 32))
                .foregroundStyle(.white)
                .padding(.bottom, 40)
            }
                .padding(.horizontal, 60)
                .eraseToAnyView()
            )
        }
        .padding(.bottom, 40)
    }
}
