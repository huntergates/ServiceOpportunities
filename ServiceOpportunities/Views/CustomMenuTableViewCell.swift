import UIKit
import SnapKit

class CustomMenuTableViewCell: UITableViewCell {

    private let companyNameLabel = UILabel()
    
    private let distanceLabel = UILabel()
    
    private let photoImage = UIImageView()
    
    let cellBackground = UIView()
    
    //private let phoneNumberLabel = UILabel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupViews(company: Company) {
        contentView.addSubview(cellBackground)
        contentView.addSubview(photoImage)
        contentView.addSubview(companyNameLabel)
        contentView.addSubview(distanceLabel)
        
        companyNameLabel.textAlignment = .center
        companyNameLabel.font = UIFont(name: "Optima-Regular", size: 35.0)
        companyNameLabel.numberOfLines = 0
        companyNameLabel.text = company.companyName
        companyNameLabel.snp.makeConstraints { (make) in
            make.leading.equalToSuperview().offset(35)
            make.top.bottom.equalToSuperview().offset(4)
            make.trailing.equalTo(photoImage.snp.leading).offset(15)
        }
        
        distanceLabel.textAlignment = .left
        distanceLabel.font = UIFont(name: "Optima-Regular", size: 14.0)
        distanceLabel.text = company.distance
        distanceLabel.snp.makeConstraints { (make) in
            make.leading.equalTo(cellBackground.snp.leading).offset(15)
            make.bottom.equalTo(cellBackground.snp.bottom).inset(7)
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
