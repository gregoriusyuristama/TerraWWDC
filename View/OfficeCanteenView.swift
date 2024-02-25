//
//  SwiftUIView.swift
//  
//
//  Created by Gregorius Yuristama Nugraha on 2/25/24.
//

import SwiftUI

struct OfficeCanteenView: View {
    @State var counter = 0
    @State var popupIsShowed = true
    @State var popupText = ""
    var body: some View {
        ZStack {
            Image(ResourcePath.officeCanteen)
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            if popupIsShowed {
                PopupBox {
                    popupIsShowed = false
                }
                .overlay {
                    Text(popupText)
                        .font(.custom(FontNames.poppinsBold, size: 28))
                        .foregroundStyle(Color(ColorsPath.terraWhite))
                        .padding()
                }
            } else {
                if counter == 0 {
                    firstChoiceBox
                } else if counter == 1 {
                    goHomeBox
                }
            }
            
        }
        .ignoresSafeArea()
        .onAppear {
            if ChoiceState.shared.isWakeupEarly {
                popupText =
                """
                Terra's early start unlocks a hidden perk! With extra time, he crafts a delicious lunch, perfectly packed in his reusable container. Plus, his trusty water bottle keeps him hydrated all day, all while reducing waste. Who knew a simple choice could be so sustainable?
                """
                ChoiceState.shared.sustainableScore += 2
            } else {
                popupText =
                """
                Terra just realized! Waking up late meant no time to pack lunch and his water bottle is nowhere to be found. He grabs a quick bite and a drink, but the waste weighs heavy on his conscience. Maybe tomorrow, an earlier start will lead to a more sustainable choice.
                """
                ChoiceState.shared.sustainableScore -= 2
            }
        }
    }
    
    private var firstChoiceBox: some View {
        VStack {
            Spacer()
            DialogBox(overlay: VStack {
                Text(
                    """
                    After a productive day, Terra has some free time.
                    A decision awaits:
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
                                Text("Dive into engaging mobile games with friends")
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
                        popupText =
                        """
                        Power down, power up!
                        Choosing to play cards with friends instead of using your phone is a double win. You're not only getting some healthy exercise, but you're also saving energy and reducing your screen time. Way to go for a mindful and active choice!
                        """
                        popupIsShowed = true
                        AudioManager.shared.playSoundEffect(fileName: MusicPath.ding)
                    } label: {
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color(ColorsPath.brownChoiceBox))
                            .frame(width: 397, height: 117)
                            .overlay {
                                Text("Gather in the communal room for a lively game of cards")
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
    
    private var goHomeBox: some View {
        VStack {
            Spacer()
            DialogBox(overlay: VStack {
                Text(
                    """
                    Lunch and activities done! The sun sets, painting the sky orange and gold. Time to head home from Apple Academy, carrying a smile and a day's worth of experiences.
                    """
                )
                .padding(.top, 80)
                .font(.custom(FontNames.poppinsBold, size: 28))
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
