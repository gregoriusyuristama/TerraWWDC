//
//  SwiftUIView.swift
//
//
//  Created by Gregorius Yuristama Nugraha on 2/25/24.
//

import SwiftUI

struct StartMenuView: View {
    var body: some View {
        ZStack {
            Image(ResourcePath.startMenu)
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            VStack {
                TitleBox()
                    .overlay {
                        Text("Terra's Life")
                            .font(.custom(FontNames.poppinsBold, size: 64))
                            .foregroundStyle(Color(ColorsPath.terraWhite))
                    }
                Text("Start your journey as Terra !")
                    .font(.custom(FontNames.poppinsBold, size: 36))
                    .foregroundStyle(Color(ColorsPath.terraWhite))
                    .shadow(radius: 4, y: 4)
                
                Spacer()
                
                NavigationLink {
                    WakeupView()
                        .navigationBarBackButtonHidden()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 40)
                            .foregroundStyle(Color(ColorsPath.brownDialogBox))
                        
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color(ColorsPath.brownDialogBoxStroke), lineWidth: 10)
                    }
                    .overlay(content: {
                        Text("PLAY")
                            .font(.custom(FontNames.poppinsBold, size: 36))
                            .foregroundStyle(Color(ColorsPath.terraWhite))
                    })
                }
                .frame(width: 290, height: 97)
                
            }
            .padding(.top, 56)
            .padding(.bottom, 70)
        }
        .onAppear(perform: {
            ChoiceState.shared.resetAll()
        })
        .ignoresSafeArea()
    }
}

