//
//  SwiftUIView.swift
//  
//
//  Created by Gregorius Yuristama Nugraha on 2/25/24.
//

import SwiftUI

struct TitleBox: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 34)
                .foregroundStyle(Color(ColorsPath.blueColorBox))
            
            RoundedRectangle(cornerRadius: 34)
                .stroke(Color(ColorsPath.blueTitleStroke), lineWidth: 10)
        }
        .frame(width: 571, height: 171)
    }
}

