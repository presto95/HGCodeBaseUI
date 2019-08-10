//
//  PageControlIndicator.swift
//  ViewBuilderSwift
//
//  Created by Presto on 09/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum PageControlIndicator {
  
  case each(page: UIColor?, currentPage: UIColor?)
  
  case page(UIColor?)
  
  case currentPage(UIColor?)
}

#endif
