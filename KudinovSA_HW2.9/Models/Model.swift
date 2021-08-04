//
//  Model.swift
//  KudinovSA_HW2.9
//
//  Created by Сергей Кудинов on 05.08.2021.
//

import Spring

struct Animation{
    
    var presets: String
    var curves: String
    
    static func getAnim() -> [Animation] {
        var animations = [Animation]()
        
        var presetsArray: [String] = []
        var curvesArray: [String] = []
        var minimumCountArrays = 0
        
        let animationsPresets = Spring.AnimationPreset.self
        let animationsCurves = Spring.AnimationCurve.self


        for animation in animationsPresets.allCases {
            presetsArray.append(animation.rawValue)
            print(animation.rawValue)
        }
        
        for curve in animationsCurves.allCases {
            curvesArray.append(curve.rawValue)
        }
        
        minimumCountArrays = min(presetsArray.count, curvesArray.count)
        
        curvesArray.shuffle()
        
        for index in 0..<minimumCountArrays {
            animations.append(Animation(presets: presetsArray[index], curves: curvesArray[index]))
        }
        
        return animations
    }
}
