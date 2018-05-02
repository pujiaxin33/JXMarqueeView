//
//  CustomViewController.swift
//  JXMarqueeView
//
//  Created by jiaxin on 2018/5/2.
//  Copyright © 2018年 jiaxin. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {
    private let marqueeView = JXMarqueeView()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white

        let view = CustomView()
        marqueeView.contentView = view
        marqueeView.marqueeType = .reverse
        marqueeView.pointsPerFrame = 0.2
        self.view.addSubview(marqueeView)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        marqueeView.bounds = CGRect(x:0, y:0, width: self.view.bounds.width, height: 500)
        marqueeView.center = self.view.center
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
