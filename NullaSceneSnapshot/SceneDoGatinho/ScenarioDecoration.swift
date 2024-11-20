//
//  ScenarioDecoration.swift
//  teste3dScreenShot
//
//  Created by Matheus Silveira Venturini on 19/11/24.
//


import SwiftUI
import SceneKit

enum ScenarioDecoration {
    
    case tree
    case fence
    
    case fence3x
    case fence10x
    case fence15x
    case fence30x
    
    func getNode() -> SCNNode {
        
        switch self {
        case .tree:
            
            let treeNode = SCNNode()
            
            let leafSphereNode1 = BuildMaterialNode.leafSphereGeometry4.getNode()
            leafSphereNode1.position = SCNVector3(x: 0, y: -7, z: 0)
            
            
            let leafSphereNode2 = BuildMaterialNode.leafSphereGeometry4.getNode()
            leafSphereNode2.position = SCNVector3(x: 1, y: -3, z: 2)
            
            let leafSphereNode3 = BuildMaterialNode.leafSphereGeometry4.getNode()
            leafSphereNode3.position = SCNVector3(x: 4, y: -4, z: -2)
            

            
            let trunkNode = BuildMaterialNode.trunk1x30.getNode()
            
            let branchNode1 = BuildMaterialNode.trunk1x7dot5.getNode()
            
            branchNode1.position = SCNVector3(x: 4, y: 0, z: 0)
            branchNode1.eulerAngles = SCNVector3(x: 0, y: 0, z: 2)
            
            
            branchNode1.addChildNode(leafSphereNode1)
            branchNode1.addChildNode(leafSphereNode2)
            branchNode1.addChildNode(leafSphereNode3)
            
            
            let branchNode2 = branchNode1.flattenedClone()
            branchNode1.position = SCNVector3(x: -4, y: 0, z: 0)
            branchNode1.eulerAngles = SCNVector3(x: 0, y: 0, z: -2)
            
            let branchNode3 = branchNode1.flattenedClone()
            
            branchNode3.eulerAngles.x = 34

            branchNode3.eulerAngles = SCNVector3(x: 2, y: 1, z: -2)

            branchNode3.position = SCNVector3(x: 3, y: 5, z: -2)
            
            let branchNode4 = branchNode1.flattenedClone()
            
            branchNode4.eulerAngles = SCNVector3(x: 3, y: 5, z: -5)

            branchNode4.position = SCNVector3(x: -3, y: 9, z: 0)
            
            let branchNode5 = branchNode1.flattenedClone()
            branchNode5.eulerAngles = SCNVector3(x: 0, y: 0, z: 3)


            branchNode5.position = SCNVector3(x: 0.5, y: 15, z: 0)
            
            let branchNode6 = branchNode1.flattenedClone()
            
            branchNode6.eulerAngles = SCNVector3(x: 0, y: 0, z: -2)


            branchNode6.position = SCNVector3(x: -3, y: 16, z: 0)
            
            treeNode.addChildNode(trunkNode)
            
            treeNode.addChildNode(branchNode1)
            treeNode.addChildNode(branchNode2)
            treeNode.addChildNode(branchNode3)
            treeNode.addChildNode(branchNode4)
            treeNode.addChildNode(branchNode5)
            treeNode.addChildNode(branchNode6)
            
            return treeNode
            
        case .fence:
            
            let fenceNode = SCNNode()
            
            let fenceBody = SCNBox(width: 1, height: 3, length: 0.25, chamferRadius: 0)
            
            let fenceMaterial = SCNMaterial()
            
            fenceMaterial.diffuse.contents = UIColor(named: "customWhite")

            fenceBody.materials = [fenceMaterial]
            
            let fenceBodyNode = SCNNode(geometry: fenceBody)
                    
            let fenceTop = SCNCylinder(radius: 0.58, height: 0.25)
            
            fenceTop.radialSegmentCount = 6
            
            fenceTop.materials = [fenceMaterial]
            
            let fenceTopNode = SCNNode(geometry: fenceTop)
            
            fenceTopNode.eulerAngles.x = Float(Angle(degrees: 90).radians)
            
            fenceTopNode.position.y = 1.75
    
            
            let fenceTopSupport = SCNBox(width: 2, height: 0.25, length: 0.25, chamferRadius: 0)
            fenceTopSupport.materials = [fenceMaterial]
            
            let fenceTopSupportNode = SCNNode(geometry: fenceTopSupport)

            
            fenceTopSupportNode.position = SCNVector3(x: 0, y: 1, z: 0)
            
            
            let fenceBottomSupportNode = fenceTopSupportNode.clone()
            fenceBottomSupportNode.position = SCNVector3(x: 0, y: -1, z: 0)
            
            
            fenceNode.addChildNode(fenceBodyNode)
            
            fenceNode.addChildNode(fenceTopNode)
            
            fenceNode.addChildNode(fenceTopSupportNode)
            fenceNode.addChildNode(fenceBottomSupportNode)
            
            return fenceNode
            
            
            
        case .fence3x:
            
            let fenceNode1 = SCNNode()

            
            let fence1 = ScenarioDecoration.fence.getNode()
            fence1.position = SCNVector3(x: 0, y: 0, z: 0)
//            fence1.eulerAngles = SCNVector3(x: 0, y: 0, z: 0)
            
            let fence2 = fence1.clone()
            fence2.position = SCNVector3(x: -2, y: 0, z: 0)
    //        fence1.position.y = Float(4)
            
            let fence3 = fence1.clone()
            fence3.position = SCNVector3(x: 2, y: 0, z: 0)
            
            fenceNode1.addChildNode(fence1)
            fenceNode1.addChildNode(fence2)
            fenceNode1.addChildNode(fence3)
            
            return fenceNode1

            
        case .fence10x:
            let fenceNode1 = SCNNode()
            
            let fence1 = ScenarioDecoration.fence.getNode()
            fence1.position = SCNVector3(x: 1, y: 0, z: 0)
    //        fence1.eulerAngles = SCNVector3(x: 0, y: 0, z: 0)
            
            let fence2 = fence1.clone()
            fence2.position = SCNVector3(x: 3, y: 0, z: 0)
    //        fence1.position.y = Float(4)
            
            let fence3 = fence1.clone()
            fence3.position = SCNVector3(x: 5, y: 0, z: 0)
            
            let fence4 = fence1.clone()
            fence4.position = SCNVector3(x: 7, y: 0, z: 0)
            
            let fence5 = fence1.clone()
            fence5.position = SCNVector3(x: 9, y: 0, z: 0)
            
            let fence6 = fence1.clone()
            fence6.position = SCNVector3(x: -1, y: 0, z: 0)
            
            let fence7 = fence1.clone()
            fence7.position = SCNVector3(x: -3, y: 0, z: 0)
            
            let fence8 = fence1.clone()
            fence8.position = SCNVector3(x: -5, y: 0, z: 0)
            
            let fence9 = fence1.clone()
            fence9.position = SCNVector3(x: -7, y: 0, z: 0)
            
            let fence10 = fence1.clone()
            fence10.position = SCNVector3(x: -9, y: 0, z: 0)
            
            
            fenceNode1.addChildNode(fence1)
            fenceNode1.addChildNode(fence2)
            fenceNode1.addChildNode(fence3)
            fenceNode1.addChildNode(fence4)
            fenceNode1.addChildNode(fence5)
            fenceNode1.addChildNode(fence6)
            fenceNode1.addChildNode(fence7)
            fenceNode1.addChildNode(fence8)
            fenceNode1.addChildNode(fence9)
            fenceNode1.addChildNode(fence10)
            
            return fenceNode1
         
        case .fence15x:
            let fenceNode1 = SCNNode()
            
            let fence1 = ScenarioDecoration.fence.getNode()
            fence1.position = SCNVector3(x: 0, y: 0, z: 0)
    //        fence1.eulerAngles = SCNVector3(x: 0, y: 0, z: 0)
            
            let fence2 = fence1.clone()
            fence2.position = SCNVector3(x: 2, y: 0, z: 0)
    //        fence1.position.y = Float(4)
            
            let fence3 = fence1.clone()
            fence3.position = SCNVector3(x: -2, y: 0, z: 0)
            
            let fence4 = fence1.clone()
            fence4.position = SCNVector3(x: 4, y: 0, z: 0)
            
            let fence5 = fence1.clone()
            fence5.position = SCNVector3(x: -4, y: 0, z: 0)
            
            let fence6 = fence1.clone()
            fence6.position = SCNVector3(x: 6, y: 0, z: 0)
            
            let fence7 = fence1.clone()
            fence7.position = SCNVector3(x: -6, y: 0, z: 0)
            
            let fence8 = fence1.clone()
            fence8.position = SCNVector3(x: 8, y: 0, z: 0)
            
            let fence9 = fence1.clone()
            fence9.position = SCNVector3(x: -8, y: 0, z: 0)
            
            let fence10 = fence1.clone()
            fence10.position = SCNVector3(x: 10, y: 0, z: 0)
            
            let fence11 = fence1.clone()
            fence11.position = SCNVector3(x: -10, y: 0, z: 0)
            
            let fence12 = fence1.clone()
            fence12.position = SCNVector3(x: 12, y: 0, z: 0)
            
            let fence13 = fence1.clone()
            fence13.position = SCNVector3(x: -12, y: 0, z: 0)
            
            let fence14 = fence1.clone()
            fence14.position = SCNVector3(x: 14, y: 0, z: 0)
            
            let fence15 = fence1.clone()
            fence15.position = SCNVector3(x: -14, y: 0, z: 0)
            
            
            
            fenceNode1.addChildNode(fence1)
            fenceNode1.addChildNode(fence2)
            fenceNode1.addChildNode(fence3)
            fenceNode1.addChildNode(fence4)
            fenceNode1.addChildNode(fence5)
            fenceNode1.addChildNode(fence6)
            fenceNode1.addChildNode(fence7)
            fenceNode1.addChildNode(fence8)
            fenceNode1.addChildNode(fence9)
            fenceNode1.addChildNode(fence10)
            fenceNode1.addChildNode(fence11)
            fenceNode1.addChildNode(fence12)
            fenceNode1.addChildNode(fence13)
            fenceNode1.addChildNode(fence14)
            fenceNode1.addChildNode(fence15)
            
            return fenceNode1
         
        case .fence30x:
            let fenceNode = SCNNode()

            
            let fenceNode1 = ScenarioDecoration.fence10x.getNode()
            let fenceNode2 = fenceNode1.clone()
            fenceNode2.position = SCNVector3(x: -20, y: 0, z: 0)
            let fenceNode3 = fenceNode1.clone()
            fenceNode3.position = SCNVector3(x: 20, y: 0, z: 0)

            fenceNode.addChildNode(fenceNode1)
            fenceNode.addChildNode(fenceNode2)
            fenceNode.addChildNode(fenceNode3)
            
            return fenceNode
            
        }
        
    }
    
}