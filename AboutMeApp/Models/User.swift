//
//  User.swift
//  AboutMeApp
//
//  Created by Юрий Емелин on 13.05.2023.
//
import Foundation

struct User {
    let id = UUID()
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let photo: String
    let bio: String
    let job: Company
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Iurii",
            surname: "Emelin",
            photo: "Iurii Emelin",
            bio: """
            Юрий Емелин родился и вырос. Много читал и писал в своей жизни.
                 Он ОЧЕНЬ хотел участвовать в разработке какого - нибудь
                 амбициозного проекта - наподобие GTA V. Для этого он пошел
                 учиться на курсы Swiftbook.
            """,
            job: Company.getCompany()
        )
    }
}

struct Company {
    let title: String
    let jobTitle: JobTitle
    let department: Department
    
    static func getCompany() -> Company {
        Company(
            title: "ИП",
            jobTitle: .ceo,
            department: .management
        )
    }
}

enum JobTitle: String {
    case ceo = "CEO"
    case cto = "CTO"
}

enum Department: String {
    case management = "Management"
    case marketing = "Marketing"
}
