//
//  LowerSand.swift
//  Hourglass
//
//  Created by Herman Christiansen on 22/08/2022.
//

import SwiftUI

struct LowerSand: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: width, y: 0.17389*height))
        path.addLine(to: CGPoint(x: width, y: 0.60696*height))
        path.addCurve(to: CGPoint(x: 0.89449*width, y: 0.76122*height), control1: CGPoint(x: width, y: 0.67407*height), control2: CGPoint(x: 0.95121*width, y: 0.72183*height))
        path.addLine(to: CGPoint(x: 0.55889*width, y: 0.9707*height))
        path.addCurve(to: CGPoint(x: 0.44111*width, y: 0.9707*height), control1: CGPoint(x: 0.49723*width, y: 1.00931*height), control2: CGPoint(x: 0.5095*width, y: 1.01026*height))
        path.addLine(to: CGPoint(x: 0.10557*width, y: 0.76128*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.60696*height), control1: CGPoint(x: 0.05034*width, y: 0.72331*height), control2: CGPoint(x: 0, y: 0.67407*height))
        path.addLine(to: CGPoint(x: 0, y: 0.17389*height))
        path.addCurve(to: CGPoint(x: 0.19589*width, y: 0), control1: CGPoint(x: 0, y: 0.07785*height), control2: CGPoint(x: 0.0877*width, y: 0))
        path.addLine(to: CGPoint(x: 0.80411*width, y: 0))
        path.addCurve(to: CGPoint(x: width, y: 0.17389*height), control1: CGPoint(x: 0.9123*width, y: 0), control2: CGPoint(x: width, y: 0.07785*height))
        path.closeSubpath()
        return path
    }
}
