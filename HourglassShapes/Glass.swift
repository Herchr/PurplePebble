//
//  Glass.swift
//  Hourglass
//
//  Created by Herman Christiansen on 22/08/2022.
//

import SwiftUI

struct Glass: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.55732*width, y: 0.49893*height))
        path.addCurve(to: CGPoint(x: 0.5538*width, y: 0.50001*height), control1: CGPoint(x: 0.55615*width, y: 0.4993*height), control2: CGPoint(x: 0.55497*width, y: 0.49967*height))
        path.addCurve(to: CGPoint(x: 0.55732*width, y: 0.5011*height), control1: CGPoint(x: 0.55497*width, y: 0.50036*height), control2: CGPoint(x: 0.55615*width, y: 0.50073*height))
        path.addLine(to: CGPoint(x: 0.8837*width, y: 0.60734*height))
        path.addCurve(to: CGPoint(x: 0.98666*width, y: 0.68573*height), control1: CGPoint(x: 0.94084*width, y: 0.62831*height), control2: CGPoint(x: 0.98666*width, y: 0.65165*height))
        path.addLine(to: CGPoint(x: 0.98666*width, y: 0.90558*height))
        path.addCurve(to: CGPoint(x: 0.796*width, y: 0.99383*height), control1: CGPoint(x: 0.98666*width, y: 0.95431*height), control2: CGPoint(x: 0.90131*width, y: 0.99383*height))
        path.addLine(to: CGPoint(x: 0.204*width, y: 0.99383*height))
        path.addCurve(to: CGPoint(x: 0.01334*width, y: 0.90558*height), control1: CGPoint(x: 0.09869*width, y: 0.99383*height), control2: CGPoint(x: 0.01334*width, y: 0.95431*height))
        path.addLine(to: CGPoint(x: 0.01334*width, y: 0.68573*height))
        path.addCurve(to: CGPoint(x: 0.11635*width, y: 0.60732*height), control1: CGPoint(x: 0.01334*width, y: 0.65163*height), control2: CGPoint(x: 0.06156*width, y: 0.62705*height))
        path.addLine(to: CGPoint(x: 0.44268*width, y: 0.5011*height))
        path.addCurve(to: CGPoint(x: 0.4462*width, y: 0.50001*height), control1: CGPoint(x: 0.44385*width, y: 0.50073*height), control2: CGPoint(x: 0.44503*width, y: 0.50036*height))
        path.addCurve(to: CGPoint(x: 0.44268*width, y: 0.49893*height), control1: CGPoint(x: 0.44503*width, y: 0.49967*height), control2: CGPoint(x: 0.44385*width, y: 0.4993*height))
        path.addLine(to: CGPoint(x: 0.1163*width, y: 0.39266*height))
        path.addCurve(to: CGPoint(x: 0.01334*width, y: 0.31427*height), control1: CGPoint(x: 0.0614*width, y: 0.37287*height), control2: CGPoint(x: 0.01334*width, y: 0.34837*height))
        path.addLine(to: CGPoint(x: 0.01334*width, y: 0.09444*height))
        path.addCurve(to: CGPoint(x: 0.204*width, y: 0.00617*height), control1: CGPoint(x: 0.01334*width, y: 0.04569*height), control2: CGPoint(x: 0.09869*width, y: 0.00617*height))
        path.addLine(to: CGPoint(x: 0.796*width, y: 0.00617*height))
        path.addCurve(to: CGPoint(x: 0.98666*width, y: 0.09444*height), control1: CGPoint(x: 0.90131*width, y: 0.00617*height), control2: CGPoint(x: 0.98666*width, y: 0.04569*height))
        path.addLine(to: CGPoint(x: 0.98666*width, y: 0.31427*height))
        path.addCurve(to: CGPoint(x: 0.8837*width, y: 0.39266*height), control1: CGPoint(x: 0.98666*width, y: 0.34837*height), control2: CGPoint(x: 0.94126*width, y: 0.37144*height))
        path.addLine(to: CGPoint(x: 0.55732*width, y: 0.49893*height))
        path.closeSubpath()
        return path
    }
}
