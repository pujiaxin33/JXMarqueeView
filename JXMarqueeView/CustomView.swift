//
//  CustomView.swift
//  JXMarqueeView
//
//  Created by jiaxin on 2018/5/2.
//  Copyright © 2018年 jiaxin. All rights reserved.
//

import UIKit

class CustomView: UIView{
    var poetry: [String]?

    init() {
        super.init(frame: CGRect.zero)

        poetry = ["君不见，黄河之水天上来，奔流到海不复回。",
                  "君不见，高堂明镜悲白发，朝如青丝暮成雪。",
                  "人生得意须尽欢，莫使金樽空对月。",
                  "天生我材必有用，千金散尽还复来。",
                  "烹羊宰牛且为乐，会须一饮三百杯。",
                  "岑夫子，丹丘生，将进酒，杯莫停。",
                  "与君歌一曲，请君为我倾耳听。",
                  "钟鼓馔玉不足贵，但愿长醉不复醒。",
                  "古来圣贤皆寂寞，惟有饮者留其名。",
                  "陈王昔时宴平乐，斗酒十千恣欢谑。",
                  "主人何为言少钱，径须沽取对君酌。",
                  "五花马，千金裘，呼儿将出换美酒，与尔同销万古愁。",]

        for (index,verse) in poetry!.enumerated() {
            let label = UILabel()
            label.configVerticalText(verticalText: verse)
            label.textColor = UIColor.black
            label.frame = CGRect(x: CGFloat(index + 1)*50, y: 0, width: 30, height: 500)
            self.addSubview(label)
        }
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func sizeThatFits(_ size: CGSize) -> CGSize {
        return CGSize(width: CGFloat(poetry!.count + 2)*50, height: size.height)
    }

}
