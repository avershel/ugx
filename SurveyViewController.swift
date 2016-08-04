//
//  SurveyViewController.swift
//  ugx
//
//  Created by Austin Vershel on 8/2/16.
//  Copyright © 2016 Austin Vershel. All rights reserved.
//

import UIKit
import ResearchKit

class SurveyViewController: UITableViewController {
    
    @IBOutlet var nextbutton: UIBarButtonItem!

    @IBOutlet var participantbutton: UIButton!
    @IBOutlet var caregiverbutton: UIButton!
    var participantbool = false
    var caregiverbool = false

    @IBOutlet var malebutton: UIButton!
    @IBOutlet var femalebutton: UIButton!
    var malebool = false
    var femalebool = false
    
    @IBOutlet var youngbutton: UIButton!
    @IBOutlet var middlebutton: UIButton!
    @IBOutlet var oldbutton: UIButton!
    var youngbool = false
    var middlebool = false
    var oldbool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        nextbutton.enabled = false;
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func validate() {
        if((participantbool || caregiverbool) && (malebool || femalebool) && (youngbool || middlebool || oldbool)){
            nextbutton.enabled = true;
        }
    }
    
    
    @IBAction func cancel(sender: AnyObject) {
        performSegueWithIdentifier("surveytomain", sender: nil)

    }
    
    @IBAction func nextpressed(sender: AnyObject) {
        performSegueWithIdentifier("surveytoconsent", sender: nil)
//        let taskViewController = ORKTaskViewController(task: ConsentTask, taskRunUUID: nil)
//        taskViewController.delegate = self
//        presentViewController(taskViewController, animated: true, completion: nil)
    }
    
    @IBAction func participantpressed(sender: AnyObject) {
        participantbool = true;
        validate();
        participantbutton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        caregiverbutton.setTitleColor(UIColor.darkGrayColor(), forState: UIControlState.Normal)
        //        participantbutton.layer.cornerRadius = 2;
//        participantbutton.layer.borderWidth = 1;
//        participantbutton.layer.borderColor = UIColor.blueColor().CGColor
//        caregiverbutton.layer.cornerRadius = 0;
//        caregiverbutton.layer.borderWidth = 0;

    }
    @IBAction func caregiverpressed(sender: AnyObject) {
        caregiverbool = true;
        validate();
        caregiverbutton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        participantbutton.setTitleColor(UIColor.darkGrayColor(), forState: UIControlState.Normal)
        //        caregiverbutton.layer.cornerRadius = 2;
//        caregiverbutton.layer.borderWidth = 1;
//        caregiverbutton.layer.borderColor = UIColor.blueColor().CGColor
//        participantbutton.layer.cornerRadius = 0;
//        participantbutton.layer.borderWidth = 0;
    }
    
    
    @IBAction func malepressed(sender: AnyObject) {
        malebool = true;
        validate();
        malebutton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        femalebutton.setTitleColor(UIColor.darkGrayColor(), forState: UIControlState.Normal)
//        malebutton.layer.cornerRadius = 2;
//        malebutton.layer.borderWidth = 1;
//        malebutton.layer.borderColor = UIColor.blueColor().CGColor
//        femalebutton.layer.cornerRadius = 0;
//        femalebutton.layer.borderWidth = 0;
    }
    @IBAction func femalepressed(sender: AnyObject) {
        femalebool = true;
        validate();
        femalebutton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        malebutton.setTitleColor(UIColor.darkGrayColor(), forState: UIControlState.Normal)

//        femalebutton.layer.cornerRadius = 2;
//        femalebutton.layer.borderWidth = 1;
//        femalebutton.layer.borderColor = UIColor.blueColor().CGColor
//        malebutton.layer.cornerRadius = 0;
//        malebutton.layer.borderWidth = 0;
    }
    
    @IBAction func youngpressed(sender: AnyObject) {
        youngbool = true;
        validate();
        youngbutton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        oldbutton.setTitleColor(UIColor.darkGrayColor(), forState: UIControlState.Normal)
        middlebutton.setTitleColor(UIColor.darkGrayColor(), forState: UIControlState.Normal)
        //        youngbutton.layer.cornerRadius = 2;
//        youngbutton.layer.borderWidth = 1;
//        youngbutton.layer.borderColor = UIColor.blueColor().CGColor
//        middlebutton.layer.cornerRadius = 0;
//        middlebutton.layer.borderWidth = 0;
//        oldbutton.layer.cornerRadius = 0;
//        oldbutton.layer.borderWidth = 0;
    }
    @IBAction func middlepressed(sender: AnyObject) {
        middlebool = true;
        validate();
        middlebutton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        youngbutton.setTitleColor(UIColor.darkGrayColor(), forState: UIControlState.Normal)
        oldbutton.setTitleColor(UIColor.darkGrayColor(), forState: UIControlState.Normal)
        //        middlebutton.layer.cornerRadius = 2;
//        middlebutton.layer.borderWidth = 1;
//        middlebutton.layer.borderColor = UIColor.blueColor().CGColor
//        youngbutton.layer.cornerRadius = 0;
//        youngbutton.layer.borderWidth = 0;
//        oldbutton.layer.cornerRadius = 0;
//        oldbutton.layer.borderWidth = 0;

    }
    @IBAction func oldpressed(sender: AnyObject) {
        oldbool = true;
        validate();
        oldbutton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        youngbutton.setTitleColor(UIColor.darkGrayColor(), forState: UIControlState.Normal)
        middlebutton.setTitleColor(UIColor.darkGrayColor(), forState: UIControlState.Normal)

//        oldbutton.layer.cornerRadius = 2;
//        oldbutton.layer.borderWidth = 1;
//        oldbutton.layer.borderColor = UIColor.blueColor().CGColor
//        middlebutton.layer.cornerRadius = 0;
//        middlebutton.layer.borderWidth = 0;
//        youngbutton.layer.cornerRadius = 0;
//        youngbutton.layer.borderWidth = 0;

    }
    
    
}

extension SurveyViewController : ORKTaskViewControllerDelegate {
    
    func taskViewController(taskViewController: ORKTaskViewController, didFinishWithReason reason: ORKTaskViewControllerFinishReason, error: NSError?) {
        //Handle results with taskViewController.result
        taskViewController.dismissViewControllerAnimated(true, completion: nil)
    }
    
}

