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
    
    @State var stageSelectImageAssets: StageSelectImageAssets = StageSelectImageAssets()
    
    var body: some Scene {
        WindowGroup {
            SetupView()
                
        }
        .environment(stageSelectImageAssets)
    }
}






struct SetupView: View {
    
    @Environment(StageSelectImageAssets.self) var stageSelectImageAssets: StageSelectImageAssets
    
    @State var viewSize: CGSize? = nil
    
    @State var isLoading: Bool = true
    
    var body: some View {
        
        ZStack {
            if isLoading {
                ActivityIndicatorView()
                    .onGeometryChange(for: CGSize.self) { geometryProxy in
                        return geometryProxy.size
                    } action: { newValue in
                        
                        Task { @MainActor in
                            
                            try await Task.sleep(for: .seconds(1))
                            print("1")
                            
                            try await Task.sleep(for: .seconds(1))
                            print("2")
                            
                            try await Task.sleep(for: .seconds(1))
                            print("3")
                            
                            await fetchImageFor(stage: .firstStage)
                            await fetchImageFor(stage: .secondStage)
                            
                            viewSize = newValue
                        }
                    }
                    .onChange(of: viewSize) {
                        if viewSize != nil {
                            isLoading = false
                        }
                    }
                
            } else {
                ContentView()
                
            }
            
            Image(uiImage: stageSelectImageAssets.getImage(forStage: .firstStage))
            
        }

    }
    
    func fetchImageFor(stage: NullaStageEnum) async {
        
        guard let url = Bundle.main.url(forResource: stage.fileName, withExtension: stage.fileExtension) else { return }
        
        

        do {
            
            let scene: SCNScene
            scene = try SCNScene(url: url)
            
            let sceneView: SCNView = .init(frame: .init(x: 0, y: 0, width: 300, height: 300))
            sceneView.autoenablesDefaultLighting = true
            
            sceneView.scene = scene
            sceneView.contentScaleFactor = 3
            let img: UIImage = sceneView.snapshot()
            
            stageSelectImageAssets.setImage(forStage: stage, image: img)
            
        } catch {
            
        }
        
        
        

    }
    
}




struct ContentView: View {
    @State var imagem: Image? = nil
    
    var body: some View {
        VStack {
            Text("aaaa")
            if let imagem = imagem {
                imagem
            }
        }
        .onAppear {
            let sceneView: SCNView = .init(frame: .init(x: 0, y: 0, width: 300, height: 300))
            sceneView.scene = BackgroundScene()
            sceneView.contentScaleFactor = 3
            let img: UIImage = sceneView.snapshot()
            imagem = Image(uiImage: img)
        }
    }
}


#Preview {
    SetupView()
        .ignoresSafeArea()
        .environment(StageSelectImageAssets())
    //    let vc = ContentView()
    //    return vc
    //    ContentView()
}




