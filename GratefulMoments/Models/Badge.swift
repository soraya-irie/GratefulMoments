import Foundation
import SwiftData

@Model
class Badge {
    var details: BadgeDetails
    var moment: Moment?

    init(details: BadgeDetails) {
        self.details = details
        self.moment = nil
    }
}

extension Badge {
    static var sample: Badge {
        let badge = Badge(details: .firstEntry)
        return badge
    }
}
