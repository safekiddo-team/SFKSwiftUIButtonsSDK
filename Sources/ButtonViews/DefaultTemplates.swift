import Foundation
import SwiftUI
import ButtonCore


public struct TextButtonTemplate: ButtonTemplate {
    public var text: String
    public var padding: EdgeInsets
    public var font: Font
    public var colors: ButtonColors
    public var shape: ButtonShape

    public init(text: String,
                padding: EdgeInsets,
                font: Font,
                colors: ButtonColors,
                shape: ButtonShape) {
        self.text = text
        self.padding = padding
        self.font = font
        self.colors = colors
        self.shape = shape
    }

    @ViewBuilder
    public func makeContent() -> some View {
        Text(text)
    }
}


public struct IconTextButtonTemplate: ButtonTemplate {
    public var systemImageName: String
    public var text: String
    public var padding: EdgeInsets
    public var font: Font
    public var colors: ButtonColors
    public var shape: ButtonShape

    public init(systemImageName: String,
                text: String,
                padding: EdgeInsets,
                font: Font,
                colors: ButtonColors,
                shape: ButtonShape) {
        self.systemImageName = systemImageName
        self.text = text
        self.padding = padding
        self.font = font
        self.colors = colors
        self.shape = shape
    }

    @ViewBuilder
    public func makeContent() -> some View {
        HStack(spacing: 8) {
            Image(systemName: systemImageName)
            Text(text)
        }
    }
}
