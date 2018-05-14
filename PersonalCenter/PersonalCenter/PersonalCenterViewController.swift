//
//  ViewController.swift
//  PersonalCenter
//
//  Created by mqt on 2018/5/11.
//  Copyright © 2018年 mqt. All rights reserved.
//

import UIKit

class PersonalCenterViewController: UIViewController {

    /// 是否放大
    var  isEnlarge = false
    
    /// 下拉操作下方talbeView 是否刷新
    var isRefreshOfdownPull = false
    
    /// 当前选中的分页视图下标
    var selectIndex = 0
    
    lazy var segView:CenterSegmentView = {
        let nameArray = ["普吉岛","夏威夷","洛杉矶","杭州","长城"]
        let vc1 = FirstViewController()
        let vc2 = SecondViewController()
        let vc3 = ThirdViewController()
        let vc4 = FirstViewController()
        let vc5 = SecondViewController()
        
        let controollers = [vc1,vc2,vc3,vc4,vc5]
        
        let view = CenterSegmentView(frame: CGRect(x: 0, y: 90, width: self.view.bounds.size.width, height: self.view.bounds.size.height), controllers: controollers, titleArray: nameArray, selectIndex: self.selectIndex, lineHeight: 2)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.segView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

