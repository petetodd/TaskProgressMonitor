//
//  ViewController.swift
//  TaskProgressMonitor
//
//  Created by Peter Todd on 06/21/2016.
//  Copyright (c) 2016 Peter Todd. All rights reserved.
//

import UIKit
import TaskProgressMonitor


class ViewController: UIViewController {
    
    var isBlinking = false
    let blinkingLabel = BlinkingLabel(frame: CGRectMake(10, 20, 200, 30))
    
    override func viewDidLoad() {
        super.viewDidLoad()
 /*
        // Setup the BlinkingLabel
        blinkingLabel.text = "I blink!"
        blinkingLabel.font = UIFont.systemFontOfSize(20)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true
        
        // Create a UIButton to toggle the blinking
        let toggleButton = UIButton(frame: CGRectMake(10, 60, 125, 30))
        toggleButton.setTitle("Toggle Blinking", forState: .Normal)
        toggleButton.setTitleColor(UIColor.redColor(), forState: .Normal)
        toggleButton.addTarget(self, action: "toggleBlinking", forControlEvents: .TouchUpInside)
        view.addSubview(toggleButton)
 */
    }
 /*
    func toggleBlinking() {
        if (isBlinking) {
            blinkingLabel.stopBlinking()
        } else {
            blinkingLabel.startBlinking()
        }
        isBlinking = !isBlinking
    }
 */
    
    
    @IBAction func butActionDemo(sender: AnyObject) {
        displayPM("DEMO JOB")
    }
    
    private func displayPM(jobTitle : String?){
        
        
        let podBundle = NSBundle(forClass: BLAMProgressMonitorVC().classForCoder)
        
        if let bundleURL = podBundle.URLForResource("CustomXibs", withExtension: "bundle") {
            
            if let bundle = NSBundle(URL: bundleURL) {
                let dispVC = BLAMProgressMonitorVC(nibName: "BLAMProgressMonitorVC", bundle: bundle)
                presentViewController(dispVC, animated: false, completion: nil)
                
            }else {
                
                assertionFailure("Could not load the bundle")
                
            }
            
        }else {
            
            assertionFailure("Could not create a path to the bundle")
            
        }


    }
    
    
}

