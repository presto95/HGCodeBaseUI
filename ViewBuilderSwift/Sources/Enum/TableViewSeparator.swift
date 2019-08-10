//
//  TableViewSeparator.swift
//  ViewBuilderSwift
//
//  Created by Presto on 09/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum TableViewSeparator {
  
  case each(style: UITableViewCell.SeparatorStyle,
            color: UIColor?,
            effect: UIVisualEffect?,
            inset: EdgeInsets,
            insetReference: UITableView.SeparatorInsetReference)
  
  case style(UITableViewCell.SeparatorStyle)
  
  case color(UIColor?)
  
  case effect(UIVisualEffect?)
  
  case inset(EdgeInsets)
  
  case insetReference(UITableView.SeparatorInsetReference)
}

#endif
