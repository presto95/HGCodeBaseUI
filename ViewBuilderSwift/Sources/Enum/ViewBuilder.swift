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
    
    case tap
    
    case pinch
    
    case rotation
    
    case swipe
    
    case pan
    
    case screenEdgePan
    
    case longPress
  }
  
  public enum Transform {
    
    case rotation(angle: CGFloat)
    
    case scale(x: CGFloat, y: CGFloat)
    
    case translation(x: CGFloat, y: CGFloat)
    
    case identity
  }
  
  public enum Color {
    
    case each(plain: UIColor!, background: UIColor?)
    
    case plain(UIColor!)
    
    case background(UIColor?)
  }
}

#endif
