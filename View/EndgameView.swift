//
//  SwiftUIView.swift
//
//
//  Created by Gregorius Yuristama Nugraha on 2/25/24.
//

import SwiftUI

struct EndgameView: View {
    @State var popupIsShowed = false
    @State var popupText = ""
    @State var popupTitle = ""
    var body: some View {
        ZStack {
            Image(ResourcePath.startMenu)
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            Rectangle()
                .fill(.black)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .opacity(0.6)
            Group {
                
                if popupIsShowed {
                    PopupBox(closeAction: {
                        popupIsShowed = false
                    },
                             width: 650,
                             height: 580
                    )
                    .overlay {
                        VStack {
                            Text(popupTitle)
                                .font(.custom(FontNames.poppinsBold, size: 28))
                                .foregroundStyle(Color(ColorsPath.terraWhite))
                            ScrollView {
                                Text(.init(popupText))
                                    .font(.custom(FontNames.poppinsRegular, size: 24))
                                    .foregroundStyle(Color(ColorsPath.terraWhite))
                            }
                            
                            Spacer()
                        }
                        .padding()
                    }
                }else {
                    VStack {
                        HStack {
                            Button {
                                popupIsShowed = true
                                popupTitle = "Credits\n"
                                popupText = .init(
                                """
                                Night bedroom background: [www.freepik.com](https://www.freepik.com/free-vector/bedroom-interior-night-with-moonlight-cartoon_6428812.htm#fromView=search&page=1&position=45&uuid=3550902b-5654-4cd0-b39c-5b8a18f81c39)
                                Kitchen background: [www.freepik.com](https://www.freepik.com/free-vector/cartoon-illustration-cozy-modern-kitchen-with-dinner-table-household-appliances_2890963.htm#fromView=search&page=1&position=2&uuid=c25b925c-b857-41ca-b518-c39e24b59535)
                                Outside house background: [www.freepik.com](https://www.freepik.com/free-vector/suburban-cottage-residential-house-with-garage_7101612.htm#fromView=search&page=1&position=2&uuid=834f7eeb-6e76-400b-b295-2b2d476abb5d)
                                Office background: [www.freepik.com](https://www.freepik.com/free-vector/suburban-cottage-residential-house-with-garage_7101612.htm#fromView=search&page=1&position=2&uuid=834f7eeb-6e76-400b-b295-2b2d476abb5d)
                                Canteen background: [www.freepik.com](https://www.freepik.com/free-vector/people-sitting-cafe_5147410.htm#fromView=search&page=1&position=4&uuid=b1824942-7946-428c-8e96-8b7c3af0f544)
                                Start game background: [www.freepik.com](https://www.freepik.com/free-vector/illustration-human-avatar-with-environment_2803064.htm#fromView=search&page=1&position=6&uuid=2f9d41ec-c532-440a-970a-235f3d05698e)
                                Green leaf graphic: [www.freepik.com](https://www.freepik.com/free-vector/green-leaf-recycle-sign_37408952.htm#fromView=search&page=1&position=3&uuid=0ac5a937-dc1e-432f-8230-7acc900d0572)
                                Adventure upbeat music: [www.pixabay.com](https://cdn.pixabay.com/download/audio/2023/01/13/audio_e1efc6ce50.mp3?filename=spring-upbeat-133219.mp3)
                                Alarm sound effect: [www.pixabay.com](https://cdn.pixabay.com/download/audio/2021/08/04/audio_c668156e64.mp3?filename=alarm-clock-short-6402.mp3)
                                Showering sound effect: [www.pixabay.com](https://cdn.pixabay.com/download/audio/2022/01/18/audio_9eb4044fbc.mp3?filename=shower-14461.mp3)
                                Snoring sound effect: [www.pixabay.com](https://cdn.pixabay.com/download/audio/2021/09/18/audio_283091368e.mp3?filename=snoring-8486.mp3)
                                Congratulations sound effect: [www.pixabay.com](https://pixabay.com/sound-effects/tada-fanfare-a-6313/)
                                Negative beep sound effect: [www.pixabay.com](https://pixabay.com/sound-effects/negative-beeps-6008/)
                                Ding sound effect: [www.pixabay.com](https://pixabay.com/sound-effects/ding-idea-40142/)
                                """
                                )
                                
                            } label: {
                                CustomizableDialogBox(width: 154, height: 63)
                                    .overlay {
                                        Text("Credits")
                                            .font(.custom(FontNames.poppinsBold, size: 20))
                                            .foregroundStyle(Color(ColorsPath.terraWhite))
                                    }
                            }
                            
                            Spacer()
                            Button {
                                popupIsShowed = true
                                popupTitle = "Fun Fact\n"
                                popupText =
                                """
                                Terra: Latin for "Earth," signifying the interconnectedness of humans and the planet.
                                
                                Terra's journey began as a reflection of my own at Apple Developer Academy. Witnessing how everyday choices, from the moment we wake up, ripple outwards, impacting both ourselves and the world around us. Through Terra's story, I hope to inspire players to embrace mindful decisions, understanding the domino effect they have on our environment. Together, let's create a more sustainable future, one choice at a time.
                                """
                            } label: {
                                CustomizableDialogBox(width: 154, height: 63)
                                    .overlay {
                                        Text("Fun Fact")
                                            .font(.custom(FontNames.poppinsBold, size: 20))
                                            .foregroundStyle(Color(ColorsPath.terraWhite))
                                    }
                            }
                        }
                        
                        Spacer()
                        
                        CustomizableDialogBox(width: 565, height: 281)
                            .overlay {
                                VStack {
                                    Text("Your Sustainable score is: ")
                                        .font(.custom(FontNames.poppinsBold, size: 36))
                                        .foregroundStyle(Color(ColorsPath.terraWhite))
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(Color(ColorsPath.terraWhite))
                                        .frame(width: 183, height: 87)
                                        .overlay {
                                            HStack {
                                                GreenIcon()
                                                    .fill(isSustainablyFriendly() ? Color(ColorsPath.greenSustainable) : Color(ColorsPath.redNotSustainable))
                                                    .frame(width: 62, height: 59)
                                                Spacer()
                                                Group {
                                                    if isSustainablyFriendly() {
                                                        Text("+\(ChoiceState.shared.sustainableScore)")
                                                    } else {
                                                        Text("\(ChoiceState.shared.sustainableScore)")
                                                    }
                                                }
                                                .font(.custom(FontNames.poppinsBold, size: 36))
                                                .foregroundStyle(isSustainablyFriendly() ? Color(ColorsPath.greenSustainable) : Color(ColorsPath.redNotSustainable))
                                                
                                            }
                                            .padding(.leading, 15)
                                            .padding(.trailing, 30)
                                        }
                                    Group {
                                        if isSustainablyFriendly() {
                                            if ChoiceState.shared.sustainableScore < 5 {
                                                Text("You are sustainably friendly, but you can do more !")
                                            } else {
                                                Text("You are sustainably friendly !")
                                            }
                                            
                                        } else {
                                            Text("Try to be more sustainably friendly !")
                                        }
                                    }
                                    .foregroundStyle(Color(ColorsPath.terraWhite))
                                    .font(.custom(FontNames.poppinsRegular, size: 20))
                                    
                                    
                                }
                            }
                        
                        Spacer()
                        
                        NavigationLink {
                            StartMenuView()
                                .navigationBarBackButtonHidden()
                        } label: {
                            CustomizableDialogBox(width: 290, height: 97)
                                .overlay(content: {
                                    Text("Play Again")
                                        .font(.custom(FontNames.poppinsBold, size: 36))
                                        .foregroundStyle(Color(ColorsPath.terraWhite))
                                })
                        }
                        .frame(width: 290, height: 97)
                        
                    }
                }
            }
            .padding(.top, 43)
            .padding(.bottom, 133)
            .padding(.horizontal, 50)
        }
        .onAppear(perform: {
            if isSustainablyFriendly() {
                AudioManager.shared.playSoundEffect(fileName: MusicPath.congrats)
            } else {
                AudioManager.shared.playSoundEffect(fileName: MusicPath.negative)
            }
        })
        .ignoresSafeArea()
    }
    
    private func isSustainablyFriendly() -> Bool {
        if ChoiceState.shared.sustainableScore < 0 {
            return false
        } else {
            return true
        }
    }
}

