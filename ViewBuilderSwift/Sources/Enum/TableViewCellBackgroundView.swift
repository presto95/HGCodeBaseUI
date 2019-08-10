//
//  TableViewCellBackgroundView.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum TableViewCellBackgroundView {
  
  case each(normal: UIView?, selected: UIView?, multipleSelection: UIView?)
  
  case normal(UIView?)
  
  case selected(UIView?)
  
  case multipleSelection(UIView?)
}

#endif
