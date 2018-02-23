//
//  ARSceneView+Extension.swift
//  ARuler
//
//  Created by Thomas Dubiel on 21.02.18.
//  Copyright © 2018 Thomas Dubiel. All rights reserved.
//

import ARKit

extension ARSCNView {
   
   func worldVector(for position: CGPoint) -> SCNVector3? {
      let results = self.hitTest(position, types: [.featurePoint])
      guard let result = results.first else {
         return nil
      }
      
      return SCNVector3.positionFromTransform(result.worldTransform)
   }
}
