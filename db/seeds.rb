# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# サンプルの声優
voice_actors = VoiceActor.create([
                                   { name: 'Yui Horie', bio: 'Famous voice actress', birthdate: '1976-09-20' },
                                   { name: 'Kana Hanazawa', bio: 'Popular for various roles', birthdate: '1989-02-25' }
                                 ])

# サンプルのアニメ
animes = Anime.create([
                        { title: 'K-On!', description: 'A story about a high school band', release_date: '2009-04-02' },
                        { title: 'Steins;Gate', description: 'A time-traveling science fiction',
                          release_date: '2011-04-06' }
                      ])

# サンプルのアニメと声優の関係
AnimeVoiceActor.create([
                         { anime: animes.first, voice_actor: voice_actors.first, role: 'Yui Hirasawa' },
                         { anime: animes.last, voice_actor: voice_actors.last, role: 'Mayuri Shiina' }
                       ])
