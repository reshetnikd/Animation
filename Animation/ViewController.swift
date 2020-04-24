//
//  ViewController.swift
//  Animation
//
//  Created by Dmitry Reshetnik on 24.04.2020.
//  Copyright © 2020 Dmitry Reshetnik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageView: UIImageView!
    var currentAnimation = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView = UIImageView(image: UIImage(named: "penguin"))
        imageView.center = CGPoint(x: 512, y: 384)
        view.addSubview(imageView)
    }

    @IBAction func tapped(_ sender: UIButton) {
        sender.isHidden = true
        
        UIView.animate(
            withDuration: 1,
            delay: 0,
            options: [],
            animations: {
                switch self.currentAnimation {
                case 0:
                    break
                    
                default:
                    break
                }
            },
            completion: { finished in
                sender.isHidden = false
            }
        )
        
        currentAnimation += 1
        
        if currentAnimation > 7 {
            currentAnimation = 0
        }
    }
    
}

