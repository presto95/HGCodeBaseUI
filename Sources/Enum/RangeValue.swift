//
//  RangeValue.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum RangeValue<T> where T: Numeric {
  
  case each(value: T, min: T, max: T)
  
  case range(min: T, max: T)
  
  case value(T)
  
  case min(T)
  
  case max(T)
}

#endif
