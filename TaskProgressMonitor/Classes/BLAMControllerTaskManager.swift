//
//  BLAMControllerTaskManager.swift
//  Pods
//
//  Created by Peter Todd Air on 23/06/2016.
//
//

import UIKit

public class BLAMControllerTaskManager: NSObject {

    public func progressMonitorVC() -> UIViewController{
        
        let podBundle = NSBundle(forClass: self.classForCoder)
        
        if let bundleURL = podBundle.URLForResource("CustomXibs", withExtension: "bundle") {
            
            if let bundle = NSBundle(URL: bundleURL) {
                
                let dispVC = BLAMProgressMonitorVC(nibName: "BLAMProgressMonitorVC", bundle: bundle)
                return dispVC
                
            }else {
                
                assertionFailure("Could not load the bundle")
                return UIViewController()

                
            }
            
        }else {
            
            assertionFailure("Could not create a path to the bundle")
            return UIViewController()

        }

        
        
    }
}
