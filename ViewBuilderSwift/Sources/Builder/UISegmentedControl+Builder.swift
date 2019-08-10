//
//  UISegmentedControl+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

extension Builder where Base: UISegmentedControl {
  
  // MARK: - Managing Segment Content & Managing Segments
  
  @discardableResult
  func segment(_ segmentSetting: SegmentSetting, animated: Bool = false) -> Builder {
    switch segmentSetting {
    case let .insert(segment, index):
      switch segment {
      case let .image(image):
        base.insertSegment(with: image, at: index, animated: animated)
      case let .title(title):
        base.insertSegment(withTitle: title, at: index, animated: animated)
      }
    case let .modify(segment, index):
      switch segment {
      case let .image(image):
        base.setImage(image, forSegmentAt: index)
      case let .title(title):
        base.setTitle(title, forSegmentAt: index)
      }
    }
    return self
  }
  
  @discardableResult
  func selectedSegmentIndex(_ index: Int) -> Builder {
    base.selectedSegmentIndex = index
    return self
  }
  
  // MARK: - Managing Segment Behavior and Appearance
  
  @discardableResult
  func isMomentary(_ flag: Bool) -> Builder {
    base.isMomentary = flag
    return self
  }
  
  @discardableResult
  func isEnabled(_ flag: Bool, forSegmentAt index: Int) -> Builder {
    base.setEnabled(flag, forSegmentAt: index)
    return self
  }
  
  @discardableResult
  func contentOffset(_ offset: Size<Int>, forSegmentAt index: Int) -> Builder {
    switch offset {
    case let .each(width, height):
      base.setContentOffset(.init(width: width, height: height), forSegmentAt: index)
    case let .all(value):
      base.setContentOffset(.init(width: value, height: value), forSegmentAt: index)
    case .zero:
      base.setContentOffset(.zero, forSegmentAt: index)
    }
    return self
  }
  
  @discardableResult
  func contentOffset(_ offset: Size<Double>,
                     forSegmentAt index: Int) -> Builder {
    switch offset {
    case let .each(width, height):
      base.setContentOffset(.init(width: width, height: height), forSegmentAt: index)
    case let .all(value):
      base.setContentOffset(.init(width: value, height: value), forSegmentAt: index)
    case .zero:
      base.setContentOffset(.zero, forSegmentAt: index)
    }
    return self
  }
  
  @discardableResult
  func contentOffset(_ offset: Size<CGFloat>,
                     forSegmentAt index: Int) -> Builder {
    switch offset {
    case let .each(width, height):
      base.setContentOffset(.init(width: width, height: height), forSegmentAt: index)
    case let .all(value):
      base.setContentOffset(.init(width: value, height: value), forSegmentAt: index)
    case .zero:
      base.setContentOffset(.zero, forSegmentAt: index)
    }
    return self
  }
  
  @discardableResult
  func width(_ width: CGFloat, forSegmentAt index: Int) -> Builder {
    base.setWidth(width, forSegmentAt: index)
    return self
  }
  
  @discardableResult
  func apportionsSegmentWidthsByContent(_ flag: Bool) -> Builder {
    base.apportionsSegmentWidthsByContent = flag
    return self
  }
  
  // MARK: - Customizing Appearance
  
  @discardableResult
  func backgroundImage(_ image: UIImage?,
                       for state: UIControl.State = .normal,
                       barMetrics: UIBarMetrics = .default) -> Builder {
    base.setBackgroundImage(image, for: state, barMetrics: barMetrics)
    return self
  }
  
  @discardableResult
  func contentPositionAdjustment(_ adjustment: UIOffset,
                                 forSegmentType segmentType: UISegmentedControl.Segment,
                                 barMetrics: UIBarMetrics) -> Builder {
    base.setContentPositionAdjustment(adjustment,
                                                  forSegmentType: segmentType,
                                                  barMetrics: barMetrics)
    return self
  }
  
  @discardableResult
  func dividerImage(_ image: UIImage?,
                    forLeftSegmentState leftSegmentState: UIControl.State,
                    rightSegmentState: UIControl.State,
                    barMetrics: UIBarMetrics) -> Builder {
    base.setDividerImage(image,
                                     forLeftSegmentState: leftSegmentState,
                                     rightSegmentState: rightSegmentState,
                                     barMetrics: barMetrics)
    return self
  }
  
  @discardableResult
  func titleTextAttributes(_ attributes: [NSAttributedString.Key: Any],
                           for state: UIControl.State) -> Builder {
    base.setTitleTextAttributes(attributes, for: state)
    return self
  }
}

#endif
