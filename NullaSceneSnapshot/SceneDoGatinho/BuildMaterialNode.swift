//
//  BuildMaterialNode.swift
//  teste3dScreenShot
//
//  Created by Matheus Silveira Venturini on 19/11/24.
//


import SwiftUI
import SceneKit

enum BuildMaterialNode {
    case concrete
    case brick4x2x4
    case brick5dot5x2x12dot5
    case brick4x2x10dot5
    case brick5dot5x2x10dot5
    case brick5dot5x2x4
    
    case whitePillar5x5x5
    case whitePillar5x15x5
    
    case whiteSideWall5x5x30
    
    case whiteSideWall5x15x30
    case whiteBackWall45x15x5
    case whiteBackWall45x5x5
    
    case whiteGround55x5x30
    
//    case ceilDecorationTube0x2dot5x45
    case ceilDecorationRect45x5x22dot5
    
    case glass5x5
    case glass20x15
    
    case grayCube5x5x5
    
    case grassFloor20x1x30
    
    case trunk1x30
    case trunk1x15
    case trunk1x7dot5
    
    case leafSphereGeometry4
    
    var nodeMaterials: SCNMaterial {
        switch self {
        case .concrete, .grayCube5x5x5:
            let concreteMaterial = SCNMaterial()
            concreteMaterial.diffuse.contents = UIColor(named: "customGray2")
            return concreteMaterial
            
        case .brick4x2x4, .brick5dot5x2x12dot5, .brick4x2x10dot5, .brick5dot5x2x10dot5, .brick5dot5x2x4:
            let brickMaterial = SCNMaterial()
            brickMaterial.diffuse.contents = UIColor(named: "customBrown")
            return brickMaterial
            
        case .whitePillar5x15x5, .whiteSideWall5x15x30, .whiteBackWall45x15x5, .whiteGround55x5x30, .whiteSideWall5x5x30, .whiteBackWall45x5x5, .whitePillar5x5x5:
            let whitePillarMaterial = SCNMaterial()
            whitePillarMaterial.diffuse.contents = UIColor(named: "customOffWhite")
            return whitePillarMaterial
            
        case .ceilDecorationRect45x5x22dot5:
            let ceilDecorationMaterial = SCNMaterial()
            ceilDecorationMaterial.diffuse.contents = UIColor(named: "customGray4")
            return ceilDecorationMaterial
            
        case .glass5x5, .glass20x15:
            
            let glassContentMaterial = SCNMaterial()
            glassContentMaterial.diffuse.contents = UIColor(named: "glassDarkColor")
//            glassContentMaterial.lightingModel = .physicallyBased
            glassContentMaterial.isLitPerPixel = false
            
            return glassContentMaterial
            
        case .grassFloor20x1x30:
            let grassFloorMaterial = SCNMaterial()
            grassFloorMaterial.diffuse.contents = UIColor(named: "customGreen")
//            glassContentMaterial.lightingModel = .physicallyBased
            
            
            return grassFloorMaterial
            
        case .leafSphereGeometry4:
            let sphereMaterial = SCNMaterial()
            sphereMaterial.diffuse.contents = UIColor(named: "customDarkGreen")
            
            return sphereMaterial
            
        case .trunk1x30, .trunk1x15, .trunk1x7dot5:
            let trunkMaterial = SCNMaterial()
            trunkMaterial.diffuse.contents = UIColor(named: "customBrown")
            return trunkMaterial
        }
    }
    
    var nodeGeometry: SCNGeometry {
        switch self {
        case .concrete:
            return SCNBox(width: 8, height: 2.5, length: 50, chamferRadius: 0)
            
        case .brick4x2x4:
            return SCNBox(width: 4, height: 2, length: 4, chamferRadius: 0.25)
            
        case .brick5dot5x2x12dot5:
            return SCNBox(width: 5.5, height: 2, length: 12.5, chamferRadius: 0.25)
            
        case .brick4x2x10dot5:
            return SCNBox(width: 4, height: 2, length: 10.5, chamferRadius: 0.25)
            
        case .brick5dot5x2x10dot5:
            return SCNBox(width: 5.5, height: 2, length: 10.5, chamferRadius: 0.25)
            
        case .brick5dot5x2x4:
            return SCNBox(width: 5.5, height: 2, length: 4, chamferRadius: 0.25)
            
            
        case .whitePillar5x5x5:
            return SCNBox(width: 5, height: 7.5, length: 5, chamferRadius: 1)
        case .grayCube5x5x5:
            return SCNBox(width: 6.25, height: 7.5, length: 5, chamferRadius: 1)
        case .whitePillar5x15x5:
            return SCNBox(width: 5, height: 17.5, length: 5, chamferRadius: 1)
            
        case .whiteSideWall5x15x30:
            return SCNBox(width: 5, height: 17.5, length: 30, chamferRadius: 1)
            
        case .whiteSideWall5x5x30:
            return SCNBox(width: 5, height: 7.5, length: 30, chamferRadius: 1)
            
        case .whiteBackWall45x5x5:
            return SCNBox(width: 45, height: 5, length: 5, chamferRadius: 1)
            
        case .whiteBackWall45x15x5:
            return SCNBox(width: 45, height: 15, length: 5, chamferRadius: 1)
            
        case .whiteGround55x5x30:
            return SCNBox(width: 55, height: 5, length: 30, chamferRadius: 1)
            
//        case .ceilDecorationTube0x2dot5x45:
//
//            let decorationTube = SCNTube(innerRadius: 0, outerRadius: 2.5, height: 45)
//
//            decorationTube.radialSegmentCount = 8
//
//
//            return decorationTube
            
        case .ceilDecorationRect45x5x22dot5:
            return SCNBox(width: 45, height: 7.5, length: 25, chamferRadius: 1.5)
            
        case .glass5x5:
            return SCNBox(width: 5, height: 5, length: 0.5, chamferRadius: 0)
            
        case .glass20x15:
            return SCNBox(width: 20, height: 15, length: 0.5, chamferRadius: 0)
            
        case .grassFloor20x1x30:
            
            return SCNBox(width: 20, height: 1, length: 30, chamferRadius: 0)
            
        case .leafSphereGeometry4:
            return SCNSphere(radius: 4)
            
        case .trunk1x30:
            return SCNCylinder(radius: 1, height: 30)
        case .trunk1x15:
            return SCNCylinder(radius: 1, height: 15)
        case .trunk1x7dot5:
            return SCNCylinder(radius: 1, height: 7.5)

        }
    }
    
    func getNode() -> SCNNode {
        let nodeGeometry = self.nodeGeometry
        
        nodeGeometry.materials = [self.nodeMaterials]
        
        let buildMaterialNode = SCNNode(geometry: nodeGeometry)
        
        return buildMaterialNode
        
    }
}