import Foundation

enum BadgeDetails {
    case firstEntry
    case fiveStars
    case shutterbug
    case expressive
    case perfectTen

    var requirements: String {
        switch self {
        case .firstEntry:
            return "Log a moment to start your journey."
        case .fiveStars:
            return "Record five moments."
        case .shutterbug:
            return "Add three entries with photos."
        case .expressive:
            return "Add five moments with a photo and text."
        case .perfectTen:
            return "Record at least 10 moments, collecting all the other badges along the way."
        }
    }
}
