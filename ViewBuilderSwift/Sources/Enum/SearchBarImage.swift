//
//  SearchBarImage.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

enum SearchBarImage {
  
  case each(icon: (UIImage?, icon: UISearchBar.Icon, state: UIControl.State),
            background: (UIImage?, barPosition: UIBarPosition, barMetrics: UIBarMetrics),
            scopeBarBackground: (UIImage?, state: UIControl.State),
            scopeBarButtonDivider: (UIImage?,
                                    leftSegmentState: UIControl.State,
                                    rightSegmentState: UIControl.State),
            searchFieldBackground: (UIImage?, state: UIControl.State))
  
  case icon(UIImage?, icon: UISearchBar.Icon, state: UIControl.State)
  
  case background(UIImage?, barPosition: UIBarPosition, barMetrics: UIBarMetrics)
  
  case scopeBarButtonBackground(UIImage?, state: UIControl.State)
  
  case scopeBarButtonDivider(UIImage?,
                            leftSegmentState: UIControl.State,
                            rightSegmentState: UIControl.State)
  
  case searchFieldBackground(UIImage?, state: UIControl.State)
}

#endif
