import Foundation

/// Translates a string the daemon produced for display — a warning, a hold's tool label, a sniffed
/// assertion's reason — through the app's string catalog.
///
/// The daemon is a bare command-line tool with no localization bundle, so it always speaks English.
/// The strings it can send are fixed, so the catalog carries them as manual entries keyed by their
/// English text; anything it doesn't know (an agent's free-form hold reason) passes through as is.
nonisolated func localizedDaemonText(_ text: String) -> String {
    Bundle.main.localizedString(forKey: text, value: text, table: nil)
}
