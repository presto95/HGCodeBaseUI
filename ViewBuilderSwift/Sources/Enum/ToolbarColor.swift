//
//  ToolbarColor.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

enum ToolbarColor {
  
  case each(bar: UIColor?, item: UIColor!)
  
  case bar(UIColor?)
  
  case item(UIColor!)
}

#endif
