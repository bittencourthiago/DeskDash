//
//  TerminalCommands.swift
//  DeskDash (iOS)
//
//  Created by Thiago on 12/04/22.
//

import Foundation

enum TerminalCommands: String {

    case xcode = "open -a Xcode.app"
    case brave = "open -a Brave\\ Browser.app"
    case discord = "open -a Discord.app"
    case terminal = "open -a Terminal.app"
    case copy = "{ text: '#D03A20' }"
    case light = "open https://www.ledr.com/colours/white.htm"
    case mail = "open -a Mail"
    case notes = "open -a Notes"
    func getImageName() -> String {
        switch self {
            case .xcode:
                return "hammer.fill"
            case .brave:
                return "brave"
            case .discord:
                return "discord"
            case .terminal:
                return "terminal"
            case .copy:
                return ""
            case .light:
                return "lightbulb.fill"
            case .mail:
                return "envelope.fill"
            case .notes:
                return "note.text"
        }
    }

}
