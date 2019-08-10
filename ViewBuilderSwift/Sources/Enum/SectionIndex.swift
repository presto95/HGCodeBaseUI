//
//  SectionIndex.swift
//  ViewBuilderSwift
//
//  Created by Presto on 09/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

enum SectionIndex {
  
  case each(minimumDisplayRowCount: Int,
            color: UIColor?,
            backgroundColor: UIColor?,
            trackingBackgroundColor: UIColor?)
  
  case minimumDisplayRowCount(Int)
  
  case color(UIColor?)
  
  case backgroundColor(UIColor?)
  
  case trackingBackgroundColor(UIColor?)
}

#endif
