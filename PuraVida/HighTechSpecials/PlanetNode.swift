//
//  PlanetNode.swift
//  PuraVida
//
//  Created by Jerry Ren on 5/13/20.
//  Copyright © 2020 Jerry Ren. All rights reserved.
//

import SceneKit

class PlanetNode: SCNNode {
    
    override init() {
        super.init()
        self.geometry = SCNSphere(radius: 1)
        self.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "Diffuse")
        self.geometry?.firstMaterial?.emission.contents = UIImage(named: "Emission")
        self.geometry?.firstMaterial?.normal.contents = UIImage(named: "Normal")
        self.geometry?.firstMaterial?.specular.contents = UIImage(named: "Specular")
        
        self.geometry?.firstMaterial?.shininess = 77
        
        
        
        let action = SCNAction.rotate(by: 360 * CGFloat(Double.pi / 360), around: SCNVector3(0, 1, 0), duration: 7)
        let repeatedAction = SCNAction.repeatForever(action)
        self.runAction(repeatedAction)
         
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}
