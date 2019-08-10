//
//  CollectionViewCellBackgroundView.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum CollectionViewCellBackgroundView {
  
  case each(normal: UIView?, selected: UIView?)

  case normal(UIView?)
  
  case selected(UIView?)
}

#endif
