//
//  UIStackViewBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 09/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

extension UIStackView {
  
  func builder() -> UIStackViewBuilder {
    return .init(stackView: self)
  }
}

internal final class UIStackViewBuilder {
  
  private let stackView: UIStackView
  
  init() {
    stackView = .init()
  }
  
  init(arrangedSubviews: [UIView]) {
    stackView = .init(arrangedSubviews: arrangedSubviews)
  }
  
  init(stackView: UIStackView) {
    self.stackView = stackView
  }
  
  // MARK: - Managing Arranged Subviews
  
  @discardableResult
  func arrangedSubview(_ view: UIView) -> UIStackViewBuilder {
    stackView.addArrangedSubview(view)
    return self
  }
  
  @discardableResult
  func arrangedSubview(_ view: UIView, at index: Int) -> UIStackViewBuilder {
    stackView.insertArrangedSubview(view, at: index)
    return self
  }
  
  // MARK: - Configuring The Layout
  
  @discardableResult
  func alignment(_ alignment: UIStackView.Alignment) -> UIStackViewBuilder {
    stackView.alignment = alignment
    return self
  }
  
  @discardableResult
  func axis(_ axis: NSLayoutConstraint.Axis) -> UIStackViewBuilder {
    stackView.axis = axis
    return self
  }
  
  @discardableResult
  func isBaselineRelativeArrangement(_ flag: Bool) -> UIStackViewBuilder {
    stackView.isBaselineRelativeArrangement = flag
    return self
  }
  
  @discardableResult
  func distribution(_ distribution: UIStackView.Distribution) -> UIStackViewBuilder {
    stackView.distribution = distribution
    return self
  }
  
  @discardableResult
  func isLayoutMarginsRelativeArrangement(_ flag: Bool) -> UIStackViewBuilder {
    stackView.isLayoutMarginsRelativeArrangement = flag
    return self
  }
  
  @discardableResult
  func spacing(_ spacing: CGFloat) -> UIStackViewBuilder {
    stackView.spacing = spacing
    return self
  }
  
  // MARK: - Adding Space Between Items
  
  @discardableResult
  func customSpacing(_ spacing: CGFloat, after view: UIView) -> UIStackViewBuilder {
    stackView.setCustomSpacing(spacing, after: view)
    return self
  }
  
  // MARK: - Build
  @discardableResult
  func build() -> UIStackView {
    return stackView
  }
}
