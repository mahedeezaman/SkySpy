//
//  DateTimeService.swift
//  SkySpy
//
//  Created by Mahedee Zaman on 15/02/2024.
//

import Foundation

class DateTimeManager: ObservableObject {
    @Published var currentTime: String = ""

    private var timer: Timer?

    init() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            self.updateCurrentTime()
        }
    }

    func updateCurrentTime() {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.dateFormat = "hh:mm:ss a"
        currentTime = dateFormatter.string(from: Date())
    }
}

