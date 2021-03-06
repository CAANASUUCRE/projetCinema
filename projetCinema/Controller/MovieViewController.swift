//
//  MovieViewController.swift
//  tpMovie
//
//  Created by vanhouta on 18/05/2021.
//

import UIKit

class MovieViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var categoriesLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var movieImageView: UIImageView!
    
    var movieId: Int = 0
    var movie: Movie?
    let moviesRepository = MoviesRequest()
    let imageManager = ImageManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        moviesRepository.getMovieData(id: movieId) { response in
            
            if let movieResponse = response {
                
                guard let movie = Movie(from: movieResponse) else {
                    return
                }
                
                self.movie = movie
                
                DispatchQueue.main.async() {
                    self.displayMovieInformation(movie: movie)
                    self.displayMovieImages(movie: movie)
                }
                
            }
        }
    }

    
    // Fonctions pour afficher les informations récupérer avec l'API
    private func displayMovieInformation(movie: Movie) {
        
        titleLabel.text = movie.titleMovie
        subtitleLabel.text = movie.subtitleMovie
        synopsisLabel.text = movie.synopsisMovie
        categoriesLabel.text = movie.getTypeCatAsString()
        durationLabel.text = movie.getDurationAsString()
        
        if let yearMovie = movie.yearMovie {
            yearLabel.text = String(yearMovie)
        }
        
    }
    
    private func displayMovieImages(movie: Movie) {
        
        if let url = movie.getImageUrl() {
            imageManager.getImage(url: url) { image, imageUrl in
                DispatchQueue.main.async() {
                    
                    if imageUrl ==  url.absoluteString {
                        self.movieImageView.image = image
                    }
                    
                }
            }
        }

    }
    
}

