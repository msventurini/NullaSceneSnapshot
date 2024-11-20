//
//  ContentView.swift
//  NullaSceneSnapshot
//
//  Created by Matheus Silveira Venturini on 20/11/24.
//


import SwiftUI
import SceneKit.ModelIO

struct ContentView: View {
    @State private var path = NavigationPath()

    var body: some View {
        NavigationStack {
            List(NullaStageEnum.allCases) { stage in
                NavigationLink(stage.stageTitle) {
                    StageDetailView(stage: stage)
                        .navigationTitle(stage.stageTitle)
                }
                .navigationTitle("Stage Select")
            }
        }
        .toolbarBackground(.visible, for: .navigationBar)
    }
}

#Preview(traits: .modifier(PreviewHelper())) {
    ContentView()
}
