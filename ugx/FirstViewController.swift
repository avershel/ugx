//
//  FirstViewController.swift
//  ugx
//
//  Created by Austin Vershel on 8/2/16.
//  Copyright © 2016 Austin Vershel. All rights reserved.
//

import UIKit
import ResearchKit

class FirstViewController: UIViewController {

    @IBOutlet var privacybutton: UIButton!
    @IBOutlet var termsbutton: UIButton!
    @IBOutlet var joinstudybutton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        joinstudybutton.layer.cornerRadius = 2;
        joinstudybutton.layer.borderWidth = 1;
        joinstudybutton.layer.borderColor = UIColor(red:0.42, green:0.60, blue:0.03, alpha:1.0).CGColor

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func privacyAction(sender: AnyObject) {
    }
    @IBAction func termsAction(sender: AnyObject) {
    }

    @IBAction func joinStudyAction(sender: AnyObject) {
        performSegueWithIdentifier("maintosurvey", sender: nil)

    }

}

