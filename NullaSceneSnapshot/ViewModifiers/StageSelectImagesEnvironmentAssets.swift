//
//  StageSelectImagesEnvironmentAssets.swift
//  NullaSceneSnapshot
//
//  Created by Matheus Silveira Venturini on 20/11/24.
//


import SwiftUI
import SceneKit

struct StageSelectImagesEnvironmentAssets: ViewModifier {
    
    @Environment(\.displayScale) var displayScale: CGFloat

    
    @State var stageSelectImageAssets: StageSelectImageAssets = StageSelectImageAssets()
    
    func body(content: Content) -> some View {
        if stageSelectImageAssets.isLoading {
            ActivityIndicatorView()
            
                .onGeometryChange(for: CGSize.self) { geometryProxy in
                    return geometryProxy.size
                } action: { newValue in
                    
                    Task { @MainActor in
                        
                        await fetchImageFor(stage: .firstStage, forFrame: .init(origin: .init(x: 0, y: 0), size: newValue))
                        await fetchImageFor(stage: .secondStage, forFrame: .init(origin: .init(x: 0, y: 0), size: newValue))
                        
                        stageSelectImageAssets.viewSize = newValue
                    }
                }
                .onChange(of: stageSelectImageAssets.viewSize) { oldValue, newValue in
                    if newValue != nil {
                        stageSelectImageAssets.isLoading = false
                    }
                }
        } else {
            content
        }
        
    }
    
    func fetchImageFor(stage: NullaStageEnum, forFrame frame: CGRect) async {
        
        guard let url = Bundle.main.url(forResource: stage.fileName, withExtension: stage.fileExtension) else { return }
        do {
            let scene: SCNScene
            scene = try SCNScene(url: url)
            
            let sceneView: SCNView = .init(frame: frame)
            sceneView.autoenablesDefaultLighting = true
            
            sceneView.scene = scene
            sceneView.contentScaleFactor = displayScale
            let img: UIImage = sceneView.snapshot()
            
            stageSelectImageAssets.setImage(forStage: stage, image: img)
            
        } catch {
            print("erro ao carregar o asset")
        }
    }
    
    
}
