//
//  BLAMTPMTransitionCenteredAnimator.swift
//  Pods
//
//  Created by Peter Todd Air on 25/06/2016.
//
//

import UIKit

public class BLAMTPMTransitionCenteredAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    
    let duration    = 3.0
    var presenting  = true
    var originFrame = CGRect.zero
    
    
    
    public func transitionDuration(transitionContext: UIViewControllerContextTransitioning?)-> NSTimeInterval {
        return duration
        
    }
    
    public func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        // Create a starting snapshot
        let viewStarting = transitionContext.viewForKey(UITransitionContextFromViewKey)!
        let startSS = viewStarting.snapshotViewAfterScreenUpdates(false)
        // Now blur the start snapshot
        let blurEffect: UIBlurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
        let blurView:UIVisualEffectView = UIVisualEffectView(effect: blurEffect)
        //  blurView.alpha = 0.7
        blurView.frame = startSS.bounds
        startSS.addSubview(blurView)
        
        
        let containerView = transitionContext.containerView()
        
        let toView = transitionContext.viewForKey(UITransitionContextToViewKey)!
        
        // if presenting logonView = toView else logonView = transitionContext.viewForKey(UITransitionContextFromViewKey) (the view at the beginning of transition)
        let displayView = presenting ? toView : transitionContext.viewForKey(UITransitionContextFromViewKey)!
        
        let initialFrame = presenting ? originFrame : displayView.frame
        let finalFrame = presenting ? displayView.frame : originFrame
        
        let xScaleFactor = presenting ?
            initialFrame.width / finalFrame.width :
            finalFrame.width / initialFrame.width
        
        
        let yScaleFactor = presenting ?
            initialFrame.height / finalFrame.height :
            finalFrame.height / initialFrame.height
        
        let scaleTransform = CGAffineTransformMakeScale(xScaleFactor, yScaleFactor)
        
        if presenting {
            displayView.transform = scaleTransform
            displayView.center = CGPoint(
                x: CGRectGetMidX(initialFrame),
                y: CGRectGetMidY(initialFrame))
            displayView.clipsToBounds = true
        }
        containerView!.addSubview(startSS)
        
        containerView!.addSubview(toView)
        containerView!.bringSubviewToFront(displayView)
        
        UIView.animateWithDuration(0.2, animations: {
            displayView.transform = self.presenting ?
                CGAffineTransformIdentity : scaleTransform
            
            displayView.center = CGPoint(x: CGRectGetMidX(viewStarting.frame),
                y: CGRectGetMidY(viewStarting.frame))
            
            }, completion:{_ in
                transitionContext.completeTransition(true)
                
        })
        
        // A springy animation
        /*
         UIView.animateWithDuration(duration, delay:0.0,
         usingSpringWithDamping: 0.4,
         initialSpringVelocity: 0.0,
         options: [],
         animations: {
         displayView.transform = self.presenting ?
         CGAffineTransformIdentity : scaleTransform
         
         displayView.center = CGPoint(x: CGRectGetMidX(viewStarting.frame),
         y: CGRectGetMidY(viewStarting.frame))
         
         }, completion:{_ in
         transitionContext.completeTransition(true)
         
         })
         */
        
        
    }
    
}
