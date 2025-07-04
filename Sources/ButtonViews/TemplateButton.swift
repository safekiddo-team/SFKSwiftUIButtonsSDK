import Foundation
import SwiftUI
import ButtonCore

public struct TemplateButton<T: ButtonTemplate>: View {
    private let template: T
    private let action: () -> Void
    
    public init(template: T, action: @escaping () -> Void) {
        self.template = template
        self.action = action
    }
    
    public var body: some View {
        Button(action: action) {
            template
                .makeContent()
                .font(template.font)
                .foregroundColor(template.colors.foreground)
                .padding(template.padding)
                .background(
                    Group {
                        switch template.shape {
                        case .rectangle:
                            Rectangle().fill(template.colors.background)
                        case .capsule:
                            Capsule().fill(template.colors.background)
                        case .rounded(let radius):
                            RoundedRectangle(cornerRadius: radius).fill(template.colors.background)
                        }
                    }
                )
        }
        .buttonStyle(PlainButtonStyle())
        .modifier(PressEffect(pressedColor: template.colors.pressedBackground))
    }
}
