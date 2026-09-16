import Foundation

// AUTO-GENERATED - DO NOT EDIT

public enum AutoplayToggledValue: String {
    case `true`
    case `false`
}

public enum AutoplayToggledSource: String {
    case settings
}
public struct ProductEvent {
    public let name: String
    public let attributes: [String: String]?
    public let requirePageView: Bool?

    fileprivate init(name: String, attributes: [String: String]? = nil, requirePageView: Bool? = nil) {
        self.name = name
        self.attributes = attributes
        self.requirePageView = requirePageView
    }
}

extension ProductEvent {
    public enum Settings {

        /// User has enabled settings toggle
        ///
        /// - Parameters:
        ///   - value: Which settings toggle
        ///   - source: Which settings screen
        public static func autoplayToggled(
            value: AutoplayToggledValue,
            source: AutoplayToggledSource
        ) -> ProductEvent {
            ProductEvent(
                name: "autoplay_toggled",
                attributes: [
                    "value": value.rawValue,
                    "source": source.rawValue
                ]
            )
        }
    }
}

extension ProductEvent {
    public enum Miniplayer {

        /// User minimised the podcast player
        ///
        /// - Parameters:
        ///   - value: URL of the podcast
        ///   - source: Where event took place, eg. miniplayer
        public static func minimisePlayer(
            value: String,
            source: String
        ) -> ProductEvent {
            ProductEvent(
                name: "minimise_player",
                attributes: [
                    "value": value,
                    "source": source
                ],
                requirePageView: true
            )
        }

        /// User maximised the podcast player
        ///
        /// - Parameters:
        ///   - value: URL of the podcast
        ///   - source: Where event took place, eg. miniplayer
        public static func maximisePlayer(
            value: String,
            source: String
        ) -> ProductEvent {
            ProductEvent(
                name: "maximise_player",
                attributes: [
                    "value": value,
                    "source": source
                ]
            )
        }
    }
}