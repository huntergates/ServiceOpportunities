import UIKit
import SnapKit

class CompanyNameCell: UITableViewCell {

    private let name = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupNameView(company: Company) {
        
        contentView.addSubview(name)
        
        name.textAlignment = .center
        name.font = UIFont(name: "Optima-Regular", size: 30.0)
        name.numberOfLines = 0
        name.text = company.companyName
        name.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().multipliedBy(0.55)
        }
    }
}

