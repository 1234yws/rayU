import Foundation

struct Localization {
	enum Identifier {
		case preferences
		case preferencesEllipsized
	}

	private static let localizedStrings: [Identifier: [String: String]] = [
		.preferences: [
			"ar": "تفضيلات",
			"ca": "Preferències",
			"cs": "Předvolby",
			"da": "Indstillinger",
			"de": "Einstellungen",
			"el": "Προτιμήσεις",
			"en": "Preferences",
			"en-AU": "Preferences",
			"en-GB": "Preferences",
			"es": "Preferencias",
			"es-419": "Preferencias",
			"fi": "Asetukset",
			"fr": "Préférences",
			"fr-CA": "Préférences",
			"he": "העדפות",
			"hi": "प्राथमिकता",
			"hr": "Postavke",
			"hu": "Beállítások",
			"id": "Preferensi",
			"it": "Preferenze",
			"ja": "環境設定",
			"ko": "환경설정",
			"ms": "Keutamaan",
			"nl": "Voorkeuren",
			"no": "Valg",
			"pl": "Preferencje",
			"pt": "Preferências",
			"pt-PT": "Preferências",
			"ro": "Preferințe",
			"ru": "Настройки",
			"sk": "Nastavenia",
			"sv": "Inställningar",
			"th": "การตั้งค่า",
			"tr": "Tercihler",
			"uk": "Параметри",
			"vi": "Tùy chọn",
			"zh-CN": "偏好设置",
			"zh-HK": "偏好設定",
			"zh-TW": "偏好設定"
		],
		.preferencesEllipsized: [
			"ar": "تفضيلات…",
			"ca": "Preferències…",
			"cs": "Předvolby…",
			"da": "Indstillinger…",
			"de": "Einstellungen…",
			"el": "Προτιμήσεις…",
			"en": "Preferences…",
			"en-AU": "Preferences…",
			"en-GB": "Preferences…",
			"es": "Preferencias…",
			"es-419": "Preferencias…",
			"fi": "Asetukset…",
			"fr": "Préférences…",
			"fr-CA": "Préférences…",
			"he": "העדפות…",
			"hi": "प्राथमिकता…",
			"hr": "Postavke…",
			"hu": "Beállítások…",
			"id": "Preferensi…",
			"it": "Preferenze…",
			"ja": "環境設定…",
			"ko": "환경설정...",
			"ms": "Keutamaan…",
			"nl": "Voorkeuren…",
			"no": "Valg…",
			"pl": "Preferencje…",
			"pt": "Preferências…",
			"pt-PT": "Preferências…",
			"ro": "Preferințe…",
			"ru": "Настройки…",
			"sk": "Nastavenia…",
			"sv": "Inställningar…",
			"th": "การตั้งค่า…",
			"tr": "Tercihler…",
			"uk": "Параметри…",
			"vi": "Tùy chọn…",
			"zh-CN": "偏好设置…",
			"zh-HK": "偏好設定⋯",
			"zh-TW": "偏好設定⋯"
		]
	]

	// TODO: Use a static subscript instead of a `get` method when using Swift 5.1
	/**
	Returns the localized version of the given string.

	- Note: If the system's locale can't be determined, the English localization of the string will be returned.
	- Parameter identifier: Identifier of the string to localize.
	*/
	static func get(identifier: Identifier) -> String {
		let locale = Locale.current

		// Force-unwrapped since all of the involved code is under our control.
		let localizedDict = Localization.localizedStrings[identifier]!
		let defaultLocalizedString = localizedDict["en"]!

		guard
			let languageCode = locale.languageCode,
			let regionCode = locale.regionCode
		else {
			return defaultLocalizedString
		}

		let localeIdentifier = "\(languageCode)-\(regionCode)"
		if let localizedString = localizedDict[localeIdentifier] {
			return localizedString
		}

		if let localizedString = localizedDict[languageCode] {
			return localizedString
		}

		return defaultLocalizedString
	}
}
