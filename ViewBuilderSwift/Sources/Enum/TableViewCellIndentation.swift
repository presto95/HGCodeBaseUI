//
//  TableViewCellIndentation.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum TableViewCellIndentation {
  
  case each(level: Int, width: CGFloat)
  
  case level(Int)
  
  case width(CGFloat)
}

#endif
