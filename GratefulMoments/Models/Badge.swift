import Foundation
import SwiftUI

@Model
class Badge {
    var details: BadgeDetails

    init(details: BadgeDetails) {
        self.details = details
    }
}
