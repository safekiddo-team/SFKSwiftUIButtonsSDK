import Foundation
import SwiftUI

public struct ButtonColors {
    public let background: Color
    public let foreground: Color
    public let pressedBackground: Color?
    
    public init(background: Color, foreground: Color, pressedBackground: Color? = nil) {
        self.background = background
        self.foreground = foreground
        self.pressedBackground = pressedBackground
    }
}
