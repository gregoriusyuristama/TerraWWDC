//
//  SwiftUIView.swift
//  
//
//  Created by Gregorius Yuristama Nugraha on 2/25/24.
//

import SwiftUI

struct CloseButton: View {
    
    var action: () -> ()
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                Ellipse()
                    .foregroundStyle(Color(ColorsPath.brownDialogBox))
                
                Ellipse()
                    .stroke(Color(ColorsPath.brownDialogBoxStroke), lineWidth: 10)
                Text("X")
                    .font(.custom(FontNames.poppinsBold, size: 36))
                    .foregroundStyle(Color(ColorsPath.terraWhite))
            }
        }
        .frame(width: 53, height: 54)
    }
}

