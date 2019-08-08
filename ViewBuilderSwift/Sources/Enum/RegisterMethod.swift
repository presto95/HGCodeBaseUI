//
//  RegisterMethod.swift
//  ViewBuilderSwift
//
//  Created by Presto on 09/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

internal enum RegisterMethod {
  
  case nib(UINib?, reuseIdentifier: String)
  
  case `class`(AnyObject.Type, reuseIdentifier: String)
}
