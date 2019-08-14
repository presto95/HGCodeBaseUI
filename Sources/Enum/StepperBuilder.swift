//
//  StepperBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 11/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum StepperBuilder {
  
  public enum Image {
    
    case each(background: (UIImage?, state: UIControl.State),
              decrement: (UIImage?, state: UIControl.State),
              divider: (UIImage?,
                        leftSegmentState: UIControl.State,
                        rightSegmentState: UIControl.State),
              increment: (UIImage?, state: UIControl.State))
    
    case background(UIImage?, state: UIControl.State)
    
    case decrement(UIImage?, state: UIControl.State)
    
    case divider(UIImage?, leftSegmentState: UIControl.State, rightSegmentState: UIControl.State)
    
    case increment(UIImage?, state: UIControl.State)
  }
}

#endif
