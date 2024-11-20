//
//  StageSelectImageAssets.swift
//  NullaSceneSnapshot
//
//  Created by Matheus Silveira Venturini on 20/11/24.
//


import SwiftUI
import SceneKit.ModelIO

@Observable final class StageSelectImageAssets {
    
    enum DebugInfo {
        case imageFromMemory
        case imageWasRenderedNow
        
        var details: String {
            switch self {
            case .imageFromMemory:
                "loaded from memory"
            case .imageWasRenderedNow:
                "rendered now"
            }
        }
    }
    
    var firstStageImage: UIImage?
    var secondStageImage: UIImage?
    var stageSelectionImageLoadingWasDone: Bool = false

    var debugInfo: DebugInfo
    
    var viewSize: CGSize? = nil
    
    var isLoading: Bool = true
    
    init(firstStageImage: UIImage? = nil, secondStageImage: UIImage? = nil) {
        
        
        
        self.firstStageImage = firstStageImage
        self.secondStageImage = secondStageImage
        
        if firstStageImage != nil && secondStageImage != nil {
            debugInfo = .imageFromMemory
        } else {
            debugInfo = .imageWasRenderedNow
        }
        
        
        
    }
    
    func getUIImage(forStage stage: NullaStageEnum) -> UIImage {
        switch stage {
        case .firstStage:
            
            guard let firstStageImage = firstStageImage else {
                return StageSelectImageAssets.getPlaceHolderImage()//placeHolderImage
            }
            return firstStageImage
            
        case .secondStage:
            guard let secondStageImage = secondStageImage else {
                return StageSelectImageAssets.getPlaceHolderImage()
            }
            return secondStageImage
        }
    }
    
    func getImage(forStage stage: NullaStageEnum) -> Image {
        
        return Image(uiImage: getUIImage(forStage: stage))
        
    }
    
    func setImage(forStage stage: NullaStageEnum, image: UIImage?) {
        switch stage {
        case .firstStage:
            firstStageImage = image
        case .secondStage:
            secondStageImage = image
        }
    }
    
    
    static func getPlaceHolderImage() -> UIImage {
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 200, height: 200))
        
        let img = renderer.image { (context) in
            UIColor.darkGray.setStroke()
            
            UIColor.yellow.setFill()
            context.fill(CGRect(x: 1, y: 1, width: 200, height: 200))
        }
        
        return img
    }
    
}
