
import Foundation

struct MovieModel {
    let title: String
    let genre: Genre
    var isFavourite: Bool
    
     // Changing model is way better by changing it from inside
     //Mutable change
    mutating func changeFavourite(to newValue: Bool) {
        isFavourite = newValue
    }
    //Immutable change
    func changeFavImmutable(to newValue: Bool) -> MovieModel {
        MovieModel(title: title, genre: genre, isFavourite: newValue)
    }
    
}

enum Genre {
    case comedy, action, adventure
}

// Rule of thumb:
// We want everything to be as private as possible
// MovieManager - classroom where all action are happening within that classroom.
class MovieManager {
    
    var movies = [MovieModel]()
    
    // public
    public var movie1 = MovieModel(title: "Avatar", genre: .adventure, isFavourite: false)
    
    // private (we can't get/set value from outside)
    private var movie2 = MovieModel(title: "Attack on titan", genre: .action, isFavourite: false)
    
    // read is public, set is private (we can't set value from outside)
    private(set)var movie3 = MovieModel(title: "Naruto", genre: .comedy, isFavourite: false)
    
    func changeFavOfMovie3(newValue: Bool) {
        movie3.changeFavourite(to: newValue)
    }
    
    func changeFirstMovie( newFavValue: Bool) {
        movie1 = movie1.changeFavImmutable(to: true)
    }
    
    func addTestMovie(){
        let newMovie = MovieModel(title: "test", genre: .action, isFavourite: false)
        movies.append(newMovie)
    }
    
    func removeMovieAt(index: Int){
        movies.remove(at: index)
    }
    
    func firstIsUppercased(array: inout [MovieModel]){
        var firstElement = array[0]
        var titleUpperCased = firstElement.title.uppercased()
        array[0] = MovieModel(title: titleUpperCased, genre: firstElement.genre, isFavourite: firstElement.isFavourite)
    }
}


let manager = MovieManager()
manager.addTestMovie()
print(manager.movies)
manager.firstIsUppercased(array: &manager.movies)
print(manager.movies)


//manager.addTestMovie()
//print(manager.movies)
//manager.removeMovieAt(index: 0)
//print(manager.movies)
//
//
//
//manager.movie1.changeFavourite(to: true)
//print(manager.movie1)




// changing value right from struct by replacing old instance with a new one
manager.movie1 = manager.movie1.changeFavImmutable(to: false)
print(manager.movie1)


// change movie3 value from manager because it's private(set), can't change it from struct
manager.changeFavOfMovie3(newValue: true)
print(manager.movie3)


//Change first movie's value from manager
manager.changeFirstMovie(newFavValue: false)
print(manager.movie1)
