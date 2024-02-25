//
//  SwiftUIView.swift
//  
//
//  Created by Gregorius Yuristama Nugraha on 2/25/24.
//

import SwiftUI

struct OfficeView: View {
    @State var counter = 0
    var body: some View {
        ZStack {
            Image(ResourcePath.office)
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            if counter == 0 {
                firstChoiceBox
            } else if counter == 1 {
                lunchChoiceBox
            } else if counter == 2 {
                goToCanteen
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
                    Terra need to share his app idea to his teammate, what should he choose
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
                        Text("Use Freeform App to share his idea")
                    }
                    
                    Button {
                        counter += 1
                    } label: {
                        Text("Print his idea to a paper and share to his teammate ")
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
    
    private var lunchChoiceBox: some View {
        VStack {
            Spacer()
            DialogBox(overlay: VStack {
                Text(
                    """
                    As the time close to afternoon Terra feel drowsy, what should he choose:
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
                        Text("Buy a coffee that more tasty")
                    }
                    
                    Button {
                        counter += 1
                    } label: {
                        Text("Create a coffee using coffee machine but he need to wash his out cup")
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
    
    private var goToCanteen: some View {
        VStack {
            Spacer()
            DialogBox(overlay: VStack {
                Text(
                    """
                    It's lunch time! Terra goes to canteen with his friends
                    """
                )
                .padding(.top, 80)
                .font(.custom(FontNames.poppinsBold, size: 32))
                .foregroundStyle(.white)
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink {
                        OfficeCanteenView()
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

