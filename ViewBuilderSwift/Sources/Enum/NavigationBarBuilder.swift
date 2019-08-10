//
//  NavigationBarBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 11/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum NavigationBarBuilder {
  
  public enum TextAttributes {
    
    case each(title: [NSAttributedString.Key: Any]?, largeTitle: [NSAttributedString.Key: Any]?)
    
    case title([NSAttributedString.Key: Any]?)
    
    case largeTitle([NSAttributedString.Key: Any]?)
  }
  
  public enum BackIndicatorImage {
    
    case each(normal: UIImage?, transitionMask: UIImage?)
    
    case normal(UIImage?)
    
    case transitionMask(UIImage?)
  }
}

#endif
