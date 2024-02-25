//
//  SwiftUIView.swift
//  
//
//  Created by Gregorius Yuristama Nugraha on 2/25/24.
//

import SwiftUI

struct HomeNightView: View {
    @State private var counter = 0
    @State private var isReadingBook = false
    var body: some View {
        ZStack {
            Image(ResourcePath.homeNight)
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            if counter == 0 {
                firstChoiceBox
            } else if counter == 1 {
                secondChoiceBox
            } else if counter == 2 {
                goSleep
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
                    Terra prepares dinner. Players choose between
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
                        Text("Cooking his own dinner")
                    }
                    
                    Button {
                        counter += 1
                    } label: {
                        Text("Order a discounted dinner from online app ")
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
    
    private var secondChoiceBox: some View {
        VStack {
            Spacer()
            DialogBox(overlay: VStack {
                Text(
                    """
                    Terra relaxes before bed. Players choose between
                    """
                )
                .padding(.top, 80)
                .font(.custom(FontNames.poppinsBold, size: 32))
                .foregroundStyle(.white)
                Spacer()
                HStack {
                    Button {
                        counter += 1
                        isReadingBook = true
                    } label: {
                        Text("Reading a book or playing board games")
                    }
                    
                    Button {
                        counter += 1
                    } label: {
                        Text("Watching Movies")
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
    
    private var goSleep: some View {
        VStack {
            Spacer()
            DialogBox(overlay: VStack {
                Text(
                    isReadingBook ?
                    """
                    After reading book and feel sleepy, Terra turn off their light and devices and then go to sleep
                    """
                    :
                    """
                    Terra watches movie that he like, he fall asleep when watching movie and not turning off his devices
                    """
                )
                .padding(.top, 80)
                .font(.custom(FontNames.poppinsBold, size: 32))
                .foregroundStyle(.white)
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink {
                        WakeupView()
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
