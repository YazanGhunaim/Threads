//
//  ThreadFilter.swift
//  threads
//
//  Created by Yazan Ghunaim on 8/23/23.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable {
    case threads
    case replies
    
    // for identifiable protocol
    var id: Int {
        return self.rawValue
    }
    
    var title: String {
        switch self {
        case .threads: return "Threads"
        case .replies: return "Replies"
        }
    }
}
