import UIKit
public enum ScreenType {
    case iphone11ProMax
    case iphone11Pro
    case iphone11
    case iphoneXR
    case iphone8Plus
    case iphone8
    case ipad
    case ipadPro10_5
    case ipadPro12_9
    case mac
    case other(width: Int, height: Int)
    public func size(isPortrait: Bool = true) -> CGSize {
        var size: CGSize
        switch self {
        case .iphone11ProMax:
            size = CGSize(width: 414, height: 896)
        case .iphone11Pro:
            size = CGSize(width: 375, height: 480)
        case .iphone11:
            size = CGSize(width: 414, height: 480)
        case .iphoneXR:
            size = CGSize(width: 414, height: 480)
        case .iphone8Plus:
            size = CGSize(width: 414, height: 480)
        case .iphone8:
            size = CGSize(width: 375, height: 480)
        case .ipad:
            size = CGSize(width: 768, height: 1024)
        case .ipadPro10_5:
            size = CGSize(width: 834, height: 1112)
        case .ipadPro12_9:
            size = CGSize(width: 1024, height: 1366)
        case .mac:
            return CGSize(width: 1440, height: 900)
        case .other(let width, let height):
            size = CGSize(width: width, height: height)
        }
        if !isPortrait {
            return CGSize(width: size.height, height: size.width)
        }
        return size
    }
}
extension UIViewController {
    public convenience init(screenType: ScreenType, isPortrait: Bool = true) {
        self.init(nibName: nil, bundle: nil)
        let size = screenType.size(isPortrait: isPortrait)
        view.frame.size = size
        view.clipsToBounds = true
        preferredContentSize = size
    }
    public func scale(to scale: Float) -> UIView {
        if let self = self as? UINavigationController {
            guard let contentSize = self.topViewController?.view.frame.size else {
                print("Erro: Seu Navigation Controller não possui um View Controller")
                return UIView()
            }
            self.view.frame.size = contentSize == .zero ? view.frame.size : contentSize
        }
        self.view.transform = CGAffineTransform(scaleX: CGFloat(scale), y: CGFloat(scale))
        self.preferredContentSize = self.view.frame.size
        let rootView = UIView(frame: CGRect(x: 0, y: 0, width: 768, height: 1024))
        rootView.backgroundColor = .black
        rootView.addSubview(self.view)
        self.view.center = rootView.center
        return rootView
    }
    public func scaleToFit(withKeyboard: Bool = false) -> UIView {
        if let self = self as? UINavigationController {
            guard let contentSize = self.topViewController?.view.frame.size else {
                print("Erro: Seu Navigation Controller não possui um View Controller")
                return UIView()
            }
            self.view.frame.size = contentSize == .zero ? view.frame.size : contentSize
        }
        let viewSize = self.view.frame.size
        let maxRootViewSize = CGSize(width: 768, height: 1024)
        let isViewPortrait = viewSize.height > viewSize.width
        let scale = isViewPortrait ? (maxRootViewSize.height/viewSize.height) : (maxRootViewSize.width/viewSize.width)
        self.view.transform = CGAffineTransform(scaleX: CGFloat(scale), y: CGFloat(scale))
        let rootViewSize = CGSize(width: self.view.frame.width, height: withKeyboard ? 1024 : self.view.frame.height)
        let rootView = UIView(frame: CGRect(x: 0, y: 0, width: rootViewSize.width, height: rootViewSize.height))
        rootView.backgroundColor = .black
        rootView.addSubview(self.view)
        self.view.center.x = rootView.center.x
        self.view.center.y = rootView.frame.minY + self.view.frame.height/2
        self.preferredContentSize = rootView.frame.size
        return rootView
    }
}
