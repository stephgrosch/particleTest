//
//  particlescene.swift
//  ParticleTest
//
//  Created by Steph Grosch on 1/4/21.
//  Copyright © 2021 Steph Grosch. All rights reserved.
//

import Foundation
import SpriteKit

class particlescene: SKScene  {
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        
        setupParticleEmitter()
    }
    
    private func setupParticleEmitter() {
        let particleEmitter = SKEmitterNode(fileNamed: "snow")!
        particleEmitter.position = CGPoint(x: size.width / 2, y: size.height - 50)
        addChild(particleEmitter)
    }
}
