import UIKit
import SnapKit

class DetailViewController: UIViewController {

  var companyName = " "
    
  let name = UILabel()
    
    //start creating labels, images, etc.  Start designing, use TableView cell as a reference for constraints.
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        setupNewViews()
    }

    func setupNewViews() {
        view.addSubview(name)
        
        name.textAlignment = .center
        name.font = UIFont(name: "Optima-Regular", size: 24.0)
        name.text = companyName
        name.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().multipliedBy(0.5)
        }

    }
    
}

