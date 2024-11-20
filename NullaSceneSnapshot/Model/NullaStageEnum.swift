//
//  NullaStageEnum.swift
//  NullaSceneSnapshot
//
//  Created by Matheus Silveira Venturini on 20/11/24.
//


import SwiftUI
import SceneKit.ModelIO

enum NullaStageEnum: Int, Identifiable, Hashable, CaseIterable {
    
    var id: Self {
        return self
    }
    
    case firstStage  = 0
    case secondStage = 1
    
    var fileName: String {
        switch self {
        case .firstStage:
            return "Nulla-Idle"
        case .secondStage:
            return "Semente"
        }
    }
    
    var fileExtension: String {
        return "usdz"
    }
    
}
