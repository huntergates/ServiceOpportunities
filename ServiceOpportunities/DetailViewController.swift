import UIKit
import SnapKit

class DetailViewController: UIViewController {

    var companyName = " "
    
    var locationAddress = " "
    
    var phoneNumber = " "
    
    var imageCompany = UIImage()
    
    let name = UILabel()
    
    let location = UILabel()
    
    let phone = UILabel()
    
    let image = UIImageView()
    
    
    
    //start creating labels, images, etc.  Start designing, use TableView cell as a reference for constraints.
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        setupNewViews()
    }

    func setupNewViews() {
        view.addSubview(name)
        view.addSubview(location)
        view.addSubview(phone)
        view.addSubview(image)
        
        name.textAlignment = .center
        name.font = UIFont(name: "Optima-Regular", size: 24.0)
        name.text = companyName
        name.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().multipliedBy(0.50)
        }

        location.textAlignment = .center
        location.font = UIFont(name: "Optima-Regular", size: 24.0)
        location.text = locationAddress
        location.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().multipliedBy(0.75)
        }
        
        phone.textAlignment = .center
        phone.font = UIFont(name: "Optima-Regular", size: 24.0)
        phone.text = phoneNumber
        phone.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().multipliedBy(1.0)
        }
        
        image.image = imageCompany
        image.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().multipliedBy(0.25)
            make.width.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.1)
        }
    }
}

