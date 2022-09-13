//
//  UpperSand.swift
//  Hourglass
//
//  Created by Herman Christiansen on 22/08/2022.
//

import SwiftUI

struct UpperSand: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: width, y: 0.82611*height))
        path.addLine(to: CGPoint(x: width, y: 0.39309*height))
        path.addCurve(to: CGPoint(x: 0.89449*width, y: 0.23883*height), control1: CGPoint(x: width, y: 0.32598*height), control2: CGPoint(x: 0.95121*width, y: 0.27823*height))
        path.addLine(to: CGPoint(x: 0.55889*width, y: 0.0293*height))
        path.addCurve(to: CGPoint(x: 0.44111*width, y: 0.0293*height), control1: CGPoint(x: 0.49723*width, y: -0.00931*height), control2: CGPoint(x: 0.5095*width, y: -0.01026*height))
        path.addLine(to: CGPoint(x: 0.10557*width, y: 0.23878*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.39309*height), control1: CGPoint(x: 0.05034*width, y: 0.27675*height), control2: CGPoint(x: 0, y: 0.32593*height))
        path.addLine(to: CGPoint(x: 0, y: 0.82617*height))
        path.addCurve(to: CGPoint(x: 0.19589*width, y: 1.00005*height), control1: CGPoint(x: 0, y: 0.92221*height), control2: CGPoint(x: 0.0877*width, y: 1.00005*height))
        path.addLine(to: CGPoint(x: 0.80411*width, y: 1.00005*height))
        path.addCurve(to: CGPoint(x: width, y: 0.82617*height), control1: CGPoint(x: 0.9123*width, y: 1.00005*height), control2: CGPoint(x: width, y: 0.92221*height))
        path.closeSubpath()
        return path
    }
}
