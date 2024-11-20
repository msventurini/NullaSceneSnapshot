//
//  PreviewHelper.swift
//  NullaSceneSnapshot
//
//  Created by Matheus Silveira Venturini on 20/11/24.
//


import SwiftUI
import SceneKit.ModelIO

struct PreviewHelper: PreviewModifier {
    public struct EnvironmentThings {
        
    }
    
    static func makeSharedContext() throws -> EnvironmentThings {
        let environmentContext = EnvironmentThings()
        return environmentContext
    }
    
    func body(content: Content, context: EnvironmentThings) -> some View {
        content
            .stageSelectImagesEnvironmentAssets()
    }
    
}