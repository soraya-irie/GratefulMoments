import Testing
@testable import GratefulMoments
import Foundation

struct StreakCalculatorTests {
    let streakCalculator = StreakCalculator()
    let now = Date.now

    struct Input {
        let expectedStreak: Int
        let days: [Int]
    }

    @Test func testCalculations() async throws {
        let input = Input(expectedStreak: 2, days: [-2, -1])

        let moments = input.days.map {
            let date = Calendar.current.date(byAdding: .day, value: $0, to: .now)!
            return Moment(title: "", note: "", timestamp: date)
        }

        let streak = streakCalculator.calculateStreak(for: moments)
        #expect(streak == input.expectedStreak, "\(input.days)")
    }

}
