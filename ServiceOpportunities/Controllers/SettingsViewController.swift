import Foundation
import UIKit
import SnapKit

class SettingsViewController: UIViewController {
    let languageSwitch = UISwitch(frame: .zero)
    let languageLabel = UILabel()
    let aboutMe = UILabel()
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        setupViews()
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
