//
//  ElementSubComponentNode.swift
//  teste3dScreenShot
//
//  Created by Matheus Silveira Venturini on 19/11/24.
//


import SwiftUI
import SceneKit

enum ElementSubComponentNode {
    
    case wallBottomLine
    case wallTopLine
    
    
    var componentNode: SCNNode {
        switch self {
        case .wallBottomLine:
            let wallLineBottom = SCNNode()
            
            let concreteNode = BuildMaterialNode.concrete.getNode()
            
            concreteNode.position = SCNVector3(x: 0, y: 0, z: 0)
            
            let brick5dot5x2x12dot5Node = BuildMaterialNode.brick5dot5x2x12dot5.getNode()
            brick5dot5x2x12dot5Node.position = SCNVector3(x: -2.25, y: 0.2, z: 19.75)
            
            let brick5dot5x2x10dot5Node = BuildMaterialNode.brick5dot5x2x10dot5.getNode()
            brick5dot5x2x10dot5Node.position = SCNVector3(x: -2.25, y: 0.2, z: 7.5)
            
            let brick5dot5x2x10dot5Node2 = brick5dot5x2x10dot5Node.clone()
            brick5dot5x2x10dot5Node2.position = SCNVector3(x: -2.25, y: 0.2, z: -3.75)
            
            let brick5dot5x2x10dot5Node3 = brick5dot5x2x10dot5Node.clone()
            brick5dot5x2x10dot5Node3.position = SCNVector3(x: -2.25, y: 0.2, z: -15.5)
            
            let brick5dot5x2x4Node = BuildMaterialNode.brick5dot5x2x4.getNode()
            brick5dot5x2x4Node.position = SCNVector3(x: -2.25, y: 0.2, z: -24)
            
            
            
            
            let brick4x2x4Node = BuildMaterialNode.brick4x2x4.getNode()
            brick4x2x4Node.position = SCNVector3(x: 3, y: 0.2, z: 24)
            
            let brick4x2x10dot5Node = BuildMaterialNode.brick4x2x10dot5.getNode()
            brick4x2x10dot5Node.position = SCNVector3(x: 3, y: 0.2, z: 16.5)
            
            let brick4x2x10dot5Node2 = brick4x2x10dot5Node.clone()
            brick4x2x10dot5Node2.position = SCNVector3(x: 3, y: 0.2, z: 5.5)
            
            
            let brick4x2x10dot5Node3 = brick4x2x10dot5Node.clone()
            brick4x2x10dot5Node3.position = SCNVector3(x: 3, y: 0.2, z: -5.5)
            
            let brick4x2x10dot5Node4 = brick4x2x10dot5Node.clone()
            brick4x2x10dot5Node4.position = SCNVector3(x: 3, y: 0.2, z: -16.5)
            
            let brick4x2x4Node2 = brick4x2x4Node.clone()
            brick4x2x4Node2.position = SCNVector3(x: 3, y: 0.2, z: -24)
            
            wallLineBottom.addChildNode(brick5dot5x2x12dot5Node)
            wallLineBottom.addChildNode(brick5dot5x2x10dot5Node)
            wallLineBottom.addChildNode(brick5dot5x2x10dot5Node2)
            wallLineBottom.addChildNode(brick5dot5x2x10dot5Node3)
            wallLineBottom.addChildNode(brick5dot5x2x4Node)
            
            wallLineBottom.addChildNode(brick4x2x4Node)
            wallLineBottom.addChildNode(brick4x2x10dot5Node)
            wallLineBottom.addChildNode(brick4x2x10dot5Node2)
            wallLineBottom.addChildNode(brick4x2x10dot5Node3)
            wallLineBottom.addChildNode(brick4x2x10dot5Node4)
            wallLineBottom.addChildNode(brick4x2x4Node2)
            
            wallLineBottom.addChildNode(concreteNode)
            
            return wallLineBottom
            
        case .wallTopLine:
            let wallLineTop = SCNNode()
            
            let concreteNode = BuildMaterialNode.concrete.getNode()
            
            concreteNode.position = SCNVector3(x: 0, y: 0, z: 0)
            
            let brick5dot5x2x12dot5Node = BuildMaterialNode.brick5dot5x2x12dot5.getNode()
            brick5dot5x2x12dot5Node.position = SCNVector3(x: 2.25, y: 0.2, z: 19.75)
            
            let brick5dot5x2x10dot5Node = BuildMaterialNode.brick5dot5x2x10dot5.getNode()
            brick5dot5x2x10dot5Node.position = SCNVector3(x: 2.25, y: 0.2, z: 7.5)
            
            let brick5dot5x2x10dot5Node2 = brick5dot5x2x10dot5Node.clone()
            brick5dot5x2x10dot5Node2.position = SCNVector3(x: 2.25, y: 0.2, z: -3.75)
            
            let brick5dot5x2x10dot5Node3 = brick5dot5x2x10dot5Node.clone()
            brick5dot5x2x10dot5Node3.position = SCNVector3(x: 2.25, y: 0.2, z: -15.5)
            
            let brick5dot5x2x4Node = BuildMaterialNode.brick5dot5x2x4.getNode()
            brick5dot5x2x4Node.position = SCNVector3(x: 2.25, y: 0.2, z: -24)
            
            let brick4x2x4Node = BuildMaterialNode.brick4x2x4.getNode()
            brick4x2x4Node.position = SCNVector3(x: -3, y: 0.2, z: 24)
            
            let brick4x2x10dot5Node = BuildMaterialNode.brick4x2x10dot5.getNode()
            brick4x2x10dot5Node.position = SCNVector3(x: -3, y: 0.2, z: 16.5)
            
            let brick4x2x10dot5Node2 = brick4x2x10dot5Node.clone()
            brick4x2x10dot5Node2.position = SCNVector3(x: -3, y: 0.2, z: 5.5)
            
            
            let brick4x2x10dot5Node3 = brick4x2x10dot5Node.clone()
            brick4x2x10dot5Node3.position = SCNVector3(x: -3, y: 0.2, z: -5.5)
            
            let brick4x2x10dot5Node4 = brick4x2x10dot5Node.clone()
            brick4x2x10dot5Node4.position = SCNVector3(x: -3, y: 0.2, z: -16.5)
            
            let brick4x2x4Node2 = brick4x2x4Node.clone()
            brick4x2x4Node2.position = SCNVector3(x: -3, y: 0.2, z: -24)
            
            wallLineTop.addChildNode(brick5dot5x2x12dot5Node)
            wallLineTop.addChildNode(brick5dot5x2x10dot5Node)
            wallLineTop.addChildNode(brick5dot5x2x10dot5Node2)
            wallLineTop.addChildNode(brick5dot5x2x10dot5Node3)
            wallLineTop.addChildNode(brick5dot5x2x4Node)
            wallLineTop.addChildNode(brick4x2x4Node)
            wallLineTop.addChildNode(brick4x2x10dot5Node)
            wallLineTop.addChildNode(brick4x2x10dot5Node2)
            wallLineTop.addChildNode(brick4x2x10dot5Node3)
            wallLineTop.addChildNode(brick4x2x10dot5Node4)
            wallLineTop.addChildNode(brick4x2x4Node2)
            wallLineTop.addChildNode(concreteNode)
            
            return wallLineTop
            
            
        }
    }
    
}