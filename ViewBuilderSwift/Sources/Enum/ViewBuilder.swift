//
//  ViewBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 11/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum ViewBuilder {
  
  public enum GestureRecognizer {
    
    case tap(target: Any?, action: Selector?)
    
    case pinch(target: Any?, action: Selector?)
    
    case rotation(target: Any?, action: Selector?)
    
    case swipe(target: Any?, action: Selector?)
    
    case pan(target: Any?, action: Selector?)
    
    case screenEdgePan(target: Any?, action: Selector?)
    
    case longPress(target: Any?, action: Selector?)
  }
  
  public enum Transform {
    
    case rotation(angle: CGFloat)
    
    case scale(x: CGFloat, y: CGFloat)
    
    case translation(x: CGFloat, y: CGFloat)
    
    case identity
  }
}

#endif
