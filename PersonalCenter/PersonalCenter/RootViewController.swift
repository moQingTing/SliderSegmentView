//
//  RootViewController.swift
//  PersonalCenter
//
//  Created by mqt on 2018/5/11.
//  Copyright © 2018年 mqt. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    @IBOutlet weak var personalCenterBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.personalCenterBtn.addTarget(self, action: #selector(self.click(sender:)), for: .touchUpInside)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc func click(sender:UIButton){
        let vc = PersonalCenterViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}
