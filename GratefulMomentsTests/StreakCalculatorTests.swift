import Testing
@testable import GratefulMoments
import Foundation

struct StreakCalculatorTests {
    let streakCalculator = StreakCalculator()
    let now = Date.now

    @Test func testCalculations() async throws {
        let days = [-2, -1]
        let expectedStreak = 2

        let moments = [Moment]()

        let streak = streakCalculator.calculateStreak(for: moments)
        #expect(streak == expectedStreak)
    }

}
