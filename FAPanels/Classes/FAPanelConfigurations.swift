//
//  FAPaenl+Configurations.swift
//  FAPanels
//
//  Created by Fahid Attique on 25/06/2017.
//  Copyright © 2017 Fahid Attique. All rights reserved.
//

import Foundation
import UIKit





// Enum to get visible state of panels

public enum FAPanelVisibleState: Int {
    case center = 0, left, right
}








// Configurations for Panels

open class FAPanelConfigurations: NSObject {
    
    
    public override init() {
        super.init()
    }

    
    // overrides leftPanelGapPercentage
    
    open var leftPanelWidth : CGFloat = 280
    open var rightPanelWidth: CGFloat = 280
    
    open var leftPanelGapPercentage : CGFloat = 0.8
    open var rightPanelGapPercentage: CGFloat = 0.8
    
    
    
    
    // resizes all subviews as well
    
    open var resizeLeftPanel : Bool = false
    open var resizeRightPanel: Bool = false
    
    
    
    // Adds push animation on side panels
    
    open var pusheSidePanels: Bool = false
    
    
    
    
    // Bounce effects on panel animations
    
    open var bounceOnLeftPanelOpen  : Bool = true
    open var bounceOnRightPanelOpen : Bool = true
    open var bounceOnCenterPanelOpen: Bool = true
    
    
    open var bounceOnLeftPanelClose   : Bool = false
    open var bounceOnRightPanelClose  : Bool = false
    open var bounceOnCenterPanelChange: Bool = true
    
    open var bouncePercentage : CGFloat = 0.075
    open var bounceDuration   : CGFloat = 0.1
    
    
    
    
    //  Panning Gesture
    
    open var canRecognizePanGesture: Bool = true
    
    open var panFromEdge          : Bool = false
    open var minEdgeForLeftPanel  : CGFloat = 70.0
    open var minEdgeForRightPanel : CGFloat = 70.0
    
    open var canLeftSwipe : Bool = true
    open var canRightSwipe: Bool = true
    
    open var dimmingColor = UIColor.clear
    
    
    
    
    // restricts panning gesture to work for top VC of Navigation/TabBar Controller
    
    open var restrictPanningToTopVC: Bool = true
    
    
    
    
    // Handles the interface auto rotation of visible panel
    
    open var handleAutoRotation: Bool = true
    
    
    
    
    // Applies corner radius to panels
    
    open var cornerRadius: CGFloat = 0.0
    
    
    
    
    // Remove panels from super view when possible
    
    open var unloadRightPanel: Bool = false
    open var unloadLeftPanel : Bool = false
    
    
    
    
    // Max animation duration for animations of side panels
    
    open var maxAnimDuration  : CGFloat = 0.15
    
    
    
    
    // percentage of screen's width to the centerPanel.view must move for panGesture to succeed
    
    open var minMovePercentage: CGFloat = 0.15
    
    
    
    
    // Only Center Panel Change animation
    
    open var changeCenterPanelAnimated : Bool = true
    open var centerPanelTransitionType : FAPanelTransitionType = .boxFade
    open var centerPanelTransitionDuration: TimeInterval = 0.40
    
}







// Enum for center panel transition type

public enum FAPanelTransitionType: UInt {
    
    case
    
    flipFromLeft = 0,
    flipFromRight,
    flipFromTop,
    flipFromBottom,
    
    curlUp,
    curlDown,
    
    crossDissolve,

    moveRight,
    moveLeft,
    moveUp,
    moveDown,

    splitHorizontally,
    splitVertically,

    
    dumpFall,
    
    boxFade

    
    func transitionOption() -> Any {
        
        switch self {
            
            
        case .flipFromLeft:
            return UIViewAnimationOptions.transitionFlipFromLeft
            
        case .flipFromRight:
            return UIViewAnimationOptions.transitionFlipFromRight
            
        case .flipFromTop:
            return UIViewAnimationOptions.transitionFlipFromTop
            
        case .flipFromBottom:
            return UIViewAnimationOptions.transitionFlipFromBottom
            
            
            
            
            
        case .curlUp:
            return UIViewAnimationOptions.transitionCurlUp
            
        case .curlDown:
            return UIViewAnimationOptions.transitionCurlDown
            
            
            
            
            
        case .crossDissolve:
            return UIViewAnimationOptions.transitionCrossDissolve
            
            
            
            
            
        case .moveRight:
            return FAPanelTransitionType.moveRight

        case .moveLeft:
            return FAPanelTransitionType.moveLeft

        case .moveUp:
            return FAPanelTransitionType.moveUp

        case .moveDown:
            return FAPanelTransitionType.moveDown

            
            
            
            
            
        case .splitHorizontally:
            return FAPanelTransitionType.splitHorizontally

        case .splitVertically:
            return FAPanelTransitionType.splitVertically
         


        
        case .dumpFall:
            return FAPanelTransitionType.dumpFall

            
            
        case .boxFade:
            return FAPanelTransitionType.boxFade

        }
    }
}
