//
//  FilmData.swift
//  SourcePrac
//
//  Created by Chun-Li Cheng on 2022/6/13.
//

import Foundation

struct FilmData: Codable {
    var films: [FilmDetail]
}

struct FilmDetail: Codable {
    var film_id: Int
    var imdb_id: Int
    var imdb_title_id: String
    var film_name: String
//    var other_titles: []
//    var images:
    var synopsis_long: String
}

//struct OtherTitle: Codable {
//
//}

//            "other_titles": {
//                "EN": "Mad Max (1979)"
//            },
//            "release_dates": [
//                {
//                    "release_date": "2022-06-17",
//                    "notes": "XXX"
//                }
//            ],
//            "age_rating": [
//                {
//                    "rating": "15 ",
//                    "age_rating_image": "https://assets.movieglu.com/age_rating_logos/xx/15.png",
//                    "age_advisory": "strong threat, violence, injury detail"
//                }
//            ],
//            "film_trailer": null,
//            "synopsis_long": "A police officer realizes that his life is in danger when he is targeted for the murder of the leader of a motorcycle gang in futuristic Australia.",
//            "images": {
//                "poster": {
//                    "1": {
//                        "image_orientation": "portrait",
//                        "region": "UK",
//                        "medium": {
//                            "film_image": "https://image.movieglu.com/2756/GBR_002756h0.jpg",
//                            "width": 200,
//                            "height": 300
//                        }
//                    }
//                }
//            }
//        },
//        {
//            "film_id": 4167,
//            "imdb_id": 58625,
//            "imdb_title_id": "tt0058625",
//            "film_name": "Woman in the Dunes",
//            "other_titles": null,
//            "release_dates": [
//                {
//                    "release_date": "2022-06-11",
//                    "notes": "XXX"
//                }
//            ],
//            "age_rating": [
//                {
//                    "rating": "15 ",
//                    "age_rating_image": "https://assets.movieglu.com/age_rating_logos/xx/15.png",
//                    "age_advisory": "Contains moderate sex and sexual assault"
//                }
//            ],
//            "film_trailer": null,
//            "synopsis_long": "When entomologist Jumpei (Eiji Okada) travels to sand dunes on an expedition, he is met by a group of people who offer him a place to spend the night. They soon lead him to a house at the bottom of a sandpit. Upon climbing into the pit, he finds a young widow (Kyoko Kishida) living alone. Placed there by the villagers, her task is to dig sand out of the pit -- not only so that they can avoid getting buried, but so that the locals can use it for construction. The next morning, when Jumpei attempts to leave, he finds that the ladder which brought him into the pit is no longer there and the villagers inform him that he must stay and help the woman dig. After trying to get out of the pit, Jumpei takes his anger out on the woman--only to soon become her lover. After some time, he slowly gives in to accepting his predicament. This interesting story takes a simple yet effective route in philosophical allegory, focusing upon the couple's oppressive confinement and the force of their physical attraction to each other in spite of--or because of--their situation. Taken from the novel by Kobo Abe, director/producer Hiroshi Teshigahara completed this visually stunning feature on a budget of only $100,000. Winning a Special Jury Prize at Cannes in 1964, the poetic Woman in the Dunes would go on to be nominated for two Academy Awards: Best Foreign Film (1964) and Best Director (1965).~ Kristie Hassen, All Movie Guide",
//            "images": {
//                "poster": []
//            }
//        }
//    ],
//    "status": {
//        "count": 2,
//        "state": "OK",
//        "method": "filmsComingSoon",
//        "message": null,
//        "request_method": "GET",
//        "version": "INDI_8_XXv200",
//        "territory": "XX",
//        "device_datetime_sent": "2021-06-13T09:56:17Z",
//        "device_datetime_used": "2021-06-13 09:56:17"
//    }
