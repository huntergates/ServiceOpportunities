import Foundation
import UIKit
import SnapKit

class HomeScreenTableViewController: UITableViewController {
    
    var companySelection: Company?
    
    //var services = CompanyServices()
    
    var companies = [Company(companyName: "TECHO", companyContact: "(33) 3615 3258", distance: "5 km away", address: "Calle La Ley 3048, Juan Manuel, 44680 Guadalajara, Jal., Mexico", image: UIImage(named: "techoimage") ?? UIImage(), companyDescription: "TECHO es una organización internacional que busca superar la pobreza de los asentamientos informales de América Latina y el Caribe. Está presente en 21 países donde más de 600 mil voluntarios han trabajado en conjunto con vecinos de los asentamientos soluciones concretas que mejoren sus condiciones y oportunidades de vida.Con la implementación de un modelo de trabajo enfocado en el desarrollo desde los asentamientos, la promoción de la participación ciudadana de las y los jóvenes y la promoción de Derechos Humanos, TECHO busca construir una sociedad justa y sin pobreza."), Company(companyName: "Galilea 2000 A.C.", companyContact: "(33)3613 2496 / 0443310405808", distance: "6 km away", address: "Yes Boulevard", image: UIImage(named: "teslacompany") ?? UIImage(), companyDescription: "They do things.")]
    
    override func viewDidLoad() {
        self.tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        let settingsButton = UIButton()
        settingsButton.setImage(UIImage(named: "settings-icon"), for: .normal)
        settingsButton.addTarget(self, action: #selector(settingsButtonTapped), for: .touchUpInside)
        let settingsBarButton = UIBarButtonItem(customView: settingsButton)
        navigationItem.leftBarButtonItem = settingsBarButton
    }
    
    @objc func settingsButtonTapped() {
        let vc = SettingsViewController()
        //present(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return companies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "serviceCell", for: indexPath) as? CustomMenuTableViewCell else {
            return UITableViewCell()
        }
        cell.setupViews(company: companies[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = tableView.cellForRow(at: indexPath) as? CustomMenuTableViewCell
        
        cell?.cellBackground.backgroundColor = UIColor(red: 171.0/255.0, green: 177.0/255.0, blue: 186.0/255.0, alpha: 1.0)
        
        companySelection = companies[indexPath.row]
        let detailView = DetailViewController()
        if let selected = companySelection {
            detailView.company = selected
        }
        navigationController?.pushViewController(detailView, animated: true)
    }
}
