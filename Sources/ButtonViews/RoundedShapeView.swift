import Foundation
import SwiftUI
import ButtonCore

fileprivate struct RoundedShapeView: View {
    let shape: ButtonShape
    let color: Color

    var body: some View {
        switch shape {
        case .rectangle:
            color
        case .capsule:
            Capsule().fill(color)
        case .rounded(let radius):
            RoundedRectangle(cornerRadius: radius).fill(color)
        }
    }
}
