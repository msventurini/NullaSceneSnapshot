//
//  StageDetailView.swift
//  NullaSceneSnapshot
//
//  Created by Matheus Silveira Venturini on 20/11/24.
//


import SwiftUI
import SceneKit.ModelIO

struct StageDetailView: View {    
    @Environment(\.stageSelectAssets) var stageSelectAssets

    let stage: NullaStageEnum

    var body: some View {
        stageSelectAssets.getImage(forStage: stage)
            .resizable()
            .scaledToFit()
    }
}

#Preview(traits: .modifier(PreviewHelper())) {
    
    StageDetailView(stage: .firstStage)
    
}
