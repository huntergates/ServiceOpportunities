import UIKit
import SnapKit

class CustomMenuTableViewCell: UITableViewCell {

    private let companyNameLabel = UILabel()
    
    private let locationLabel = UILabel()
    
    private let photoImage = UIImageView()
    
    let cellBackground = UIView()
    
    private let phoneNumberLabel = UILabel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupViews(company: Company) {
        contentView.addSubview(cellBackground)
        contentView.addSubview(photoImage)
        contentView.addSubview(companyNameLabel)
        contentView.addSubview(locationLabel)
        contentView.addSubview(phoneNumberLabel)
        
        companyNameLabel.textAlignment = .left
        companyNameLabel.font = UIFont(name: "Optima-Regular", size: 24.0)
        companyNameLabel.text = company.companyName
        companyNameLabel.snp.makeConstraints { (make) in
            make.leading.equalToSuperview().offset(20)
            make.top.equalToSuperview().offset(30)
        }
        
        phoneNumberLabel.textAlignment = .left
        phoneNumberLabel.font = UIFont(name: "Optima-Regular", size: 12.0)
        phoneNumberLabel.text = company.companyPhone
        phoneNumberLabel.snp.makeConstraints { (make) in
            make.leading.equalToSuperview().offset(20)
            make.top.equalTo(companyNameLabel).offset(30)
        }
        
        locationLabel.textAlignment = .left
        locationLabel.font = UIFont(name: "Optima-Regular", size: 12.0)
        locationLabel.text = company.address
        locationLabel.snp.makeConstraints { (make) in
            make.leading.equalToSuperview().offset(20)
            make.bottom.equalTo(cellBackground.snp.bottom).inset(10)
        }
        
        photoImage.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().inset(20)
            make.height.width.equalTo(100)
        }
        
        photoImage.backgroundColor = UIColor.red
        photoImage.layer.cornerRadius = 50
        photoImage.clipsToBounds = true
        photoImage.image = company.image
        
        cellBackground.snp.makeConstraints { (make) in
            make.top.bottom.equalToSuperview().inset(10)
            make.leading.trailing.equalToSuperview().inset(10)
        }
        
        cellBackground.backgroundColor = UIColor(red: 171.0/255.0, green: 245.0/255.0, blue: 255.0/255.0, alpha: 1.0)
        cellBackground.layer.cornerRadius = 10
    }
}
