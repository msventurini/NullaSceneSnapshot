//
//  BackgroundScene.swift
//  teste3dScreenShot
//
//  Created by Matheus Silveira Venturini on 19/11/24.
//


import SwiftUI
import SceneKit

class BackgroundScene: SCNScene {
    
    var cameraNode = SCNNode()
    
    
    override init() {
        
        super.init()
        
        //        self.rootNode.frame = CGRect(origin: .zero, size: .zero)
        self.background.contents = UIColor.red
        
        
        
        let camera = SCNCamera()
        camera.projectionDirection = .vertical
        //        camera.
        camera.fieldOfView = 60
        //        camera.fieldOfView = 60.0
        //onde o campo de visão começa
        camera.zNear = 0
        
        //onde o campo de visão termina
        camera.zFar = 300
        
        let light = SCNLight()
        light.color = UIColor.white
        light.type = .omni

        
        let testLight = SCNNode()
        testLight.light = SCNLight()
        testLight.light?.type = .omni
        testLight.light?.intensity = 1000
        testLight.position = SCNVector3(x: 0, y: 100, z: 100)
        rootNode.addChildNode(testLight)
        
        cameraNode.simdPosition = SIMD3<Float>(0.0, 0, 0)
        cameraNode.camera = camera
        
        
        
//        cameraNode.light = light
        
        cameraNode.name = "camera"
        
        self.rootNode.camera = camera
        
                         addScenario()

        
        
        
        rootNode.addChildNode(cameraNode)
        
   
        //gi  rootNode.addChildNode(firstSlice)
        
        
//        rootNode.addChildNode(finalBuildingNode)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func addScenarioElement(element: ScenarioElementNode, category: ScenarioElement) {
        
        
        
        let node = element.getNode(category: category)
        
        node.position = category.position
        
        rootNode.addChildNode(node)
        
        
    }

    
    func addScenarioElementLegacy(elemement: ScenarioElement) {
        
        let basicBoxGeometry = elemement.geometry
        
        basicBoxGeometry.materials = elemement.materials
        
        let basicBoxNode = SCNNode(geometry: basicBoxGeometry)
        basicBoxNode.name = elemement.name
        
        basicBoxNode.position = elemement.position
        
        rootNode.addChildNode(basicBoxNode)
        
        
        
        
        
    }
    
    func addScenario() {
        
        addScenarioElementLegacy(elemement: .roadInitialSegment)
        addScenarioElementLegacy(elemement: .roadMidSegment)
        addScenarioElementLegacy(elemement: .roadFinalSegment)
        addScenarioElement(element: .wall, category: .beginWall)
        addScenarioElementLegacy(elemement: .beginSideWalk)
        addScenarioElementLegacy(elemement: .firstBuilding)
        addScenarioElementLegacy(elemement: .secondBuilding)
        addScenarioElement(element: .thirdBuilding, category: .thirdBuilding)
        addScenarioElement(element: .fourthBuilding, category: .fourthBuilding)
        addScenarioElement(element: .fifthBuilding, category: .fifthBuilding)
        addScenarioElement(element: .finalBuilding, category: .finalBuilding)
        addScenarioElementLegacy(elemement: .endSideWalk)
        addScenarioElement(element: .wall, category: .endWall)
        
    }
    
}
