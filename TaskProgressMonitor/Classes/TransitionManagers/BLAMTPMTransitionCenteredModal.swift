//
//  BLAMTPMTransitionCenteredModal.swift
//  Pods
//
//  Created by Peter Todd Air on 25/06/2016.
//
//

import UIKit

public class BLAMTPMTransitionCenteredModal: NSObject, UIViewControllerTransitioningDelegate {
    let transitionLogon = BLAMTPMTransitionCenteredAnimator()
    var originCallingFrame:CGRect = CGRect.zero
    
    
    
    public func animationControllerForPresentedController(
        presented: UIViewController,
        presentingController presenting: UIViewController,
                             sourceController source: UIViewController) ->
        UIViewControllerAnimatedTransitioning? {
            
            transitionLogon.presenting = true
            transitionLogon.originFrame = originCallingFrame
            
            return transitionLogon
    }
    
    public func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        return nil
    }
}
