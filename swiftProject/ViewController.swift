//
//  ViewController.swift
//  swiftProject
//
//  Created by Vbon on 16/6/17.
//  Copyright © 2016年 Vbon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let scrollView = UIScrollView.init()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        
    }
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        if scrollView.contentSize.height <= UIScreen.mainScreen().bounds.size.height - 64 {
            scrollView.contentSize = CGSize.init(width: UIScreen.mainScreen().bounds.width, height: UIScreen.mainScreen().bounds.height - 64 + 1)
        }
        
//        let navHeight = self.navigationController?.navigationBar.frame.size.height
        
    }

}

