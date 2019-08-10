//
//  ToolbarImage.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum ToolbarImage {
  
  case each(background: (UIImage?, toolbarPosition: UIBarPosition, barMetrics: UIBarMetrics),
            shadow: (UIImage?, toolbarPosition: UIBarPosition))
  
  case background(UIImage?, toolbarPosition: UIBarPosition, barMetrics: UIBarMetrics)
  
  case shadow(UIImage?, toolbarPosition: UIBarPosition)
}

#endif
