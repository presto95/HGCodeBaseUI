//
//  TableViewBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 11/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum TableViewBuilder {
  
  public enum RegisterMethod {
    
    case nib(UINib?, reuseIdentifier: String)
    
    case `class`(AnyObject.Type, reuseIdentifier: String)
  }
  
  public enum RegisterView {
    
    case cell(RegisterMethod)
    
    case headerFooter(RegisterMethod)
  }
  
  public enum Separator {
    
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
  
  public enum SectionIndex {
    
    case each(minimumDisplayRowCount: Int,
              color: UIColor?,
              backgroundColor: UIColor?,
              trackingBackgroundColor: UIColor?)
    
    case minimumDisplayRowCount(Int)
    
    case color(UIColor?)
    
    case backgroundColor(UIColor?)
    
    case trackingBackgroundColor(UIColor?)
  }
  
  public enum SectionView {
    
    case each(header: UIView?, footer: UIView?)
    
    case header(UIView?)
    
    case footer(UIView?)
  }

  public enum Height {
    
    public enum HeightType {
    
      case plain(CGFloat)
      
      case estimated(CGFloat)
    }
    
    case each(row: HeightType, sectionHeader: HeightType, sectionFooter: HeightType)
    
    case row(HeightType)
    
    case sectionHeader(HeightType)
    
    case sectionFooter(HeightType)
    
    case sectionHeaderFooter(HeightType)
  }
}

#endif
