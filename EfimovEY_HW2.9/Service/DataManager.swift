//
//  DataManager.swift
//  EfimovEY_HW2.9
//
//  Created by User on 04.08.2021.
//

import Spring

class DataManager {
    static let shared = DataManager()

    let arrayValueCGFloat: [CGFloat] = [0.0, 0.3, 0.5, 1, 0.7, 0.6, 0.4]
}
    enum Preset: CaseIterable {
        case slideLeft
        case slideRight
        case slideDown
        case slideUp
        case squeezeLeft
        case squeezeRight
        case squeezeDown
        case squeezeUp
        case fadeIn
        case fadeOut
        case fadeOutIn
        case fadeInLeft
        case fadeInRight
        case fadeInDown
        case fadeInUp
        case zoomIn
    }

    enum Curve: CaseIterable {
        case easeIn
        case easeOut
        case easeInOut
        case linear
        case spring
        case easeInSine
        case easeOutSine
        case easeInOutSine
        case easeInQuad
        case easeOutQuad
        case easeInOutQuad
        case easeInCubic
        case easeOutCubic
        case easeInOutCubic
        case easeInQuart
        case easeOutQuart
        case easeInOutQuart
        case easeInQuint
        case easeOutQuint
        case easeInOutQuint
        case easeInExpo
        case easeOutExpo
    }


