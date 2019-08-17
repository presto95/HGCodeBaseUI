# HGCodeBaseUI

![Cocoapods](https://img.shields.io/cocoapods/v/HGCodeBaseUI) ![Cocoapods platforms](https://img.shields.io/cocoapods/p/HGCodeBaseUI) ![Language](https://img.shields.io/badge/swift-%3E%3D4-orange) ![Cocoapods](https://img.shields.io/cocoapods/l/HGCodeBaseUI)

**Interface Builder를 사용하지 않고 UI를 작성**하기 위한 설계를 제안합니다.

## 코드로 UI를 작성하기 위한 설계

```swift
protocol UI
```

`UI` 프로토콜은 어떠한 클래스가 Interface Builder의 책임을 대체함을 나타냅니다.

```swift
protocol UIOwner
```

`UIOwner` 프로토콜은 `UI` 프로토콜을 준수하는 어떠한 객체를 소유할 수 있음을 나타냅니다.

### Example

#### UIViewController - UI

```swift
final class SomeViewController: UIViewController, UIOwner {
  
  var viewUI: SomeUI!
  
  override func loadView() {
    // `loadView()` 에서 `viewUI`의 인스턴스를 생성합니다..
    viewUI = .init(owner: self)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // `viewUI.label`에 접근하여 특정 작업을 수행할 수 있습니다.
  }
}
```

```swift
final class SomeUI: UI {
  
  // `unowned`로 선언하기를 추천합니다.
  unowned var owner: SomeViewController
  
  // UI 컴포넌트를 담는 변수는 `lazy` 키워드를 사용하여 선언하기를 추천합니다.
  lazy var label = UILabel()
  
  init(owner: SomeViewController) {
    self.owner = owner
    
    // **중요**
    // 아직 `owner.view`가 만들어지지 않았기 때문에 다음 라인을 작성해야 합니다.
    owner.view = .init()
    
    // `UIView.backgroundColor`의 기본값은 `nil`이며, 이는 배경색을 투명하게 만듭니다.
    // 그러므로 다음의 라인을 작성해야 할 것입니다.
    view.backgroundColor = .white
    
    // `Then`의 `do` 메소드를 사용하여 다음과 같이 레이블을 구성할 수 있습니다.
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

#### UIView - UI

```swift
final class SomeView: UIView, UIOwner {
  
  var viewUI: SomeUI!
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    // 이니셜라이저에서 `viewUI`의 인스턴스를 생성합니다.
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

## 자주 사용하는 것들을 래핑

- `UIButton` `.touchUpInside` control event

```swift
// `addTarget(self, action: #selector(buttonDidTap(_:), for: .touchUpInside)`와 동일.
button.tapped(onTarget: self, action: #selector(buttonDidTap(_:)))
```

- `UIView` gesture recognizer

```swift
// `UITapGestureRecognizer(target: self, action: #selector(viewDidTap(_:))`와 동일.
view.addGestureRecognizer(.tap, onTarget: self, action: #selector(viewDidTap(_:)))
```

- `UISlider` `.valueChanged` control event

```swift
// `addTarget(self, action: #selector(sliderValueChanged(_:), for: .valueChanged)`와 동일.
slider.valueChanged(onTarget: self, action: #selector(sliderValueChanged(_:)))
```

- `UITextField` `.editingChanged` control event

```swift
// `addtarget(self, action: #selector(textFieldTextDidChange(_:), for: .editingChanged)`와 동일.
textField.textChanged(onTarget: self, action: #selector(textFieldTextDidChange(_:)))
```

- `UIEdgeInsets`

```swift
// `UIEdgeInsets(top: 4, left: 4, bottom: 4, right: 4)`와 동일.
textView.textContainerInset = .all(4)

// `UIEdgeInsets(top: 4, left: 8, bottom: 4, right: 4)`와 동일.
someButton.titleEdgeInsets = .symmetric(horizontal: 8, vertical: 4)

// `UIEdgeInsets(top: 0, left: 4, bottom: 0, right: 0)`와 동일.
tableView.separatorInset = .left(4)
```

- `CGRect` / `CGSize` / `CGPoint`

```swift
// `CGRect(x: 100, y: 100, width: 100, height: 100)`와 동일.
label.frame = .all(100)

// `CGSize(width: 100, height: 100)`와 동일.
label.frame.size = .all(100)

// `CGPoint(width: 100, height: 100)`와 동일.
label.frame.origin = .all(100)
```

## 설치

HGCodeBaseUI는 **Cocoapods**만을 지원합니다.



[CocoaPods](http://cocoapods.org)는 Cocoa 프로젝트를 위한 의존성 매니저입니다. 다음의 명령을 사용하여 설치할 수 있습니다:

```bash
$ gem install cocoapods
```

Cocoapods를 사용하여 HGCodeBaseUI를 Xcode 프로젝트와 통합하려면 다음을 `Podfile` 에 작성하십시오:

```ruby
target '<Your Target Name>' do
  pod 'HGCodeBaseUI'
end
```

그리고 나서 다음의 명령을 실행하십시오.

```bash
$ pod install
```

## 요구 조건

- Swift 4
- iOS 10

## 의존

- [SnapKit](https://github.com/SnapKit/SnapKit) ~> 5.0.0
- [Then](https://github.com/devxoul/Then)

## License

HGCodeBaseUI는 MIT 라이센스를 따릅니다. [LICENSE](https://github.com/presto95/ViewBuilderSwift/blob/master/LICENSE)에서 더 많은 정보를 확인하십시오.