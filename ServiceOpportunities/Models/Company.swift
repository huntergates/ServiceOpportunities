import UIKit

class Company {
    var companyName: String
    
    var companyPhone: String
    
    var distance: Int
    
    var address: String
    
    var image: UIImage
    
    var companyDescription: String
    
    init(companyName: String, companyPhone: String, distance: Int, address: String, image: UIImage, companyDescription: String) {
        self.companyName = companyName
        self.address = address
        self.companyPhone = companyPhone
        self.distance = distance
        self.image = image
        self.companyDescription = companyDescription
    }
}
