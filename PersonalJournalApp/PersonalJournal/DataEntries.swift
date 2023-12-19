//
//  DataEntries.swift
//  PersonalJournal
//
//  Created by theshamuel on 19/12/2023.
//

import Foundation

struct DataEntries {
    
    func getData() -> [EntryItem] {
        
        return [EntryItem(name: "Entry 1",
                          photo: "bunny1",
                          privateMode: true),
                
                EntryItem(name: "Entry 2",
                          photo: "bunny2",
                          privateMode: true),
                
                EntryItem(name: "Entry 3",
                          photo: "bunny3",
                          privateMode: true),
                
                EntryItem(name: "Entry 4",
                          photo: "bunny1",
                          privateMode: true),
                
                EntryItem(name: "Entry 5",
                          photo: "bunny2",
                          privateMode: false),
                
                EntryItem(name: "Entry 6",
                          photo: "bunny3",
                          privateMode: false),
                
                EntryItem(name: "Entry 7",
                          photo: "bunny1",
                          privateMode: false)
        ]
    }
}
