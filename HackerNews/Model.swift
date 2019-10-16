import SwiftUI


struct FeedItem: Codable, Identifiable {
    var id: Int?

    var title: String?
    var points: Int?
    var user: String?
    var time: Int?
    var time_ago: String?
    var comments_count: Int?
    var type: String?
    var url: String?
    var domain: String?
}

