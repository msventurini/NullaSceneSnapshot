//
//  NullaSceneSnapshotApp.swift
//  NullaSceneSnapshot
//
//  Created by Matheus Silveira Venturini on 19/11/24.
//

import SwiftUI
import SceneKit.ModelIO

@main
struct NullaSceneSnapshotApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .stageSelectImagesEnvironmentAssets()
            
        }
    }
}


#Preview(traits: .modifier(PreviewHelper())) {
    ContentView()
}
