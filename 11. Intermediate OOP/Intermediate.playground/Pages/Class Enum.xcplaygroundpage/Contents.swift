import UIKit

class Musicians{
    var name: String
    var type: MusiciansType
    
    init(name: String, type: MusiciansType){
        self.name = name
        self.type = type
    }
}

enum MusiciansType{
    case Vocalist
    case Drumer
    case Gitaris
    }

var james = Musicians(name: "Bagus", type: .Drumer)
print(james.type)
