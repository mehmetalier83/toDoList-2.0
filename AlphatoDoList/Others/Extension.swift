//
//  Extension.swift
//  AlphatoDoList
//
//  Created by Mehmet Ali Er on 7.02.2024.
//

import Foundation

extension Encodable {
    func asDictionar() -> [String: Any] {
        guard let data = try? JSONEncoder().encode(self) else {
            return [:]
        }
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
            return json ?? [:]
        } catch {
            return [:]
        }
    }
}
