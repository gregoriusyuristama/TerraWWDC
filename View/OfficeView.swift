//
//  SwiftUIView.swift
//
//
//  Created by Gregorius Yuristama Nugraha on 2/25/24.
//

import SwiftUI

struct OfficeView: View {
    @State var counter = 0
    @State var popupIsShowed: Bool = false
    @State var popupText: String = ""
    var body: some View {
        ZStack {
            Image(ResourcePath.office)
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            if popupIsShowed {
                PopupBox {
                    popupIsShowed = false
                }
                .overlay {
                    Text(popupText)
                        .font(.custom(FontNames.poppinsBold, size: 32))
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
                    lunchChoiceBox
                } else if counter == 2 {
                    goToCanteen
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
                    During his time at Academy, Terra need to share his app idea to his teammate,
                    What should he choose?
                    """
                )
                .padding(.top, 80)
                .font(.custom(FontNames.poppinsBold, size: 28))
                .foregroundStyle(.white)
                Spacer()
                HStack {
                    Button {
                        counter += 1
                        ChoiceState.shared.sustainableScore += 1
                        popupText = 
                    """
                    Awesome choice!
                    Using a collaborative app like Freeform saves paper and reduces your environmental footprint. Every little bit counts!
                    """
                        popupIsShowed = true
                    } label: {
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color(ColorsPath.brownChoiceBox))
                            .frame(width: 397, height: 117)
                            .overlay {
                                Text("Use Freeform App to share his idea")
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
                                Text("Print his idea to a paper and share to his teammate ")
                                    .padding()
                                    .multilineTextAlignment(.leading)
                                    .foregroundStyle(Color(ColorsPath.brownTextChoice))
                                    .font(.custom(FontNames.poppinsBold, size: 18))
                            }
                        
                    }
                    
                }
                .font(.custom(FontNames.poppinsRegular, size: 16))
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
                    The afternoon sun brings a wave of drowsiness.
                    Terra ponders his options:
                    """
                )
                .padding(.top, 80)
                .font(.custom(FontNames.poppinsBold, size: 28))
                .foregroundStyle(.white)
                Spacer()
                HStack {
                    Button {
                        counter += 1
                        ChoiceState.shared.sustainableScore -= 1
                    } label: {
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color(ColorsPath.brownChoiceBox))
                            .frame(width: 397, height: 117)
                            .overlay {
                                Text("Grab a quick, tempting coffee.")
                                    .padding()
                                    .multilineTextAlignment(.leading)
                                    .foregroundStyle(Color(ColorsPath.brownTextChoice))
                                    .font(.custom(FontNames.poppinsBold, size: 18))
                            }
                    }
                    Spacer()
                    
                    Button {
                        counter += 1
                        ChoiceState.shared.sustainableScore += 1
                    } label: {
                        Button {
                            counter += 1
                            ChoiceState.shared.sustainableScore -= 1
                            popupText =
                        """
                        High five!
                        Your reusable mug saves the planet from plastic waste. Every sip counts!
                        """
                            popupIsShowed = true
                        } label: {
                            RoundedRectangle(cornerRadius: 30)
                                .fill(Color(ColorsPath.brownChoiceBox))
                                .frame(width: 397, height: 117)
                                .overlay {
                                    Text("Brew his own using his reusable mug, but wash it afterwards.")
                                        .padding()
                                        .multilineTextAlignment(.leading)
                                        .foregroundStyle(Color(ColorsPath.brownTextChoice))
                                        .font(.custom(FontNames.poppinsBold, size: 18))
                                }
                        }
                    }
                    
                }
                .font(.custom(FontNames.poppinsRegular, size: 16))
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
                    Lunchtime! Terra joins the hungry crowd in the canteen, eager to chat with his friends
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

