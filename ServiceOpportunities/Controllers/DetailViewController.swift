import UIKit
import SnapKit

class DetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let name = UILabel()
    let location = UILabel()
    let phone = UILabel()
    let image = UIImageView()
    let information = UILabel()
    
    let descriptionLabel = UILabel()
    let contactInfoLabel = UILabel()
    let addressLabel = UILabel()
    
    var company: Company?
    var stackView = UIStackView()
    var scrollView = UIScrollView()
    var tableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //for darkmode
        if traitCollection.userInterfaceStyle == .dark {
            view.backgroundColor = .black
        } else {
            view.backgroundColor = .white
        }
       setupTableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CompanyNameCell.self, forCellReuseIdentifier: "CompanyNameCell")
        tableView.register(CompanyDescriptionCell.self, forCellReuseIdentifier: "CompanyDescriptionCell")
    }
    
    func setupTableView() {
        view.addSubview(tableView)
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        tableView.snp.makeConstraints { (make) in
            make.leading.trailing.top.bottom.equalToSuperview()
        }
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //switch statement goes around this.
        switch indexPath.row {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "CompanyNameCell", for: indexPath) as? CompanyNameCell else {
                        return UITableViewCell()
                    }
                    if let co = company {
                        cell.setupNameView(company: co)
                    }
                    cell.selectionStyle = .none
                    return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "CompanyDescriptionCell", for: indexPath) as? CompanyDescriptionCell else {
                        return UITableViewCell()
                    }
                    if let co = company {
                        cell.setupCompanyView(company: co)
                    }
                    cell.selectionStyle = .none
                    return cell
            
        default:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "CompanyNameCell", for: indexPath) as? CompanyNameCell else {
                        return UITableViewCell()
                    }
//                    if let co = company {
//                        cell.setupNameView(company: co)
//                    }
            //        cell.selectionStyle = .none
                    return cell
        }
        
    }
    
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 75.0
        case 1:
            return 230.0
        default:
            return 100.0
        }
    }
    
    
    
    func setupLabelViews() {
        view.addSubview(addressLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(contactInfoLabel)
        
        addressLabel.textAlignment = .left
        addressLabel.font = UIFont(name: "Optima-Bold", size: 15.0)
        addressLabel.text = String("Address")
        addressLabel.snp.makeConstraints{ (make) in
            make.bottom.equalTo(location.snp.top).offset(8)
            make.leading.equalToSuperview().offset(20)
        }
        
        descriptionLabel.textAlignment = .left
        descriptionLabel.font = UIFont(name: "Optima-Bold", size: 15.0)
        descriptionLabel.text = String("Company Description")
        descriptionLabel.snp.makeConstraints{ (make) in
            make.bottom.equalTo(information.snp.top).offset(8)
            make.leading.equalToSuperview().offset(20)
        }
        
        contactInfoLabel.textAlignment = .left
        contactInfoLabel.font = UIFont(name: "Optima-Bold", size: 15.0)
        contactInfoLabel.text = String("Contact Info")
        contactInfoLabel.snp.makeConstraints{ (make) in
            make.bottom.equalTo(phone.snp.top).offset(8)
            make.leading.equalToSuperview().offset(20)
        }
        
    }
    
    func setupNewViews() {
        view.addSubview(name)
        view.addSubview(information)
        view.addSubview(location)
        view.addSubview(phone)
        view.addSubview(image)
        
        
        stackView.addArrangedSubview(name)
        stackView.addArrangedSubview(information)
        stackView.addArrangedSubview(phone)
        //stackView.addArrangedSubview(addressLabel)
        stackView.addArrangedSubview(location)
        
        
        
        name.textAlignment = .center
        name.font = UIFont(name: "Optima-Regular", size: 30.0)
        name.numberOfLines = 0
        name.text = company?.companyName
        //        name.snp.makeConstraints { (make) in
        //            make.centerX.equalToSuperview()
        //            make.centerY.equalToSuperview().multipliedBy(0.55)
        //        }
        
        location.textAlignment = .left
        location.font = UIFont(name: "Optima-Regular", size: 15.0)
        location.text = company?.address
        location.numberOfLines = 0
        //        location.snp.makeConstraints { (make) in
        //            make.centerX.equalToSuperview()
        //            make.centerY.equalToSuperview().multipliedBy(0.75)
        //        }
        
        phone.textAlignment = .left
        phone.font = UIFont(name: "Optima-Regular", size: 17.0)
        phone.text = company?.companyContact
        //        phone.snp.makeConstraints { (make) in
        //            make.centerX.equalToSuperview()
        //            make.centerY.equalToSuperview().multipliedBy(1.2)
        //        }
        
        information.textAlignment = .justified
        information.font = UIFont(name: "Optima-Regular", size: 17.0)
        information.text = company?.companyDescription
        information.numberOfLines = 0
        //       information.snp.makeConstraints { (make) in
        //            make.leading.trailing.equalToSuperview()
        //            make.top.equalTo(name.snp.bottom).offset(15)
        //            make.bottom.equalToSuperview().multipliedBy(0.8)
        //        }
        
        image.image = company?.image
        image.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().multipliedBy(0.35)
            make.width.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.1)
        }
    }
}
