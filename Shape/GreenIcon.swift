//
//  File.swift
//  
//
//  Created by Gregorius Yuristama Nugraha on 2/25/24.
//

import Foundation
import SwiftUI

struct GreenIcon: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.79233*width, y: 0.26862*height))
        path.addCurve(to: CGPoint(x: 0.57388*width, y: 0.32165*height), control1: CGPoint(x: 0.79233*width, y: 0.26862*height), control2: CGPoint(x: 0.69109*width, y: 0.2233*height))
        path.addCurve(to: CGPoint(x: 0.298*width, y: 0.30611*height), control1: CGPoint(x: 0.4788*width, y: 0.40143*height), control2: CGPoint(x: 0.35459*width, y: 0.39081*height))
        path.addCurve(to: CGPoint(x: 0.22685*width, y: 0.38074*height), control1: CGPoint(x: 0.28008*width, y: 0.31937*height), control2: CGPoint(x: 0.25488*width, y: 0.34233*height))
        path.addCurve(to: CGPoint(x: 0.20365*width, y: 0.38159*height), control1: CGPoint(x: 0.22103*width, y: 0.3887*height), control2: CGPoint(x: 0.20996*width, y: 0.3891*height))
        path.addLine(to: CGPoint(x: 0.19293*width, y: 0.36883*height))
        path.addCurve(to: CGPoint(x: 0.19258*width, y: 0.34726*height), control1: CGPoint(x: 0.18782*width, y: 0.36275*height), control2: CGPoint(x: 0.18766*width, y: 0.35353*height))
        path.addCurve(to: CGPoint(x: 0.32319*width, y: 0.22704*height), control1: CGPoint(x: 0.22418*width, y: 0.30703*height), control2: CGPoint(x: 0.27564*width, y: 0.25209*height))
        path.addCurve(to: CGPoint(x: 0.5798*width, y: 0.17571*height), control1: CGPoint(x: 0.46349*width, y: 0.15315*height), control2: CGPoint(x: 0.57843*width, y: 0.17545*height))
        path.addCurve(to: CGPoint(x: 0.269*width, y: 0.2231*height), control1: CGPoint(x: 0.57871*width, y: 0.17497*height), control2: CGPoint(x: 0.48084*width, y: 0.10951*height))
        path.addCurve(to: CGPoint(x: 0.26769*width, y: 0.18609*height), control1: CGPoint(x: 0.26769*width, y: 0.21139*height), control2: CGPoint(x: 0.26722*width, y: 0.19905*height))
        path.addCurve(to: CGPoint(x: 0.52496*width, y: 0.00507*height), control1: CGPoint(x: 0.27098*width, y: 0.09412*height), control2: CGPoint(x: 0.37674*width, y: -0.02627*height))
        path.addCurve(to: CGPoint(x: 0.79233*width, y: 0.26862*height), control1: CGPoint(x: 0.72123*width, y: 0.04659*height), control2: CGPoint(x: 0.79233*width, y: 0.26862*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.91427*width, y: 0.92149*height))
        path.addCurve(to: CGPoint(x: 0.5553*width, y: 0.97427*height), control1: CGPoint(x: 0.75906*width, y: 1.05748*height), control2: CGPoint(x: 0.5553*width, y: 0.97427*height))
        path.addCurve(to: CGPoint(x: 0.65732*width, y: 0.75939*height), control1: CGPoint(x: 0.5553*width, y: 0.97427*height), control2: CGPoint(x: 0.6524*width, y: 0.91942*height))
        path.addCurve(to: CGPoint(x: 0.84498*width, y: 0.54082*height), control1: CGPoint(x: 0.66132*width, y: 0.62957*height), control2: CGPoint(x: 0.74839*width, y: 0.53349*height))
        path.addCurve(to: CGPoint(x: 0.83733*width, y: 0.43412*height), control1: CGPoint(x: 0.847*width, y: 0.5175*height), control2: CGPoint(x: 0.84676*width, y: 0.48193*height))
        path.addCurve(to: CGPoint(x: 0.85158*width, y: 0.41437*height), control1: CGPoint(x: 0.83539*width, y: 0.42421*height), control2: CGPoint(x: 0.84219*width, y: 0.41478*height))
        path.addLine(to: CGPoint(x: 0.86754*width, y: 0.41365*height))
        path.addCurve(to: CGPoint(x: 0.88313*width, y: 0.42717*height), control1: CGPoint(x: 0.87514*width, y: 0.41331*height), control2: CGPoint(x: 0.88181*width, y: 0.41909*height))
        path.addCurve(to: CGPoint(x: 0.88521*width, y: 0.6123*height), control1: CGPoint(x: 0.89157*width, y: 0.4791*height), control2: CGPoint(x: 0.8978*width, y: 0.55688*height))
        path.addCurve(to: CGPoint(x: 0.75756*width, y: 0.85769*height), control1: CGPoint(x: 0.84807*width, y: 0.77579*height), control2: CGPoint(x: 0.75862*width, y: 0.85673*height))
        path.addCurve(to: CGPoint(x: 0.9227*width, y: 0.56993*height), control1: CGPoint(x: 0.75878*width, y: 0.85727*height), control2: CGPoint(x: 0.86807*width, y: 0.8181*height))
        path.addCurve(to: CGPoint(x: 0.94993*width, y: 0.59255*height), control1: CGPoint(x: 0.93189*width, y: 0.57634*height), control2: CGPoint(x: 0.94099*width, y: 0.58386*height))
        path.addCurve(to: CGPoint(x: 0.91427*width, y: 0.92149*height), control1: CGPoint(x: 1.01336*width, y: 0.65413*height), control2: CGPoint(x: 1.03148*width, y: 0.81879*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.44884*width, y: 0.95007*height))
        path.addLine(to: CGPoint(x: 0.44183*width, y: 0.96554*height))
        path.addCurve(to: CGPoint(x: 0.42337*width, y: 0.97387*height), control1: CGPoint(x: 0.43848*width, y: 0.9729*height), control2: CGPoint(x: 0.43059*width, y: 0.97648*height))
        path.addCurve(to: CGPoint(x: 0.2714*width, y: 0.88764*height), control1: CGPoint(x: 0.377*width, y: 0.95713*height), control2: CGPoint(x: 0.3106*width, y: 0.92597*height))
        path.addCurve(to: CGPoint(x: 0.13209*width, y: 0.64972*height), control1: CGPoint(x: 0.15575*width, y: 0.77453*height), control2: CGPoint(x: 0.13238*width, y: 0.65118*height))
        path.addCurve(to: CGPoint(x: 0.28809*width, y: 0.94335*height), control1: CGPoint(x: 0.13186*width, y: 0.65108*height), control2: CGPoint(x: 0.11172*width, y: 0.77334*height))
        path.addCurve(to: CGPoint(x: 0.25667*width, y: 0.95838*height), control1: CGPoint(x: 0.27848*width, y: 0.949*height), control2: CGPoint(x: 0.26801*width, y: 0.95405*height))
        path.addCurve(to: CGPoint(x: 0.0054*width, y: 0.76785*height), control1: CGPoint(x: 0.17622*width, y: 0.98916*height), control2: CGPoint(x: 0.0333*width, y: 0.92787*height))
        path.addCurve(to: CGPoint(x: 0.1334*width, y: 0.40247*height), control1: CGPoint(x: -0.03156*width, y: 0.55594*height), control2: CGPoint(x: 0.1334*width, y: 0.40247*height))
        path.addCurve(to: CGPoint(x: 0.26003*width, y: 0.60156*height), control1: CGPoint(x: 0.1334*width, y: 0.40247*height), control2: CGPoint(x: 0.13186*width, y: 0.52064*height))
        path.addCurve(to: CGPoint(x: 0.34886*width, y: 0.88356*height), control1: CGPoint(x: 0.364*width, y: 0.66721*height), control2: CGPoint(x: 0.40086*width, y: 0.79552*height))
        path.addCurve(to: CGPoint(x: 0.43952*width, y: 0.92716*height), control1: CGPoint(x: 0.36692*width, y: 0.8966*height), control2: CGPoint(x: 0.39604*width, y: 0.91332*height))
        path.addCurve(to: CGPoint(x: 0.44884*width, y: 0.95007*height), control1: CGPoint(x: 0.44854*width, y: 0.93003*height), control2: CGPoint(x: 0.45298*width, y: 0.94097*height))
        path.closeSubpath()
        return path
    }
}
