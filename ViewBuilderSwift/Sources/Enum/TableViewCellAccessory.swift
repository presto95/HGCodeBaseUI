//
//  TableViewCellAccessory.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum TableViewCellAccessory {
  
  case each(type: UITableViewCell.AccessoryType,
            view: UIView?,
            editingType: UITableViewCell.AccessoryType,
            editingView: UIView?)
  
  case normal(type: UITableViewCell.AccessoryType, view: UIView?)
  
  case editing(type: UITableViewCell.AccessoryType, view: UIView?)
  
  case type(UITableViewCell.AccessoryType)
  
  case view(UIView?)
  
  case editingType(UITableViewCell.AccessoryType)
  
  case editingView(UIView?)
}

#endif
