struct Book {
    internal let name: String
    internal let author: String
    internal let yearRelease: Int
    var genre : Genre
    var isTaken: Bool
}

struct BoardGame {
    internal let name: String
    internal let players: Int
    var isTaken: Bool
}

struct Computer {
    internal let id: Int
    var isTaken: Bool
}

enum Genre {
    case horror
    case historical
    case romance
    case scienceFiction
}

enum Zone {
    case children
    case teenagers
    case common
}

protocol Person {
    var name: String? { get }
    var age: Int? { get }
}

public class Visitor: Person {
    var name: String?
    var age: Int?
    var takenBooks: [Book] = []
    var takenGames: [BoardGame] = []
    
    init(){
        self.name
        self.age
        self.takenBooks = []
        self.takenGames = []
    }
    
    fileprivate func useComputer(){
        print("делаю отчет, читаю Википедию")
    }
    func takeBook(book: Book){
        takenBooks.append(book)
    }
    func takeBoardGame(game: BoardGame){
        takenGames.append(game)
    }
}

class Student: Visitor {
    var hoursInDota: Int?
    
    override init() {
        super.init()
        self.hoursInDota
    }
    fileprivate override func useComputer() {
        print("играть в доту аоао")
    }
}

class Worker: Person {
    var name: String?
    var age: Int?
    var workZone: Zone?
    
    func help(){
        print("help with choosing a book")
    }
}

protocol Room {
    var amountVisitors: Int? { get }
    var amountWorkers: Int? { get }
    func open()
    func close()
}

class ReadingRoom: Room{
    var amountVisitors: Int?
    var amountWorkers: Int?
    var zone: Zone?
    
    func open() {
        "Open till 8pm"
    }
    
    func close() {
        "Close till 8am"
    }
}


class Сafeteria: Room {
    var amountVisitors: Int?
    var amountWorkers: Int?
    
    func open() {
        print("Open till 7pm")
    }
    
    func close() {
        print("Close till 8am")
    }
}



