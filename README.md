# HGCodeBaseUI

![Cocoapods](https://img.shields.io/cocoapods/v/HGCodeBaseUI) ![Cocoapods platforms](https://img.shields.io/cocoapods/p/HGCodeBaseUI) ![Language](https://img.shields.io/badge/swift-%3E%3D4-orange) ![Cocoapods](https://img.shields.io/cocoapods/l/HGCodeBaseUI)

This suggests a design for writing **UI without using Interface Builder**.

## Design for Writing UI with Code 

```swift
protocol UI
```

`UI` protocol represents that any class conforms to this replaces the reponsibility of Interface Builder.

```swift
protocol UIOwner
```

`UIOwner` protocol represents that any class conforms this indicates the object that can own an object that conforms to `UI` protocol.

### Example

#### with UIViewController - UI

```swift
final class SomeViewController: UIViewController, UIOwner {
  
  var viewUI: SomeUI!
  
  override func loadView() {
    // Instantiates `viewUI` at `loadView()`.
    viewUI = .init(owner: self)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do something with `viewUI.label`...
  }
}
```

```swift
final class SomeUI: UI {
  
  // It is recommended to declare it as `unowned`.
  unowned var owner: SomeViewController
  
  // It is recommended to declare any UI component variables using `lazy` keyword.
  lazy var label = UILabel()
  
  init(owner: SomeViewController) {
    self.owner = owner
    
    // **Important** 
    // You must write the following line because `owner.view` isn't made yet.
    owner.view = .init()
    // You should write the following line 
    // because the default value of `UIView.backgroundColor` is `nil`, 
    // which results in a transparent background color.
    view.backgroundColor = .white
    
    // By using `do` method of `Then`, we can configure the label like this...
    label.do {
      $0.text = "Hello World!"
      $0.textColor = .blue
      $0.font = .systemFont(ofSize: 15)
      $0.numberOfLines = 1
      $0.lineBreakMode = .byWordWrapping
    }
  }
}
```

#### with UIView - UI

```swift
final class SomeView: UIView, UIOwner {
  
  var viewUI: SomeUI!
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    // Instantiates `viewUI` at any initializer.
    viewUI = .init(owner: self)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
```

```swift
final class SomeUI: UI {
  
  unowned var owner: SomeView
  
  lazy var label = UILabel()
  
  init(owner: SomeView) {
    self.owner = owner
    
    label.do {
      $0.text = "Hello World!"
      $0.textColor = .blue
      $0.font = .systemFont(ofSize: 15)
      $0.numberOfLines = 1
      $0.lineBreakMode = .byWordWrapping
    }
  }
}
```

## Wrapper for frequently used things

- `UIButton` `.touchUpInside` control event

```swift
// Same as `addTarget(self, action: #selector(buttonDidTap(_:), for: .touchUpInside)`
button.tapped(onTarget: self, action: #selector(buttonDidTap(_:)))
```

- `UIView` gesture recognizers

```swift
// Same as `UITapGestureRecognizer(target: self, action: #selector(viewDidTap(_:))`
view.addGestureRecognizer(.tap, onTarget: self, action: #selector(viewDidTap(_:)))
```

- `UISlider` `.valueChanged` control event

```swift
// Same as `addTarget(self, action: #selector(sliderValueChanged(_:), for: .valueChanged)`
slider.valueChanged(onTarget: self, action: #selector(sliderValueChanged(_:)))
```

- `UITextField` `.editingChanged` control event

```swift
// Same as `addtarget(self, action: #selector(textFieldTextDidChange(_:), for: .editingChanged)`
textField.textChanged(onTarget: self, action: #selector(textFieldTextDidChange(_:)))
```

- `UIEdgeInsets`

```swift
// Same as `UIEdgeInsets(top: 4, left: 4, bottom: 4, right: 4)`
textView.textContainerInset = .all(4)

// Same as `UIEdgeInsets(top: 4, left: 8, bottom: 4, right: 4)`
someButton.titleEdgeInsets = .symmetric(horizontal: 8, vertical: 4)

// Same as `UIEdgeInsets(top: 0, left: 4, bottom: 0, right: 0)`
tableView.separatorInset = .left(4)
```

- `CGRect` / `CGSize` / `CGPoint`

```swift
// Same as `CGRect(x: 100, y: 100, width: 100, height: 100)`
label.frame = .all(100)

// Same as `CGSize(width: 100, height: 100)`
label.frame.size = .all(100)

// Same as `CGPoint(width: 100, height: 100)`
label.frame.origin = .all(100)
```

## Installation

HGCodeBaseUI supports **Cocoapods** only.

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate HGCodeBaseUI into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
target '<Your Target Name>' do
  pod 'HGCodeBaseUI'
end
```

Then, run the following command:

```bash
$ pod install
```

## Requirements

- Swift 4
- iOS 10

## Dependencies

- [SnapKit](https://github.com/SnapKit/SnapKit) ~> 5.0.0
- [Then](https://github.com/devxoul/Then)

## License

HGCodeBaseUI is under MIT license. See the [LICENSE](https://github.com/presto95/ViewBuilderSwift/blob/master/LICENSE) for more info.
