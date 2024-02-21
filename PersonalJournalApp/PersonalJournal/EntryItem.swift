//
//  EntryItem.swift
//  PersonalJournal
//
//  Created by thegleven
//

import Foundation

struct EntryItem: Identifiable {
    
    var id: UUID = UUID()
    var name: String
    var photo: String
    var privateMode: Bool
    
}
