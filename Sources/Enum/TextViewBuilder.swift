//
//  TextViewBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 13/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum TextViewBuilder {
  
  public enum Attributes {
    
    case each(typing: [NSAttributedString.Key: Any], linkText: [NSAttributedString.Key: Any])
    
    case typing([NSAttributedString.Key: Any])
    
    case linkText([NSAttributedString.Key: Any])
  }
}

#endif
