import SwiftUI

struct Hexagon<Content: View>: View {
    var size: CGFloat = 350
    var moment: Moment? = nil
    @ViewBuilder var content: () -> Content

    var body: some View {
        ZStack {
            if let background = moment?.image {
                Image(uiImage: background)
                    .resizable()
                    .scaledToFill()
            }

            content()
                .frame(width: size, height: size)
        }
        .frame(width: size, height: size)
    }
}

#Preview {
    Hexagon(moment: Moment.imageSample) {
        Text(Moment.imageSample.title)
            .foregroundStyle(Color.white)
    }
    .sampleDataContainer()
}
