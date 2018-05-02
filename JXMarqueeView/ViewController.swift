//
//  ViewController.swift
//  JXMarqueeView
//
//  Created by jiaxin on 2018/4/30.
//  Copyright © 2018年 jiaxin. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        switch indexPath.row {
        case 0:
            let marqueeVC = MarqueeViewController()
            marqueeVC.marqueeType = .left
            marqueeVC.title = "往左"
            self.navigationController?.pushViewController(marqueeVC, animated: true)
        case 1:
            let marqueeVC = MarqueeViewController()
            marqueeVC.marqueeType = .right
            marqueeVC.title = "往右"
            self.navigationController?.pushViewController(marqueeVC, animated: true)
        case 2:
            let marqueeVC = MarqueeViewController()
            marqueeVC.marqueeType = .reverse
            marqueeVC.title = "反转"
            self.navigationController?.pushViewController(marqueeVC, animated: true)
        case 3:
            let marqueeVC = MarqueeImageViewViewController()
            marqueeVC.title = "图片"
            self.navigationController?.pushViewController(marqueeVC, animated: true)
        case 4:
            let marqueeVC = CustomViewController()
            marqueeVC.title = "自定义"
            self.navigationController?.pushViewController(marqueeVC, animated: true)
        default:
            break
        }

    }


}

