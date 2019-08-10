//
//  SliderValue.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

enum SliderValue {
  
  case each(Float, maximum: Float, minimum: Float)
  
  case range(maximum: Float, minimum: Float)
  
  case value(Float)
  
  case maximum(Float)
  
  case minimum(Float)
}
