//
//  ViewController2.swift
//  Aula2
//
//  Created by iossenac on 10/09/16.
//  Copyright © 2016 Manuela Tarouco. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBAction func pinchRecognizer(sender: UIPinchGestureRecognizer) {
        print("PinchRecognizer")
        print(sender.scale)
        print(sender.velocity)
    }
    
    
    @IBAction func rotation(sender: UIRotationGestureRecognizer) {
        let rot = sender.rotation
        let velo = sender.velocity
        print(rot)
        print(velo)
    }
}
