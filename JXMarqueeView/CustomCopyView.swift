//
//  CustomCopyView.swift
//  JXMarqueeView
//
//  Created by jiaxin on 2018/8/24.
//  Copyright © 2018年 jiaxin. All rights reserved.
//

import UIKit

class CustomCopyView: UIView {
    var circleView: UIView?
    var shadowView: UIView?

    override init(frame: CGRect) {
        super.init(frame: frame)

        initializeViews()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //一定要实现该方法，拷贝的时候，调用NSKeyedUnarchiver.unarchiveObject(with: archivedData)方法，会调用该方法
        initializeViews()
    }

    func initializeViews() {
        circleView = UIView()
        circleView?.backgroundColor = .yellow
        circleView?.layer.cornerRadius = 15;
        circleView?.layer.masksToBounds = true
        addSubview(circleView!)

        shadowView = UIView()
        shadowView?.backgroundColor = .green
        shadowView?.layer.shadowOpacity = 0.6
        shadowView?.layer.shadowColor = UIColor.black.cgColor
        shadowView?.layer.shadowOffset = CGSize(width: 3, height: 3)
        shadowView?.layer.shadowRadius = 3
        addSubview(shadowView!)

        self.backgroundColor = .red
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        self.layer.cornerRadius = self.bounds.height/2
        circleView?.frame = CGRect(x: 10, y: 10, width: 30, height: 30)
        shadowView?.frame = CGRect(x: self.bounds.size.width - 30 - 10, y: 10, width: 30, height: 30)
    }

    //如果要对拷贝视图进行特殊操作，就重写该方法进行自定义返回
//    override func copyMarqueeView() -> UIView {
//
//    }
}
