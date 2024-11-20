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
                NavigationLink(stage.rawValue.description) {
                    StageDetailView(stage: stage)
                }
            }
        }
    }
}

#Preview(traits: .modifier(PreviewHelper())) {
    ContentView()
}
