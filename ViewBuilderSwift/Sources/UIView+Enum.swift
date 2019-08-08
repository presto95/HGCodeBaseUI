//
//  UIView+Enum.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import UIKit

extension UIView {
  
  enum Rectangle<T> where T: DimensionProtocol {
    
    case each(x: T, y: T, width: T, height: T)
    
    case grouped(origin: CGPoint, size: CGSize)
  }
  
  enum Transform {
    
    case rotation(angle: CGFloat)
    
    case scale(x: CGFloat, y: CGFloat)
    
    case translation(x: CGFloat, y: CGFloat)
    
    case identity
  }
  
  enum GestureRecognizer {
    
    case tap(target: Any?, action: Selector?)
    
    case pinch(target: Any?, action: Selector?)
    
    case rotation(target: Any?, action: Selector?)
    
    case swipe(target: Any?, action: Selector?)
    
    case pan(target: Any?, action: Selector?)
    
    case screenEdgePan(target: Any?, action: Selector?)
    
    case longPress(target: Any?, action: Selector?)
  }
  
  enum EdgeInsets {
    
    case each(top: Double, left: Double, bottom: Double, right: Double)
    
    case symmetric(horizontal: Double, vertical: Double)
    
    case all(Double)
  }
}
