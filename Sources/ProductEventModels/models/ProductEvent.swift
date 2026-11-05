import Foundation

// AUTO-GENERATED - DO NOT EDIT

public enum SigninGateShownSource: String {
    case article
}

public enum SigninGateShownValue: String {
    case dismissibleGate
    case mandatoryGate
}

public enum SigninGateDismissedSource: String {
    case article
}

public enum SigninGateDismissedValue: String {
    case dismissibleGate
}

public enum SigninStartedSource: String {
    case signinGate
    case myguardian
    case settings
}

public enum SigninStartedMethod: String {
    case email
    case google
    case apple
}

public enum AutoplayToggledValue: String {
    case `true`
    case `false`
}

public enum AutoplayToggledSource: String {
    case settings
}

public enum NotificationSubscribedSource: String {
    case settings
    case article
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
    public enum Signingate {

        /// Sign in gate was shown after reaching the article limit
        ///
        /// - Parameters:
        ///   - source: Where the gate was shown
        ///   - value: Which gate variant was shown
        public static func signinGateShown(
            source: SigninGateShownSource,
            value: SigninGateShownValue
        ) -> ProductEvent {
            ProductEvent(
                name: "signin_gate_shown",
                attributes: [
                    "source": source.rawValue,
                    "value": value.rawValue
                ],
                requirePageView: true
            )
        }

        /// User dismissed the sign in gate
        ///
        /// - Parameters:
        ///   - source: Where the gate was dismissed
        ///   - value: Which gate variant was dismissed
        public static func signinGateDismissed(
            source: SigninGateDismissedSource,
            value: SigninGateDismissedValue
        ) -> ProductEvent {
            ProductEvent(
                name: "signin_gate_dismissed",
                attributes: [
                    "source": source.rawValue,
                    "value": value.rawValue
                ],
                requirePageView: true
            )
        }

        /// User started signing in
        ///
        /// - Parameters:
        ///   - source: Where sign in started
        ///   - method: How the user chose to sign in
        public static func signinStarted(
            source: SigninStartedSource,
            method: SigninStartedMethod
        ) -> ProductEvent {
            ProductEvent(
                name: "signin_started",
                attributes: [
                    "source": source.rawValue,
                    "method": method.rawValue
                ],
                requirePageView: true
            )
        }

        /// A quick test
        ///
        /// - Parameters:
        ///   - source: Where....
        ///   - method: How....
        public static func gateTest(
            source: String,
            method: String
        ) -> ProductEvent {
            ProductEvent(
                name: "gate_test",
                attributes: [
                    "source": source,
                    "method": method
                ]
            )
        }
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
                ],
                requirePageView: true
            )
        }
    }
}

extension ProductEvent {
    public enum Notifications {

        /// User subscribed to a notification
        ///
        /// - Parameters:
        ///   - value: Notification identifier
        ///   - source: Where event took place, eg. settings, article
        public static func notificationSubscribed(
            value: String,
            source: NotificationSubscribedSource
        ) -> ProductEvent {
            ProductEvent(
                name: "notification_subscribed",
                attributes: [
                    "value": value,
                    "source": source.rawValue
                ]
            )
        }
    }
}