import Foundation
import SwiftUI
import ButtonCore

public struct PressEffect: ViewModifier {
    let pressedColor: Color?
    @GestureState private var isPressed = false

    public func body(content: Content) -> some View {
        content
            .background(isPressed && pressedColor != nil ? pressedColor : Color.clear)
            .gesture(
                LongPressGesture(minimumDuration: 0.01)
                    .updating($isPressed) { value, state, _ in state = value }
            )
    }
}
