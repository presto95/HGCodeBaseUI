//
//  PageControlBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 11/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum PageControlBuilder {
  
  public enum IndicatorColor {
    
    case each(page: UIColor?, currentPage: UIColor?)
    
    case page(UIColor?)
    
    case currentPage(UIColor?)
  }
}

#endif
