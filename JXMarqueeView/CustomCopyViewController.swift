//
//  CustomCopyViewController.swift
//  JXMarqueeView
//
//  Created by jiaxin on 2018/8/24.
//  Copyright © 2018年 jiaxin. All rights reserved.
//

import UIKit

class CustomCopyViewController: UIViewController {
    private let marqueeView = JXMarqueeView()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white

        let customView = CustomCopyView(frame: CGRect(x: 0, y: 100, width: 300, height: 50))
        marqueeView.contentView = customView
        marqueeView.marqueeType = .left
        marqueeView.pointsPerFrame = 0.2
        self.view.addSubview(marqueeView)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        marqueeView.bounds = CGRect(x:0, y:0, width: self.view.bounds.width - 200, height: 50)
        marqueeView.center = self.view.center
    }

}
