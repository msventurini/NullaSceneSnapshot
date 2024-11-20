//
//  StageDetailView.swift
//  NullaSceneSnapshot
//
//  Created by Matheus Silveira Venturini on 20/11/24.
//


import SwiftUI
import SceneKit.ModelIO

struct StageDetailView: View {
    let stage: NullaStageEnum

    var body: some View {
        Text(stage.rawValue.description)
            .font(.largeTitle)
    }
}