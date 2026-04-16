import SwiftUI

struct Hexagon<Content: View>: View {
    private let borderWidth = 2.0
    var borderColor: Color = .ember
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
        .mask {
            Image(systemName: "hexagon.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: size - borderWidth, height: size - borderWidth)
        }
        .background {
            Image(systemName: "hexagon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: size, height: size)
                .foregroundStyle(borderColor)
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
