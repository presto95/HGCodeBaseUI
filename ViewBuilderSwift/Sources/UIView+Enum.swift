//
//  UIView+Enum.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import UIKit

extension UIView {
  
  enum Point<Dimension> where Dimension: DimensionProtocol {
    
    case each(x: Dimension, y: Dimension)
    
    case all(Dimension)
    
    case zero
  }
  
  enum Size<Dimension> where Dimension: DimensionProtocol {
    
    case each(width: Dimension, height: Dimension)
    
    case all(Dimension)
    
    case zero
  }
  
  enum Rectangle<Dimension> where Dimension: DimensionProtocol {
    
    case each(x: Dimension, y: Dimension, width: Dimension, height: Dimension)
    
    case grouped(origin: Point<Dimension>, size: Size<Dimension>)
    
    case all(Dimension)
    
    case zero
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
    
    case each(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat)
    
    case symmetric(horizontal: CGFloat, vertical: CGFloat)
    
    case all(CGFloat)
    
    case zero
  }
  
  enum Shadow<Dimension> where Dimension: DimensionProtocol {
    
    case each(color: UIColor?, offset: Point<Dimension>)
    
    case color(UIColor?)
    
    case offset(Point<Dimension>)
  }
  
  enum Text {
    
    case plain(String?)
    
    case attributed(String, attributes: [NSAttributedString.Key: Any])
  }
}
