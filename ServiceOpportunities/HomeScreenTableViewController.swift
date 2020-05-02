import Foundation
import UIKit
import SnapKit

class HomeScreenTableViewController: UITableViewController {
    
    var companyNames = ["Walmart", "Tesla", "Apple", "Google", "Dunder Mifflin", "Netflix"]
    
    var locations = [6.0, 7.4, 3.2, 9.1, 2.7, 1.2]
    
    var phoneNumber = ["12312", "", "", "", "", ""]
    
    var images = ["Image", "teslacompany", "", "", "", ""]
    
    
    override func viewDidLoad() {
        self.tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return companyNames.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "serviceCell", for: indexPath) as?  CustomMenuTableViewCell else {
            return UITableViewCell()
        }
        print(indexPath.row)
        cell.selectionStyle = .none
        cell.setupViews(name: companyNames[indexPath.row], location: String("\(locations[indexPath.row]) km away"), image: images[indexPath.row], phone: "cell: \(phoneNumber[indexPath.row])")
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = tableView.cellForRow(at: indexPath) as? CustomMenuTableViewCell
        
        cell?.cellBackground.backgroundColor = UIColor(red: 171.0/255.0, green: 177.0/255.0, blue: 186.0/255.0, alpha: 1.0)
        
        switch indexPath.row {
        case 0:
            print("Blueberries")
        default:
            print("Yogurt")
        }
    }
}

