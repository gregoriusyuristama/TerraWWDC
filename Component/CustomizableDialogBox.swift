//
//  SwiftUIView.swift
//  
//
//  Created by Gregorius Yuristama Nugraha on 2/25/24.
//

import SwiftUI

struct CustomizableDialogBox: View {
    
    var foregroundColor = Color(ColorsPath.brownDialogBox)
    var strokeColor = Color(ColorsPath.brownDialogBoxStroke)
    var lineWidth: CGFloat = 10
    var cornerRadius: CGFloat = 60
    
    var width: CGFloat = 1000
    var height: CGFloat = 333
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius)
                .foregroundStyle(foregroundColor)
            
            RoundedRectangle(cornerRadius: cornerRadius)
                .stroke(strokeColor, lineWidth: lineWidth)
        }
        .frame(width: width, height: height)
    }
}

