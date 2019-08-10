//
//  StepperImage.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum StepperImage {
  
  case each(background: (UIImage?, state: UIControl.State),
            decrement: (UIImage?, state: UIControl.State),
            divider: (UIImage?,
                      leftSegmentState: UIControl.State,
                      rightSegmentState: UIControl.State),
            increment: (UIImage?, state: UIControl.State))
  
  case background(UIImage?, state: UIControl.State)
  
  case decrement(UIImage?, state: UIControl.State)
  
  case divider(UIImage?, leftSegmentStaet: UIControl.State, rightSegmentState: UIControl.State)
  
  case increment(UIImage?, state: UIControl.State)
}

#endif
