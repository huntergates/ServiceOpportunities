import Foundation
import UIKit
import SnapKit

class HomeScreenTableViewController: UITableViewController {
    
    var companies = [Company(companyName: "TECHO", companyPhone: "(33) 3615 3258", distance: 5, address: "Something Road", image: UIImage(named: "teslacompany") ?? UIImage(), companyDescription: "They build houses."),
        Company(companyName: "Galilea 2000 A.C.", companyPhone: "(33)3613 2496 / 0443310405808", distance: 6, address: "Yes Boulevard", image: UIImage(named: "teslacompany") ?? UIImage(), companyDescription: "They do things.")]
    
    var companySelection: Company?
    
    override func viewDidLoad() {
        self.tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return companies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "serviceCell", for: indexPath) as? CustomMenuTableViewCell else {
            return UITableViewCell()
        }
        cell.setupViews(company: companies[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = tableView.cellForRow(at: indexPath) as? CustomMenuTableViewCell
        
        cell?.cellBackground.backgroundColor = UIColor(red: 171.0/255.0, green: 177.0/255.0, blue: 186.0/255.0, alpha: 1.0)
        
        companySelection = companies[indexPath.row]
        
        performSegue(withIdentifier: "segueToDetailView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let detailViewController = segue.destination as? DetailViewController
        
        if let selected = companySelection {
            detailViewController?.company = selected
        }
    }
}


