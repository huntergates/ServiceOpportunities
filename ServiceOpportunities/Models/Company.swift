import UIKit

class Company {
    var companyName: String
    
    var companyContact: String
    
    var distance: String
    
    var address: String
    
    var image: UIImage
    
    var companyDescription: String
    
    init(companyName: String, companyContact: String, distance: String, address: String, image: UIImage, companyDescription: String) {
        self.companyName = companyName
        self.address = address
        self.companyContact = companyContact
        self.distance = distance
        self.image = image
        self.companyDescription = companyDescription
    }
}
