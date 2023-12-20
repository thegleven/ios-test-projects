//
//  DataMovie.swift
//  Movie
//
//  Created by thegleven on 30/11/2023.
//

import Foundation

struct DataMovie {
    
    func getData() -> [MovieItem] {
        
        return [MovieItem(name: "Gone with the Wind",
                          directorName: "Victor Fleming",
                          description: "A timeless epic set during the American Civil War, known for its memorable characters and sweeping romance.",
                          yearRelease: "1939",
                          rating: 4,
                          indicateWatch: true),
                MovieItem(name: "The Godfather",
                          directorName: "Francis Ford Coppola",
                          description: "A crime drama that explores the Italian-American Mafia, featuring Marlon Brando and Al Pacino.",
                          yearRelease: "1972",
                          rating: 5,
                          indicateWatch: true),
                MovieItem(name: "Casablanca",
                          directorName: "Michael Curtiz",
                          description: "A romantic drama set in World War II, starring Humphrey Bogart and Ingrid Bergman.",
                          yearRelease: "1942",
                          rating: 5,
                          indicateWatch: true),
                MovieItem(name: "Citizen Kane",
                          directorName: "Orson Welles",
                          description: "Often cited as one of the greatest films ever made, it tells the story of a newspaper magnate's rise and fall.",
                          yearRelease: "1941",
                          rating: 3,
                          indicateWatch: true),
                MovieItem(name: "Pulp Fiction",
                          directorName: "Quentin Tarantino",
                          description: "A non-linear crime film with an ensemble cast and innovative storytelling.",
                          yearRelease: "1994",
                          rating: 1,
                          indicateWatch: false),
                MovieItem(name: "Schindler's List",
                          directorName: "Steven Spielberg",
                          description: "A powerful portrayal of a German businessman who saved the lives of more than a thousand Polish-Jewish refugees during the Holocaust.",
                          yearRelease: "1993",
                          rating: 2,
                          indicateWatch: true),
                MovieItem(name: "Lawrence of Arabia",
                          directorName: "David Lean",
                          description: "An epic historical drama that follows the life of T.E. Lawrence during World War I.",
                          yearRelease: "1962",
                          rating: 4,
                          indicateWatch: false),
                MovieItem(name: "The Shawshank Redemption",
                          directorName: "Frank Darabont",
                          description: "A prison drama based on a Stephen King novella, known for its powerful storytelling.",
                          yearRelease: "1994",
                          rating: 5,
                          indicateWatch: false),
                MovieItem(name: "Star Wars: Episode IV - A New Hope",
                          directorName: "George Lucas",
                          description: "The original Star Wars film launched one of the most iconic franchises in cinematic history.",
                          yearRelease: "1977",
                          rating: 3,
                          indicateWatch: false),
                MovieItem(name: "The Wizard of Oz",
                          directorName: "Victor Fleming",
                          description: "A beloved musical fantasy film that has captivated audiences for generations.",
                          yearRelease: "1939",
                          rating: 4,
                          indicateWatch: false)
        ]
    }
    
    func getListToWatch() -> [MovieItem] {
        
        var result:[MovieItem] = []
        
        for item in getData() {
            
            if (item.indicateWatch == false) {
                
                result.append(item)
            }
        }
        
        return result
    }
    
    func getWatched() -> [MovieItem] {
        
        var result:[MovieItem] = []
        
        for item in getData() {
            
            if (item.indicateWatch == true) {
                
                result.append(item)
            }
        }
        
        return result
    }
}

