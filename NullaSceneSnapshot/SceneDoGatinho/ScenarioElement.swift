//
//  ScenarioElement.swift
//  teste3dScreenShot
//
//  Created by Matheus Silveira Venturini on 19/11/24.
//


import SwiftUI
import SceneKit

enum ScenarioElement {
    
    case beginWall
    case endWall
    case beginSideWalk
    case endSideWalk
    case firstBuilding
    case secondBuilding
    case thirdBuilding
    case fourthBuilding
    case fifthBuilding
    case finalBuilding
    case roadInitialSegment
    case roadMidSegment
    case roadFinalSegment
    
    
    
    var geometry: SCNGeometry {
        switch self {
        case .beginWall, .endWall:
            SCNBox(width: 10, height: 50, length: 50, chamferRadius: 0)
        case .beginSideWalk, .endSideWalk:
            SCNBox(width: 110, height: 10, length: 50, chamferRadius: 1)
        case .firstBuilding:
            SCNBox(width: 40, height: 60, length: 30, chamferRadius: 0)
        case .secondBuilding:
            SCNBox(width: 30, height: 90, length: 30, chamferRadius: 0)
        case .fifthBuilding:
            SCNBox(width: 55, height: 90, length: 30, chamferRadius: 0)
        case .finalBuilding, .fourthBuilding, .thirdBuilding:
            SCNBox(width: 20, height: 30, length: 30, chamferRadius: 0)
        case .roadInitialSegment, .roadFinalSegment:
            SCNBox(width: 110, height: 6, length: 70, chamferRadius: 0)
        case .roadMidSegment:
            SCNBox(width: 30, height: 6, length: 70, chamferRadius: 0)
            
            
            
        }
    }
    
    var position: SCNVector3 {
        switch self {
        case .beginWall:
            SCNVector3(x: -120, y: 20, z: -60)
        case .endWall:
            SCNVector3(x: 120, y: 20, z: -60)
        case .beginSideWalk:
            SCNVector3(x: -70, y: -10, z: -60)
        case .endSideWalk:
            SCNVector3(x: 70, y: -10, z: -60)
        case .firstBuilding:
            SCNVector3(x: -95, y: 25, z: -60)
        case .secondBuilding:
            SCNVector3(x: -60, y: 40, z: -60)
        case .thirdBuilding:
            SCNVector3(x: -30, y: 10, z: -60)
        case .fourthBuilding:
            SCNVector3(x: 30, y: 10, z: -60)
        case .fifthBuilding:
            SCNVector3(x: 67.5, y: 40, z: -60)
        case .finalBuilding:
            SCNVector3(x: 105, y: 10, z: -60)
        case .roadInitialSegment:
            SCNVector3(x: -70, y: -12, z: -60)
        case .roadFinalSegment:
            SCNVector3(x: 70, y: -12, z: -60)
        case .roadMidSegment:
            SCNVector3(x: 0, y: -12, z: -60)
            
        }
    }
    
    var materials: [SCNMaterial] {
        switch self {
        case .beginWall, .endWall:
            let boxMaterial = SCNMaterial()
            boxMaterial.diffuse.contents = UIColor.brown
            return [boxMaterial]
        case .beginSideWalk, .endSideWalk:
            let boxMaterial = SCNMaterial()
            boxMaterial.diffuse.contents = UIColor.gray
            return [boxMaterial]
        case .firstBuilding:
            let boxMaterial = SCNMaterial()
            boxMaterial.diffuse.contents = UIColor.red
            return [boxMaterial]
        case .secondBuilding:
            let boxMaterial = SCNMaterial()
            boxMaterial.diffuse.contents = UIColor.green
            return [boxMaterial]
        case .thirdBuilding:
            let boxMaterial = SCNMaterial()
            boxMaterial.diffuse.contents = UIColor.blue
            return [boxMaterial]
        case .fourthBuilding:
            let boxMaterial = SCNMaterial()
            boxMaterial.diffuse.contents = UIColor.cyan
            return [boxMaterial]
        case .fifthBuilding:
            let boxMaterial = SCNMaterial()
            boxMaterial.diffuse.contents = UIColor.magenta
            return [boxMaterial]
        case .finalBuilding:
            let boxMaterial = SCNMaterial()
            boxMaterial.diffuse.contents = UIColor.yellow
            return [boxMaterial]
        case .roadInitialSegment, .roadMidSegment, .roadFinalSegment:
            let boxMaterial = SCNMaterial()
            boxMaterial.diffuse.contents = UIColor.darkGray
            return [boxMaterial]
            
        }
        
        
    }
    
    var name: String {
        switch self {
        case .beginWall:
            "beginWall"
        case .endWall:
            "endWall"
        case .beginSideWalk:
            "beginSideWalk"
        case .endSideWalk:
            "endSideWalk"
        case .firstBuilding:
            "firstBuilding"
        case .secondBuilding:
            "secondBuilding"
        case .thirdBuilding:
            "thirdBuilding"
        case .fourthBuilding:
            "fourthBuilding"
        case .fifthBuilding:
            "fourthBuilding"
        case .finalBuilding:
            "finalBuilding"
        case .roadInitialSegment:
            "roadInitialSegment"
        case .roadMidSegment:
            "roadMidSegment"
        case .roadFinalSegment:
            "roadFinalSegment"
        }
    }
    
}