import UIKit
import SnapKit

class CompanyDescriptionCell: UITableViewCell {

    private let companyDescription = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCompanyView(company: Company) {
        
        contentView.addSubview(companyDescription)
        
        companyDescription.textAlignment = .justified
        companyDescription.font = UIFont(name: "Optima-Regular", size: 15.0)
        companyDescription.numberOfLines = 0
        companyDescription.text = company.companyDescription
        companyDescription.snp.makeConstraints { (make) in
            make.leading.equalToSuperview().offset(15)
            make.trailing.equalToSuperview().inset(15)
        }
    }
}



