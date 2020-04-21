import UIKit
import PlaygroundSupport
import Foundation

class MyViewController: UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .orange
        
        
        // Fonte
        let fontURL = Bundle.main.url(forResource: "Avengeance", withExtension: "ttf")! as CFURL
        CTFontManagerRegisterFontsForURL(fontURL, CTFontManagerScope.process, nil)
        
        // Para descobrir qual o nome da fonte
        for family in UIFont.familyNames {
            print("\(family)")
            for name in UIFont.fontNames(forFamilyName: family) {
                print(" \(name)")
            }
        }

        let label = UILabel(frame: CGRect(x: 500, y: 100, width: 200, height: 150))
        label.text = "Duke"
        label.font = UIFont(name: "Avengeance Heroic Avenger", size: 100)
        
        
        let image = #imageLiteral(resourceName: "dukesamoieda.png")
        let imageView = UIImageView(image: image)
        imageView.frame = CGRect(x: 10, y: 5, width: 475, height: 595)
        
        view.addSubview(imageView)
        view.addSubview(label)
        self.view = view
    }
}

let vc = MyViewController(screenType: .ipadPro12_9, isPortrait: false)
PlaygroundPage.current.liveView = vc.scale(to: 0.5)
