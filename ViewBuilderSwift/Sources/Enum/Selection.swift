//
//  Selection.swift
//  ViewBuilderSwift
//
//  Created by Presto on 09/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

enum Selection {
  
  case each(single: Bool, multiple: Bool)
  
  case single(Bool)
  
  case multiple(Bool)
}
