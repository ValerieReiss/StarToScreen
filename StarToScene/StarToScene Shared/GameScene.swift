//
//  GameScene.swift
//  StarToScene Shared
//
//  Created by Valerie on 05.03.23.
//

import SpriteKit

class GameScene: SKScene {
    
    class func newGameScene() -> GameScene {
        guard let scene = SKScene(fileNamed: "GameScene") as? GameScene else {
            print("Failed to load GameScene.sks")
            abort()
        }
        scene.scaleMode = .aspectFill
        return scene
    }
    
    override func didMove(to view: SKView) {
        
        let button = SKSpriteNode(imageNamed: "zodiac6")
            button.anchorPoint = CGPoint(x:0.5, y:0.5)
            button.position = CGPoint(x: 0, y: 0)
        button.size = CGSize(width: frame.height, height: frame.height)
            button.zPosition = 1
            self.addChild(button)
                
        let but0 = UIButton(type: UIButton.ButtonType.system) as UIButton
            but0.anchorPoint = CGPoint(x:0.5, y:0.5)
            but0.frame = CGRect(x:0, y:0, width:frame.width, height:frame.height)
            //but0.backgroundColor = UIColor.white
            but0.addTarget(self, action: #selector(self.buttonAction), for: .touchUpInside)
            self.view?.addSubview(but0)
    }

    @objc func buttonAction(_ sender:UIButton!)
    {
        print("go to GameScene2")
        if let view = self.view {
            if let scene = GameScene2(fileNamed: "GameScene2") {
                view.presentScene(scene)
            }
        }
    }
    
}
