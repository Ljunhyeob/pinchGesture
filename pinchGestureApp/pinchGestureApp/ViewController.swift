//
//  ViewController.swift
//  pinchGestureApp
//
//  Created by 이준협 on 2023/01/12.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.doPinch(_ :)))
        self.view.addGestureRecognizer(pinch)
        
    }
    
    @objc func doPinch(_ pinch: UIPinchGestureRecognizer){
        image.transform = image.transform.scaledBy(x: pinch.scale, y: pinch.scale)
        pinch.scale = 1
    }

}

