//
//  SegmentedControlBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 11/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum SegmentedControlBuilder {
  
  public enum Segment {
    
    case image(UIImage?)
    
    case title(String?)
  }
  
  public enum Setting {
    
    case insert(Segment, index: Int)
    
    case modify(Segment, segmentIndex: Int)
  }
}

#endif
