//
//  ElementComponentNode.swift
//  teste3dScreenShot
//
//  Created by Matheus Silveira Venturini on 19/11/24.
//


import SwiftUI
import SceneKit

enum ElementComponentNode {
    
    case wallLine
    
    case thirdBuilding1stSlice
    
    
    case fourthBuilding1stSlice
    
    case fifthBuilding1stSlice
    case fifthBuilding2ndSlice
    case fifthBuilding3rdSlice
    case fifthBuilding4thSlice
    case fifthBuilding5thSlice
    case fifthBuilding6thSlice
    case fifthBuilding7thSlice
    case fifthBuilding8thSlice
    case fifthBuilding11thSlice
    
    case lastBuilding1stSlice
    
    
    func getNode() -> SCNNode {
        switch self {
        case .wallLine:
            let wallBlockNode = SCNNode()
            
            let wallLineTop1 = ElementSubComponentNode.wallTopLine.componentNode
            
            wallLineTop1.position = SCNVector3(x: 0, y: 3.75, z: 0)
            
            wallBlockNode.addChildNode(wallLineTop1)
            
            
            let wallLineBottom1 = ElementSubComponentNode.wallBottomLine.componentNode
            
            wallLineBottom1.position = SCNVector3(x: 0, y: 1.25, z: 0)
            
            wallBlockNode.addChildNode(wallLineBottom1)
            
            
            let wallLineTop2 = wallLineTop1.clone()
            
            wallLineTop2.position = SCNVector3(x: 0, y: -1.25, z: 0)
            
            wallBlockNode.addChildNode(wallLineTop2)
            
            
            let wallLineBottom2 = wallLineBottom1.clone()
            
            wallLineBottom2.position = SCNVector3(x: 0, y: -3.75, z: 0)
            
            wallBlockNode.addChildNode(wallLineBottom2)
            
            return wallBlockNode
            
        case .fifthBuilding1stSlice:
            let firstSlice = SCNNode()
            
            
            let leftPillar = BuildMaterialNode.whitePillar5x15x5.getNode()
            leftPillar.position = SCNVector3(x: -10, y: 0, z: 7.75)
            
            let centerPillar = leftPillar.clone()
            centerPillar.position = SCNVector3(x: 0, y: 0, z: 0)
            
            let rightPillar = leftPillar.clone()
            rightPillar.position = SCNVector3(x: 10, y: 0, z: 7.75)
            
            let lefttWall = BuildMaterialNode.whiteSideWall5x15x30.getNode()
            lefttWall.position = SCNVector3(x: 25, y: 0, z: 0)
            
            let rightWall = lefttWall.clone()
            rightWall.position = SCNVector3(x: -25, y: 0, z: 0)
            
            let leftGlass = BuildMaterialNode.glass20x15.getNode()
            leftGlass.position = SCNVector3(x: -12.5, y: 0, z: 0)
            
            let rightGlass = leftGlass.clone()
            rightGlass.position = SCNVector3(x: 12.5, y: 0, z: 0)
            
            let backWall = BuildMaterialNode.whiteBackWall45x15x5.getNode()
            backWall.position = SCNVector3(x: 0, y: 0, z: -12.5)
            
            firstSlice.addChildNode(leftPillar)
            firstSlice.addChildNode(centerPillar)
            firstSlice.addChildNode(rightPillar)
            
            firstSlice.addChildNode(lefttWall)
            firstSlice.addChildNode(rightWall)
            
            firstSlice.addChildNode(leftGlass)
            firstSlice.addChildNode(rightGlass)
            
            firstSlice.addChildNode(backWall)
            
            return firstSlice.flattenedClone()
            
        case .fifthBuilding2ndSlice:
            let secondSlice = SCNNode()
            
            let leftWall = BuildMaterialNode.whiteSideWall5x5x30.getNode()
            leftWall.position = SCNVector3(x: -25, y: 0, z: 0)
            
            let rightWall = leftWall.clone()
            rightWall.position = SCNVector3(x: 25, y: 0, z: 0)
            
            let backWall = BuildMaterialNode.whiteBackWall45x5x5.getNode()
            backWall.position = SCNVector3(x: 0, y: 0, z: -12.5)
            
            secondSlice.addChildNode(leftWall)
            secondSlice.addChildNode(rightWall)
            secondSlice.addChildNode(backWall)
            
            
//            let ceilDecorationTube = BuildMaterialNode.ceilDecorationTube0x2dot5x45.getNode()
//            ceilDecorationTube.eulerAngles = SCNVector3(x: 0, y: 0, z: Float(Angle(degrees: 90).radians))
//            ceilDecorationTube.position = SCNVector3(x: 0, y: 0, z: 11.25)
            
            let ceilDecorationRect = BuildMaterialNode.ceilDecorationRect45x5x22dot5.getNode()
            ceilDecorationRect.position = SCNVector3(x: 0, y: 0, z: 0)
            
            
            
//            secondSlice.addChildNode(ceilDecorationTube)
            secondSlice.addChildNode(ceilDecorationRect)
            
            return secondSlice.flattenedClone()
            
        case .fifthBuilding3rdSlice, .fifthBuilding5thSlice:
            return BuildMaterialNode.whiteGround55x5x30.getNode()
            
        case .fifthBuilding4thSlice:
            let fourthSlice = SCNNode()
            
            
            let leftPillar = BuildMaterialNode.whitePillar5x5x5.getNode()
            leftPillar.position = SCNVector3(x: -10, y: 0, z: 12.5)
            
            
            
            let rightPillar = leftPillar.clone()
            rightPillar.position = SCNVector3(x: 10, y: 0, z: 12.5)
            
            let lefttWall = BuildMaterialNode.whiteSideWall5x5x30.getNode()
            lefttWall.position = SCNVector3(x: 25, y: 0, z: 0)
            
            let rightWall = lefttWall.clone()
            rightWall.position = SCNVector3(x: -25, y: 0, z: 0)
            
            let backWall = BuildMaterialNode.whiteBackWall45x5x5.getNode()
            backWall.position = SCNVector3(x: 0, y: 0, z: -12.5)
            
            let glass1 = BuildMaterialNode.glass5x5.getNode()
            glass1.position = SCNVector3(x: -20, y: 0, z: 13.5)
            
            let glass2 = glass1.clone()
            glass2.position = SCNVector3(x: -15, y: 0, z: 13.5)
            
            let glass3 = glass1.clone()
            glass3.position = SCNVector3(x: -5, y: 0, z: 13.5)
            
            let glass4 = glass1.clone()
            glass4.position = SCNVector3(x: 0, y: 0, z: 13.5)
            
            let glass5 = glass1.clone()
            glass5.position = SCNVector3(x: 5, y: 0, z: 13.5)
            
            let glass6 = glass1.clone()
            glass6.position = SCNVector3(x: 15, y: 0, z: 13.5)
            
            let glass7 = glass1.clone()
            glass7.position = SCNVector3(x: 20, y: 0, z: 13.5)
            
            
            
            fourthSlice.addChildNode(leftPillar)
            fourthSlice.addChildNode(rightPillar)
            
            fourthSlice.addChildNode(lefttWall)
            fourthSlice.addChildNode(rightWall)
            
            fourthSlice.addChildNode(glass1)
            fourthSlice.addChildNode(glass2)
            fourthSlice.addChildNode(glass3)
            fourthSlice.addChildNode(glass4)
            fourthSlice.addChildNode(glass5)
            fourthSlice.addChildNode(glass6)
            fourthSlice.addChildNode(glass7)
            
            
            fourthSlice.addChildNode(backWall)
            
            return fourthSlice.flattenedClone()
            
        case .fifthBuilding6thSlice:
            let sixthSlice = SCNNode()
            
            let lefttWall = BuildMaterialNode.whiteSideWall5x5x30.getNode()
            lefttWall.position = SCNVector3(x: 25, y: 0, z: 0)
            
            let rightWall = lefttWall.clone()
            rightWall.position = SCNVector3(x: -25, y: 0, z: 0)
            
            let backWall = BuildMaterialNode.whiteBackWall45x5x5.getNode()
            backWall.position = SCNVector3(x: 0, y: 0, z: -12.5)
            
            let glass1 = BuildMaterialNode.glass5x5.getNode()
            glass1.position = SCNVector3(x: -20, y: 0, z: 13.5)
            
            let glass2 = glass1.clone()
            glass2.position = SCNVector3(x: -15, y: 0, z: 13.5)
            
            let glass3 = glass1.clone()
            glass3.position = SCNVector3(x: -10, y: 0, z: 13.5)
            
            let glass4 = glass1.clone()
            glass4.position = SCNVector3(x: -5, y: 0, z: 13.5)
            
            let centralDecoration = BuildMaterialNode.grayCube5x5x5.getNode()
            centralDecoration.position = SCNVector3(x: 0, y: 0, z: 14.5)
            
            
            let glass5 = glass1.clone()
            glass5.position = SCNVector3(x: 5, y: 0, z: 13.5)
            
            let glass6 = glass1.clone()
            glass6.position = SCNVector3(x: 10, y: 0, z: 13.5)
            
            let glass7 = glass1.clone()
            glass7.position = SCNVector3(x: 15, y: 0, z: 13.5)
            
            let glass8 = glass1.clone()
            glass8.position = SCNVector3(x: 20, y: 0, z: 13.5)
            
            
            
            
            sixthSlice.addChildNode(lefttWall)
            sixthSlice.addChildNode(rightWall)
            
            sixthSlice.addChildNode(centralDecoration)
            
            sixthSlice.addChildNode(glass1)
            sixthSlice.addChildNode(glass2)
            sixthSlice.addChildNode(glass3)
            sixthSlice.addChildNode(glass4)
            sixthSlice.addChildNode(glass5)
            sixthSlice.addChildNode(glass6)
            sixthSlice.addChildNode(glass7)
            sixthSlice.addChildNode(glass8)
            
            
            sixthSlice.addChildNode(backWall)
            
            return sixthSlice.flattenedClone()
            
        case .fifthBuilding7thSlice:
            let seventhSlice = SCNNode()
            
            let ground = BuildMaterialNode.whiteGround55x5x30.getNode()
            ground.position = SCNVector3(x: 0, y: 0, z: 0)
            
        
            let centralDecoration = BuildMaterialNode.grayCube5x5x5.getNode()
            centralDecoration.position = SCNVector3(x: 0, y: 0, z: 14.5)
            
            
            let centralDecoration2 = BuildMaterialNode.grayCube5x5x5.getNode()
            centralDecoration2.position = SCNVector3(x: 0, y: 0.2, z: 14.5)
            
            
            seventhSlice.addChildNode(ground)
            seventhSlice.addChildNode(centralDecoration)
            seventhSlice.addChildNode(centralDecoration2)
            
            return seventhSlice.flattenedClone()
            
        case .fifthBuilding8thSlice:
            
            let eighthSlice = SCNNode()
            
            let lefttWall = BuildMaterialNode.whiteSideWall5x5x30.getNode()
            lefttWall.position = SCNVector3(x: 25, y: 0, z: 0)
            
            let rightWall = lefttWall.clone()
            rightWall.position = SCNVector3(x: -25, y: 0, z: 0)
            
            let backWall = BuildMaterialNode.whiteBackWall45x5x5.getNode()
            backWall.position = SCNVector3(x: 0, y: 0, z: -12.5)
            
            let glass1 = BuildMaterialNode.glass5x5.getNode()
            glass1.position = SCNVector3(x: -20, y: 0, z: 13.5)
            
            let glass2 = glass1.clone()
            glass2.position = SCNVector3(x: -10, y: 0, z: 13.5)
            
            let glass3 = glass1.clone()
            glass3.position = SCNVector3(x: 10, y: 0, z: 13.5)
            
            let glass4 = glass1.clone()
            glass4.position = SCNVector3(x: 20, y: 0, z: 13.5)
            
            let windowDivider1 = BuildMaterialNode.whitePillar5x5x5.getNode()
            windowDivider1.position = SCNVector3(x: -15, y: 0, z: 12.5)
            
            let windowDivider2 = windowDivider1.clone()
            windowDivider2.position = SCNVector3(x: -5, y: 0, z: 12.5)
            
            let windowDivider3 = windowDivider1.clone()
            windowDivider3.position = SCNVector3(x: 5, y: 0, z: 12.5)
            
            let windowDivider4 = windowDivider1.clone()
            windowDivider4.position = SCNVector3(x: 15, y: 0, z: 12.5)
            
            let centralDecoration = BuildMaterialNode.grayCube5x5x5.getNode()
            centralDecoration.position = SCNVector3(x: 0, y: 0, z: 14.5)
            
            eighthSlice.addChildNode(lefttWall)
            eighthSlice.addChildNode(rightWall)
            eighthSlice.addChildNode(centralDecoration)
            
            eighthSlice.addChildNode(glass1)
            eighthSlice.addChildNode(glass2)
            eighthSlice.addChildNode(glass3)
            eighthSlice.addChildNode(glass4)
            
            eighthSlice.addChildNode(windowDivider1)
            eighthSlice.addChildNode(windowDivider2)
            eighthSlice.addChildNode(windowDivider3)
            eighthSlice.addChildNode(windowDivider4)
            
            eighthSlice.addChildNode(backWall)
            
            return eighthSlice.flattenedClone()
            
        case .fifthBuilding11thSlice:
            let eleventhSlice = SCNNode()
            
            
            let leftPillar = BuildMaterialNode.whitePillar5x5x5.getNode()
            leftPillar.position = SCNVector3(x: -10, y: 0, z: 12.5)
            
            
            
            let rightPillar = leftPillar.clone()
            rightPillar.position = SCNVector3(x: 10, y: 0, z: 12.5)
            
            let lefttWall = BuildMaterialNode.whiteSideWall5x5x30.getNode()
            lefttWall.position = SCNVector3(x: 25, y: 0, z: 0)
            
            let rightWall = lefttWall.clone()
            rightWall.position = SCNVector3(x: -25, y: 0, z: 0)
            
            let backWall = BuildMaterialNode.whiteBackWall45x5x5.getNode()
            backWall.position = SCNVector3(x: 0, y: 0, z: -12.5)
            
            let glass1 = BuildMaterialNode.glass5x5.getNode()
            glass1.position = SCNVector3(x: -20, y: 0, z: 13.5)
            
            let glass2 = glass1.clone()
            glass2.position = SCNVector3(x: -15, y: 0, z: 13.5)
            
            let glass3 = glass1.clone()
            glass3.position = SCNVector3(x: -5, y: 0, z: 13.5)
            
            let centralDecoration = BuildMaterialNode.grayCube5x5x5.getNode()
            centralDecoration.position = SCNVector3(x: 0, y: 0, z: 14.5)
            
            let glass4 = glass1.clone()
            glass4.position = SCNVector3(x: 5, y: 0, z: 13.5)
            
            let glass5 = glass1.clone()
            glass5.position = SCNVector3(x: 15, y: 0, z: 13.5)
            
            let glass6 = glass1.clone()
            glass6.position = SCNVector3(x: 20, y: 0, z: 13.5)
            
            
            
            eleventhSlice.addChildNode(leftPillar)
            eleventhSlice.addChildNode(rightPillar)
            
            eleventhSlice.addChildNode(lefttWall)
            eleventhSlice.addChildNode(rightWall)
            
            eleventhSlice.addChildNode(glass1)
            eleventhSlice.addChildNode(glass2)
            eleventhSlice.addChildNode(glass3)
            eleventhSlice.addChildNode(glass4)
            eleventhSlice.addChildNode(glass5)
            eleventhSlice.addChildNode(glass6)
            eleventhSlice.addChildNode(centralDecoration)
            eleventhSlice.addChildNode(backWall)
            
            return eleventhSlice.flattenedClone()
            
        case .lastBuilding1stSlice, .fourthBuilding1stSlice, .thirdBuilding1stSlice:
            return BuildMaterialNode.grassFloor20x1x30.getNode()
            
            
            
        }
        
    }
    
}