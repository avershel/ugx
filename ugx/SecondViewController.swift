//
//  SecondViewController.swift
//  ugx
//
//  Created by Austin Vershel on 8/2/16.
//  Copyright © 2016 Austin Vershel. All rights reserved.
//

import UIKit
import ResearchKit

class SecondViewController: UIViewController,UITextViewDelegate {

    @IBOutlet var abouttextview: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
        
        super.viewDidLayoutSubviews()
//        abouttextview.contentOffset.y = 0
//        abouttextview.delegate = self;
//        abouttextview.scrollRangeToVisible(NSMakeRange(0, 0))
        abouttextview.scrollEnabled = false;
//        abouttextview.setContentOffset(CGPointZero, animated: false)
//        abouttextview.setContentOffset(CGPointZero, animated: false)
//        abouttextview.set
    }

    override func viewDidAppear(animated: Bool) {
        abouttextview.scrollEnabled = true;

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

