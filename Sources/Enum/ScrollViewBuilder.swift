//
//  ScrollViewBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 14/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum ScrollViewBuilder {
  
  public enum Content<Dimension> where Dimension: DimensionProtocol {
    
    case each(size: Size<Dimension>, offset: Point<Dimension>, inset: EdgeInsets)
    
    case size(Size<Dimension>)
    
    case offset(Point<Dimension>)
    
    case inset(EdgeInsets)
  }
  
  public enum Direction<T> {
    
    case horizontal(T)
    
    case vertical(T)
  }
  
  public enum Indicator {
    
    case each(style: UIScrollView.IndicatorStyle, insets: EdgeInsets, shows: Direction<Bool>)
    
    case style(UIScrollView.IndicatorStyle)
    
    case insets(EdgeInsets)
    
    case shows(Direction<Bool>)
  }
}

#endif
