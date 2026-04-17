import SwiftUI

struct BadgeDetailView: View {
    var badge: Badge

    var body: some View {
        VStack(spacing: 8) {
            Image(badge.details.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 70)
            Text(badge.details.title)
                .font(.headline.bold())
            Text(badge.details.congratulatoryMessage)
                .font(.caption2.bold())
            Spacer()
            if let timestamp = badge.timestamp {
                Text(timestamp, style: .date)
                    .font(.caption2.bold())
            }
        }
        .padding()
        .frame(width: 210, height: 225)
        .multilineTextAlignment(.center)
        .foregroundStyle(.white)
        .background(badge.details.color.opacity(0.8))
        .clipShape(RoundedRectangle(cornerRadius: 16.0))
    }
}

#Preview {
    BadgeDetailView(badge: .sample)
}
