//
//  RangeValue.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum RangeValue<T> where T: Numeric {
  
  case each(T, maximum: T, minimum: T)
  
  case range(maximum: T, mininum: T)
  
  case value(T)
  
  case maximum(T)
  
  case minimum(T)
}

#endif
