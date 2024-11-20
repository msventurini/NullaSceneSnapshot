//
//  ScenarioElementNode.swift
//  teste3dScreenShot
//
//  Created by Matheus Silveira Venturini on 19/11/24.
//


import SwiftUI
import SceneKit

enum ScenarioElementNode {
    
    case wall
    
    case thirdBuilding
    
    case fourthBuilding
    
    case fifthBuilding
    
    case finalBuilding
    
    func getNode(category: ScenarioElement) -> SCNNode {
        
        switch category {
        case .beginWall, .endWall:
            let wallNode = SCNNode()
            
            let wallElementLineTop = ElementComponentNode.wallLine.getNode()
            wallElementLineTop.position = SCNVector3(x: 0, y: 20, z: 0)
            let wallElementLineTopMid = wallElementLineTop.clone()
            wallElementLineTopMid.position = SCNVector3(x: 0, y: 10, z: 0)
            let wallElementLineMid = wallElementLineTop.clone()
            wallElementLineMid.position = SCNVector3(x: 0, y: 0, z: 0)
            let wallElementLineBottomMid = wallElementLineTop.clone()
            wallElementLineBottomMid.position = SCNVector3(x: 0, y: -10, z: 0)
            let wallElementLineBottom = wallElementLineTop.clone()
            wallElementLineBottom.position = SCNVector3(x: 0, y: -20, z: 0)
            
            
            
            wallNode.addChildNode(wallElementLineTop)
            wallNode.addChildNode(wallElementLineTopMid)
            wallNode.addChildNode(wallElementLineMid)
            wallNode.addChildNode(wallElementLineBottomMid)
            wallNode.addChildNode(wallElementLineBottom)
            
            return wallNode
        case .beginSideWalk:
            let node = SCNNode()
            return node
        case .endSideWalk:
            let node = SCNNode()
            return node
        case .firstBuilding:
            let node = SCNNode()
            return node
        case .secondBuilding:
            let node = SCNNode()
            return node
        case .thirdBuilding:
            
            let thirdBuildingNode = SCNNode()
                        
            let thirdBuildingFirstSlice = ElementComponentNode.thirdBuilding1stSlice.getNode()
            thirdBuildingFirstSlice.position = SCNVector3(x: 0, y: -14.5, z: 0)
            
            
            let nodeFenceLeft = ScenarioDecoration.fence15x.getNode()
            nodeFenceLeft.position = SCNVector3(x: -10, y: -12.5, z: 0)
            nodeFenceLeft.eulerAngles.y = Float(Angle(degrees: 90).radians)
            
            let nodeFenceRight = ScenarioDecoration.fence15x.getNode()
            nodeFenceRight.position = SCNVector3(x: 10, y: -12.5, z: 0)
            nodeFenceRight.eulerAngles.y = Float(Angle(degrees: 90).radians)
            
            let nodeFenceFront = ScenarioDecoration.fence10x.getNode()
            nodeFenceFront.position = SCNVector3(x: 0, y: -12.5, z: 15)

            let nodeFenceBack = ScenarioDecoration.fence10x.getNode()
            nodeFenceBack.position = SCNVector3(x: 0, y: -12.5, z: -15)
            
            thirdBuildingNode.addChildNode(thirdBuildingFirstSlice)
            thirdBuildingNode.addChildNode(nodeFenceLeft)
            thirdBuildingNode.addChildNode(nodeFenceRight)
            thirdBuildingNode.addChildNode(nodeFenceFront)
            thirdBuildingNode.addChildNode(nodeFenceBack)

            
            
            
            return thirdBuildingNode
        case .fourthBuilding:
            let fourthBuildingNode = SCNNode()
                        
            let fourthBuildingFirstSlice = ElementComponentNode.fourthBuilding1stSlice.getNode()
            fourthBuildingFirstSlice.position = SCNVector3(x: 0, y: -14.5, z: 0)
            
            let nodeTree1 = ScenarioDecoration.tree.getNode()
            nodeTree1.eulerAngles = SCNVector3(x: 0, y: 0, z: 0)
            nodeTree1.position = SCNVector3(x: 7, y: 0, z: -9)
            
            let nodeTree2 = nodeTree1.flattenedClone()
            nodeTree2.position = SCNVector3(x: 0, y: 0, z: 0)
            nodeTree2.eulerAngles = SCNVector3(x: 0, y: 3, z: 0)
            
            let nodeTree3 = nodeTree1.flattenedClone()
            nodeTree3.position = SCNVector3(x: -6, y: 0, z: -8)

            let nodeTree4 = nodeTree1.flattenedClone()
            nodeTree4.position = SCNVector3(x: -6, y: 0, z: 8)
            nodeTree4.eulerAngles = SCNVector3(x: 0, y: 0, z: 0)

            
            let nodeTree5 = nodeTree1.flattenedClone()
            nodeTree5.position = SCNVector3(x: 3, y: 0, z: 8)
            nodeTree5.eulerAngles = SCNVector3(x: 0, y: -2, z: 0)
            
            let nodeFenceLeft = ScenarioDecoration.fence15x.getNode()
            nodeFenceLeft.position = SCNVector3(x: -10, y: -12.5, z: 0)
            nodeFenceLeft.eulerAngles.y = Float(Angle(degrees: 90).radians)
            
            let nodeFenceRight = ScenarioDecoration.fence15x.getNode()
            nodeFenceRight.position = SCNVector3(x: 10, y: -12.5, z: 0)
            nodeFenceRight.eulerAngles.y = Float(Angle(degrees: 90).radians)
            
            let nodeFenceFront = ScenarioDecoration.fence10x.getNode()
            nodeFenceFront.position = SCNVector3(x: 0, y: -12.5, z: 15)

            let nodeFenceBack = ScenarioDecoration.fence10x.getNode()
            nodeFenceBack.position = SCNVector3(x: 0, y: -12.5, z: -15)

            
            
            fourthBuildingNode.addChildNode(fourthBuildingFirstSlice)
            fourthBuildingNode.addChildNode(nodeTree1)
            fourthBuildingNode.addChildNode(nodeTree2)
            fourthBuildingNode.addChildNode(nodeTree3)
            fourthBuildingNode.addChildNode(nodeTree4)
            fourthBuildingNode.addChildNode(nodeTree5)
            
            fourthBuildingNode.addChildNode(nodeFenceLeft)
            fourthBuildingNode.addChildNode(nodeFenceRight)
            fourthBuildingNode.addChildNode(nodeFenceFront)
            fourthBuildingNode.addChildNode(nodeFenceBack)
            
            
            
            
            
            return fourthBuildingNode
        case .fifthBuilding:
            let fifthBuildingNode = SCNNode()
            
            
            let firstSlice = ElementComponentNode.fifthBuilding1stSlice.getNode()
            firstSlice.position = SCNVector3(x: 0, y: -37.5, z: 0)
            
            let secondSlice = ElementComponentNode.fifthBuilding2ndSlice.getNode()
            secondSlice.position = SCNVector3(x: 0, y: -27.5, z: 0)
            
            let thirdSlice = ElementComponentNode.fifthBuilding3rdSlice.getNode()
            thirdSlice.position = SCNVector3(x: 0, y: -22.5, z: 0)
            
            let fourthSlice = ElementComponentNode.fifthBuilding4thSlice.getNode()
            fourthSlice.position = SCNVector3(x: 0, y: -17.5, z: 0)
            
            let fifthSlice = thirdSlice.clone()
            fifthSlice.position = SCNVector3(x: 0, y: -12.5, z: 0)
            
            let sixthSlice = ElementComponentNode.fifthBuilding6thSlice.getNode()
            sixthSlice.position = SCNVector3(x: 0, y: -7.5, z: 0)
            
            let seventhSlice = ElementComponentNode.fifthBuilding7thSlice.getNode()
            seventhSlice.position = SCNVector3(x: 0, y: -2.5, z: 0)
            
            let eighthSlice = ElementComponentNode.fifthBuilding8thSlice.getNode()
            eighthSlice.position = SCNVector3(x: 0, y: 2.5, z: 0)

            let ninthSlice = eighthSlice.clone()
            ninthSlice.position = SCNVector3(x: 0, y: 7.5, z: 0)
            
            let tenthSlice = seventhSlice.clone()
            tenthSlice.position = SCNVector3(x: 0, y: 12.5, z: 0)

            let eleventhSlice = ElementComponentNode.fifthBuilding11thSlice.getNode()
            eleventhSlice.position = SCNVector3(x: 0, y: 17.5, z: 0)
            
            let twelvethSlice = seventhSlice.clone()
            twelvethSlice.position = SCNVector3(x: 0, y: 22.5, z: 0)
            
            let thirteenthSlice = eighthSlice.clone()
            thirteenthSlice.position = SCNVector3(x: 0, y: 27.5, z: 0)

            let fourteenthSlice = eighthSlice.clone()
            fourteenthSlice.position = SCNVector3(x: 0, y: 32.5, z: 0)
            
            let fifteenthSlice = seventhSlice.clone()
            fifteenthSlice.position = SCNVector3(x: 0, y: 37.5, z: 0)
            
            fifthBuildingNode.addChildNode(firstSlice)
            fifthBuildingNode.addChildNode(secondSlice)
            fifthBuildingNode.addChildNode(thirdSlice)
            fifthBuildingNode.addChildNode(fourthSlice)
            fifthBuildingNode.addChildNode(fifthSlice)
            fifthBuildingNode.addChildNode(sixthSlice)
            fifthBuildingNode.addChildNode(seventhSlice)
            fifthBuildingNode.addChildNode(eighthSlice)
            fifthBuildingNode.addChildNode(ninthSlice)
            fifthBuildingNode.addChildNode(tenthSlice)
            fifthBuildingNode.addChildNode(eleventhSlice)
            fifthBuildingNode.addChildNode(twelvethSlice)
            fifthBuildingNode.addChildNode(thirteenthSlice)
            fifthBuildingNode.addChildNode(fourteenthSlice)
            fifthBuildingNode.addChildNode(fifteenthSlice)
            
            
            
            
            //            fifthBuildingNode.eulerAngles = SCNVector3(x: Float(Angle(degrees: -40).radians), y: 0, z: 0)
            
            return fifthBuildingNode
            
        case .finalBuilding:
            let finalBuildingNode = SCNNode()
            
            let lastBuildingFirstSlice = ElementComponentNode.lastBuilding1stSlice.getNode()
            lastBuildingFirstSlice.position = SCNVector3(x: 0, y: -14.5, z: 0)
            
            finalBuildingNode.addChildNode(lastBuildingFirstSlice)
            
            
            
            lastBuildingFirstSlice.position = SCNVector3(x: 0, y: -14.5, z: 0)
            
    //
    //        rootNode = ScenarioElementNode.finalBuilding.getNode(category: .finalBuilding)
            finalBuildingNode.addChildNode(lastBuildingFirstSlice)
            
            
            let fenceNode1 = ScenarioDecoration.fence10x.getNode()
            fenceNode1.position = SCNVector3(x: 0, y: 1, z: -15)
            
            let fenceNode2 = ScenarioDecoration.fence15x.getNode()
            fenceNode2.position = SCNVector3(x: 10, y: 1, z: 0)
            fenceNode2.eulerAngles.y = Float(Angle(degrees: 90).radians)

//
            let fenceNode3 = ScenarioDecoration.fence15x.getNode()
            fenceNode3.position = SCNVector3(x: -10, y: 1, z: 0)
            fenceNode3.eulerAngles.y = Float(Angle(degrees: 90).radians)
            
            let fenceNode4 = ScenarioDecoration.fence3x.getNode()
            fenceNode4.position = SCNVector3(x: -7.5, y: 1, z: 15)

            let fenceNode5 = fenceNode4.clone()
            fenceNode5.position = SCNVector3(x: 7.5, y: 1, z: 15)
            
            lastBuildingFirstSlice.addChildNode(fenceNode1)
            lastBuildingFirstSlice.addChildNode(fenceNode2)
            lastBuildingFirstSlice.addChildNode(fenceNode3)
            lastBuildingFirstSlice.addChildNode(fenceNode4)
            lastBuildingFirstSlice.addChildNode(fenceNode5)

            
            finalBuildingNode.position = SCNVector3(0, 10, -30)
            
            
            
            
            return finalBuildingNode
        case .roadInitialSegment:
            let node = SCNNode()
            return node
        case .roadMidSegment:
            let node = SCNNode()
            return node
        case .roadFinalSegment:
            let node = SCNNode()
            return node
        }
        
        
    }
    
}