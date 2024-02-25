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
    @State var popupIsShowed = false
    @State var popupText = ""
    var body: some View {
        ZStack {
            Image(ResourcePath.homeNight)
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            if popupIsShowed {
                PopupBox(closeAction: {
                    popupIsShowed = false
                }
                )
                .overlay {
                    Text(popupText)
                        .font(.custom(FontNames.poppinsBold, size: 28))
                        .foregroundStyle(Color(ColorsPath.terraWhite))
                        .padding()
                }
                .onAppear {
                    AudioManager.shared.playSoundEffect(fileName: MusicPath.ding)
                }
            } else {
                if counter == 0 {
                    firstChoiceBox
                } else if counter == 1 {
                    secondChoiceBox
                } else if counter == 2 {
                    goSleep
                }
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
                    After a busy day, Terra's stomach growls. Dinner time!
                    Should he:
                    """
                )
                .padding(.top, 80)
                .font(.custom(FontNames.poppinsBold, size: 26))
                .foregroundStyle(.white)
                Spacer()
                HStack {
                    Button {
                        counter += 1
                        ChoiceState.shared.sustainableScore += 1
                        popupText =
                        """
                        Awesome choice, Terra!
                        Making dinner at home means less trash from takeout boxes and plastic bags. Plus, it's usually healthier and cheaper! You're a rockstar for choosing the eco-friendly option!
                        """
                        popupIsShowed = true
                    } label: {
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color(ColorsPath.brownChoiceBox))
                            .frame(width: 397, height: 117)
                            .overlay {
                                Text("Cook a yummy meal at home?")
                                    .padding()
                                    .multilineTextAlignment(.leading)
                                    .foregroundStyle(Color(ColorsPath.brownTextChoice))
                                    .font(.custom(FontNames.poppinsBold, size: 18))
                            }
                    }
                    
                    Spacer()
                    
                    Button {
                        counter += 1
                        ChoiceState.shared.sustainableScore -= 1
                    } label: {
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color(ColorsPath.brownChoiceBox))
                            .frame(width: 397, height: 117)
                            .overlay {
                                Text("Order takeout with a discount?")
                                    .padding()
                                    .multilineTextAlignment(.leading)
                                    .foregroundStyle(Color(ColorsPath.brownTextChoice))
                                    .font(.custom(FontNames.poppinsBold, size: 18))
                            }
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
                    Time for bed! Terra unwinds with:
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
                        ChoiceState.shared.sustainableScore += 1
                        popupText =
                        """
                        Power down for the planet!
                        By choosing to spend less time on your device, you're not only giving your eyes a break, but you're also helping to conserve precious energy. Every little bit counts when it comes to protecting our environment. Keep up the mindful choices, Terra!
                        """
                        popupIsShowed = true
                    } label: {
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color(ColorsPath.brownChoiceBox))
                            .frame(width: 397, height: 117)
                            .overlay {
                                Text("A good book.")
                                    .padding()
                                    .multilineTextAlignment(.leading)
                                    .foregroundStyle(Color(ColorsPath.brownTextChoice))
                                    .font(.custom(FontNames.poppinsBold, size: 18))
                            }
                        
                        
                    }
                    Spacer()
                    
                    Button {
                        counter += 1
                        ChoiceState.shared.sustainableScore -= 1
                    } label: {
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color(ColorsPath.brownChoiceBox))
                            .frame(width: 397, height: 117)
                            .overlay {
                                Text("A fun movie.")
                                    .padding()
                                    .multilineTextAlignment(.leading)
                                    .foregroundStyle(Color(ColorsPath.brownTextChoice))
                                    .font(.custom(FontNames.poppinsBold, size: 18))
                            }
                        
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
                    The last page turns, and sleep beckons. Terra clicks off the light, devices silenced. Dreams await, filled with the day's choices.
                    """
                    :
                    """
                    The movie puts Terra to sleep, lights and devices still on. Oops! He'll have to deal with that in the morning.
                    """
                )
                .onAppear(perform: {
                    if isReadingBook {
                        ChoiceState.shared.sustainableScore += 1
                    } else {
                        ChoiceState.shared.sustainableScore -= 1
                    }
                })
                .padding(.top, 80)
                .font(.custom(FontNames.poppinsBold, size: 32))
                .foregroundStyle(.white)
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink {
                        EndgameView()
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
