import Foundation
import UIKit
import SnapKit

class SettingsViewController: UIViewController {
    let languageSwitch = UISwitch(frame: .zero)
    let languageLabel = UILabel()
    let aboutMe = UILabel()
    var isSpanish = false
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        setupViews()
        isSpanish = UserDefaults.standard.bool(forKey: "Language")
        languageSwitch.addTarget(self, action: #selector(switchChanged), for: .touchUpInside)
        languageSwitch.setOn(isSpanish, animated: true)
    }
    
    @objc func switchChanged() {
        isSpanish = languageSwitch.isOn
        UserDefaults.standard.set(isSpanish, forKey: "Language")
    }
    
    
    func setupViews() {
        view.addSubview(languageSwitch)
        view.addSubview(languageLabel)
        view.addSubview(aboutMe)
        
        //ToDo: why the app was created, what I wanted to accomplish with it.
        
        aboutMe.text = "About Me"
        aboutMe.snp.makeConstraints { (make) in
            make.top.equalTo(languageLabel.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(20)
        }
        
        languageLabel.text = "Language"
        languageLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(80)
            make.leading.equalToSuperview().offset(20)
        }
        
        languageSwitch.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(80)
            make.trailing.equalToSuperview().inset(20)
        }
    }
    
}
