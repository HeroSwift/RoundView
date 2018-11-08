//
//  ViewController.swift
//  Example
//
//  Created by zhujl on 2018/11/8.
//  Copyright © 2018年 finstao. All rights reserved.
//

import UIKit
import RoundView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let roundView = RoundView()
        roundView.translatesAutoresizingMaskIntoConstraints = false
        roundView.centerImage = UIImage(named: "voice")
        roundView.delegate = self
        view.addSubview(roundView)
        
        view.addConstraints([
            NSLayoutConstraint(item: roundView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: roundView, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0),
        ])
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: RoundViewDelegate {
    
    func roundViewDidTouchDown(_ roundView: RoundView) {
        print("down")
    }
    
    func roundViewDidTouchUp(_ roundView: RoundView, _ inside: Bool) {
        print("up \(inside)")
    }
    
    func roundViewDidTouchEnter(_ roundView: RoundView) {
        print("enter")
    }
    
    func roundViewDidTouchLeave(_ roundView: RoundView) {
        print("leave")
    }
    
    func roundViewDidTouchMove(_ roundView: RoundView, _ x: CGFloat, _ y: CGFloat) {
        print("move \(x) \(y)")
    }
    
}
