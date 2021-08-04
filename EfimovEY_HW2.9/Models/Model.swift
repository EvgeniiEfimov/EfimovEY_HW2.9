//
//  Model.swift
//  EfimovEY_HW2.9
//
//  Created by User on 04.08.2021.
//

import Spring

struct ModelAnimation {
    
    let preset: Preset
    let curve:  Curve
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat

    static func animate() -> [ModelAnimation] {
        var arrayModelAnimation: [ModelAnimation] = []
        while arrayModelAnimation.count < 10 {
            arrayModelAnimation.append(
                ModelAnimation(preset: Preset.allCases.randomElement() ?? Preset.fadeIn,
                               curve: Curve.allCases.randomElement() ?? Curve.easeIn,
    force:
    DataManager.shared.arrayValueCGFloat[Int.random(in:0..<DataManager.shared.arrayValueCGFloat.count)],
    duration:
    DataManager.shared.arrayValueCGFloat[Int.random(in:0..<DataManager.shared.arrayValueCGFloat.count)],
    delay:
    DataManager.shared.arrayValueCGFloat[Int.random(in:0..<DataManager.shared.arrayValueCGFloat.count)]))
        }
        return arrayModelAnimation
    }
}
