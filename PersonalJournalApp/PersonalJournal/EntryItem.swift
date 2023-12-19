//
//  EntryItem.swift
//  PersonalJournal
//
//  Created by theshamuel on 19/12/2023.
//

import Foundation

struct EntryItem: Identifiable {
    
    var id: UUID = UUID()
    var name: String
    var photo: String
    var privateMode: Bool
    
}
