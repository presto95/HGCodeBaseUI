//
//  UISegmentedControlBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 09/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

public extension UISegmentedControl {
  
  @discardableResult
  func builder() -> UISegmentedControlBuilder {
    return .init(segmentedControl: self)
  }
}

public final class UISegmentedControlBuilder {
  
  private let segmentedControl: UISegmentedControl
  
  init() {
    segmentedControl = .init()
  }
  
  init(segmentedControl: UISegmentedControl) {
    self.segmentedControl = segmentedControl
  }
  
  // MARK: - Managing Segment Content & Managing Segments
  
  @discardableResult
  func segment(_ segmentSetting: SegmentSetting) -> UISegmentedControlBuilder {
    switch segmentSetting {
    case let .insert(segment, index):
      switch segment {
      case let .image(image):
        segmentedControl.insertSegment(with: image, at: index, animated: false)
      case let .title(title):
        segmentedControl.insertSegment(withTitle: title, at: index, animated: false)
      }
    case let .modify(segment, index):
      switch segment {
      case let .image(image):
        segmentedControl.setImage(image, forSegmentAt: index)
      case let .title(title):
        segmentedControl.setTitle(title, forSegmentAt: index)
      }
    }
    return self
  }
  
  @discardableResult
  func selectedSegmentIndex(_ index: Int) -> UISegmentedControlBuilder {
    segmentedControl.selectedSegmentIndex = index
    return self
  }
  
  // MARK: - Managing Segment Behavior and Appearance
  
  @discardableResult
  func isMomentary(_ flag: Bool) -> UISegmentedControlBuilder {
    segmentedControl.isMomentary = flag
    return self
  }
  
  @discardableResult
  func isEnabled(_ flag: Bool, forSegmentAt index: Int) -> UISegmentedControlBuilder {
    segmentedControl.setEnabled(flag, forSegmentAt: index)
    return self
  }
  
  @discardableResult
  func contentOffset(_ offset: Size<Int>, forSegmentAt index: Int) -> UISegmentedControlBuilder {
    switch offset {
    case let .each(width, height):
      segmentedControl.setContentOffset(.init(width: width, height: height), forSegmentAt: index)
    case let .all(value):
      segmentedControl.setContentOffset(.init(width: value, height: value), forSegmentAt: index)
    case .zero:
      segmentedControl.setContentOffset(.zero, forSegmentAt: index)
    }
    return self
  }
  
  @discardableResult
  func contentOffset(_ offset: Size<Double>,
                     forSegmentAt index: Int) -> UISegmentedControlBuilder {
    switch offset {
    case let .each(width, height):
      segmentedControl.setContentOffset(.init(width: width, height: height), forSegmentAt: index)
    case let .all(value):
      segmentedControl.setContentOffset(.init(width: value, height: value), forSegmentAt: index)
    case .zero:
      segmentedControl.setContentOffset(.zero, forSegmentAt: index)
    }
    return self
  }
  
  @discardableResult
  func contentOffset(_ offset: Size<CGFloat>,
                     forSegmentAt index: Int) -> UISegmentedControlBuilder {
    switch offset {
    case let .each(width, height):
      segmentedControl.setContentOffset(.init(width: width, height: height), forSegmentAt: index)
    case let .all(value):
      segmentedControl.setContentOffset(.init(width: value, height: value), forSegmentAt: index)
    case .zero:
      segmentedControl.setContentOffset(.zero, forSegmentAt: index)
    }
    return self
  }
  
  @discardableResult
  func width(_ width: CGFloat, forSegmentAt index: Int) -> UISegmentedControlBuilder {
    segmentedControl.setWidth(width, forSegmentAt: index)
    return self
  }
  
  @discardableResult
  func apportionsSegmentWidthsByContent(_ flag: Bool) -> UISegmentedControlBuilder {
    segmentedControl.apportionsSegmentWidthsByContent = flag
    return self
  }
  
  // MARK: - Customizing Appearance
  
  @discardableResult
  func backgroundImage(_ image: UIImage?,
                       for state: UIControl.State = .normal,
                       barMetrics: UIBarMetrics = .default) -> UISegmentedControlBuilder {
    segmentedControl.setBackgroundImage(image, for: state, barMetrics: barMetrics)
    return self
  }
  
  @discardableResult
  func contentPositionAdjustment(_ adjustment: UIOffset,
                                 forSegmentType segmentType: UISegmentedControl.Segment,
                                 barMetrics: UIBarMetrics) -> UISegmentedControlBuilder {
    segmentedControl.setContentPositionAdjustment(adjustment,
                                                  forSegmentType: segmentType,
                                                  barMetrics: barMetrics)
    return self
  }
  
  @discardableResult
  func dividerImage(_ image: UIImage?,
                    forLeftSegmentState leftSegmentState: UIControl.State,
                    rightSegmentState: UIControl.State,
                    barMetrics: UIBarMetrics) -> UISegmentedControlBuilder {
    segmentedControl.setDividerImage(image,
                                     forLeftSegmentState: leftSegmentState,
                                     rightSegmentState: rightSegmentState,
                                     barMetrics: barMetrics)
    return self
  }
  
  @discardableResult
  func titleTextAttributes(_ attributes: [NSAttributedString.Key: Any],
                           for state: UIControl.State) -> UISegmentedControlBuilder {
    segmentedControl.setTitleTextAttributes(attributes, for: state)
    return self
  }
  
  // MARK: - Build
  
  func build() -> UISegmentedControl {
    return segmentedControl
  }
}
