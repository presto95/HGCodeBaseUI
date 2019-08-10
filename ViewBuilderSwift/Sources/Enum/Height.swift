//
//  Height.swift
//  ViewBuilderSwift
//
//  Created by Presto on 09/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

enum Height {
  
  case each(row: CGFloat, sectionHeader: CGFloat, sectionFooter: CGFloat)
  
  case row(CGFloat)
  
  case sectionHeader(CGFloat)
  
  case sectionFooter(CGFloat)
  
  case sectionHeaderFooter(CGFloat)
}

#endif
