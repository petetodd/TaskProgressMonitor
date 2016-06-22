//
//  BlinkingLabel.swift
//  Pods
//
//  Created by Peter Todd Air on 21/06/2016.
//
//

public class BlinkingLabel : UILabel {
    public func startBlinking() {
        let options : UIViewAnimationOptions = [.Repeat , .Autoreverse]
        UIView.animateWithDuration(0.25, delay:0.0, options:options, animations: {
            self.alpha = 0
            }, completion: nil)
    }
    
    public func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations()
    }
}