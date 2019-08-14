//
//  DatePickerBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 11/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum DatePickerBuilder {
  
  public enum DateType {
    
    case each(Date, min: Date?, max: Date?)
    
    case range(min: Date?, max: Date?)
    
    case date(Date)
    
    case min(Date?)
    
    case max(Date?)
  }
}

#endif
