let names = ["Sally", "Sheldon", "Chris", "Alex"]

class Person {
    var name: String = ""
    func introduceMyself() {
        print("Hi, my name is \(name).")
    }
}
// "Chef", "Poet", "Astronaut".

class Chef: Person {
    override func introduceMyself() {
        super.introduceMyself()
        print("I am a chef.")
    }

}
class Poet: Person {
    override func introduceMyself() {
        super.introduceMyself()
        print("I am a poet.")
    }
    

}
class Astronaut: Person {
    override func introduceMyself() {
        super.introduceMyself()
        print("I am an astronaut.")
    }
}

for _ in 1...10 {
    let nameRnd = names[Int.random(in: 0...names.count-1)]
    let occupationRnd = Int.random(in: 0...3)
    var person = Person()
    if occupationRnd == 1 {
        person = Chef()
    } else if occupationRnd == 2 {
        person = Poet()
    } else {
        person = Astronaut()
    }
    person.name = nameRnd
    person.introduceMyself()
}

