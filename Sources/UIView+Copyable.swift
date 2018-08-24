//
//  UIView+Copyable.swift
//  JXMarqueeView
//
//  Created by jiaxin on 2018/8/24.
//  Copyright © 2018年 jiaxin. All rights reserved.
//

import Foundation
import UIKit

extension UIView: JXMarqueeViewCopyable {
    @objc public func copyMarqueeView() -> UIView {
        let archivedData = NSKeyedArchiver.archivedData(withRootObject: self)
        let copyView = NSKeyedUnarchiver.unarchiveObject(with: archivedData) as! UIView
        return copyView
    }
}
