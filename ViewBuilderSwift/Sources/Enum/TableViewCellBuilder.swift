//
//  TableViewCellBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 11/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum TableViewCellBuilder {
  
  public enum BackgroundView {
    
    case each(normal: UIView?, selected: UIView?, multipleSelection: UIView?)
    
    case normal(UIView?)
    
    case selected(UIView?)
    
    case multipleSelection(UIView?)
  }
  
  public enum Accessory {
    
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
  
  public enum Indentation {
   
    case each(level: Int, width: CGFloat)
    
    case level(Int)
    
    case width(CGFloat)
  }
}

#endif
