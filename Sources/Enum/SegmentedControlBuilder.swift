//
//  SegmentedControlBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 11/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum SegmentedControlBuilder {

  public enum Image {
    
    case each(background: (UIImage?, state: UIControl.State, barMetrics: UIBarMetrics),
              divider: (UIImage?,
                        leftSegmentState: UIControl.State,
                        rightSegmentState: UIControl.State,
                        barMetrcis: UIBarMetrics))
    
    case background(UIImage?, state: UIControl.State, barMetrics: UIBarMetrics)
    
    case divider(UIImage?,
                leftSegmentState: UIControl.State,
                rightSegmentState: UIControl.State,
                barMetrcis: UIBarMetrics)
  }
}

#endif
