import Foundation
import Combine


class FeedFetcher: ObservableObject {
    private static let apiUrlString = "https://api.hnpwa.com/v0/news/1.json"
    
    @Published var items: [FeedItem] = []
    
    init() {
        guard let apiUrl = URL(string: FeedFetcher.apiUrlString) else {
            return
        }
        
        URLSession.shared.dataTask(with: apiUrl) { [weak self] (data, _, error) in
            print(error)
            let root = try! JSONDecoder().decode([FeedItem].self, from: data!)
            DispatchQueue.main.async { [weak self] in
                self?.items = root
            }
        }.resume()
    }
}

func testData() -> [FeedItem] {
    if let path = Bundle.main.path(forResource: "1", ofType: "json") {
        let data = try! Data(contentsOf: URL(fileURLWithPath: path))
        let root = try! JSONDecoder().decode([FeedItem].self, from: data)
        return root
    } else {
        return []
    }
}
