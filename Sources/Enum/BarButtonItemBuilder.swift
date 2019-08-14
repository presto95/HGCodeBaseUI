//
//  BarButtonItemBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 14/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum BarButtonItemBuilder {
  
  public enum TargetAction {
    
    case each(target: AnyObject?, action: Selector?)
    
    case target(AnyObject?)
    
    case action(Selector?)
  }
}

#endif
