//
//  SwiftUIView.swift
//  
//
//  Created by Gregorius Yuristama Nugraha on 2/25/24.
//

import SwiftUI

struct DialogBox: View {
    var overlay: AnyView
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: 60)
                    .foregroundStyle(Color(ColorsPath.brownDialogBox))
                
                RoundedRectangle(cornerRadius: 60)
                    .stroke(Color(ColorsPath.brownDialogBoxStroke), lineWidth: 10)
            }
            .frame(width: 1000, height: 333)
                .overlay {
                    overlay
                }
        }
        .padding(.bottom, 40)
        
    }
}

