//
//  ViewController.swift
//  ParticleTest
//
//  Created by Steph Grosch on 1/4/21.
//  Copyright © 2021 Steph Grosch. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    
    private let skView = SKView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        initSkScene()
    }

    private func setupUI() {
        self.view.backgroundColor = .black
        
        view.addSubview(skView)
        
        skView.translatesAutoresizingMaskIntoConstraints = false
        
        let top = skView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0)
        let leading = skView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0)
        let trailing = skView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
        let bottom = skView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        
        NSLayoutConstraint.activate([top, leading, trailing, bottom])
    }
    private func initSkScene() {
        let particleScene = particlescene(size: CGSize(width: 1080, height: 1920))
        particleScene.scaleMode = .aspectFill
        particleScene.backgroundColor = .clear
        
        skView.presentScene(particleScene)
}

}
