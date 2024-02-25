//
//  SwiftUIView.swift
//  
//
//  Created by Gregorius Yuristama Nugraha on 2/25/24.
//

import SwiftUI

struct PopupBox: View {
    var closeAction: () -> ()
    var width: CGFloat = 581
    var height: CGFloat = 537
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 60)
                .foregroundStyle(Color(ColorsPath.brownDialogBox))
            
            RoundedRectangle(cornerRadius: 60)
                .stroke(Color(ColorsPath.brownDialogBoxStroke), lineWidth: 10)
            
            ZStack {
                VStack {
                    HStack {
                        Spacer()
                        CloseButton(action: closeAction)
                    }
                    Spacer()
                }
            }
        }
        .frame(width: width, height: height)
    }
}

