//
//  DatePickerDate.swift
//  ViewBuilderSwift
//
//  Created by Presto on 09/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum DatePickerDate {
  
  case each(Date, maximumDate: Date?, minimumDate: Date?)
  
  case range(maximum: Date?, minimum: Date?)
  
  case date(Date)
  
  case maximum(Date?)
  
  case minimum(Date?)
}

#endif
