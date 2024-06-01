class SearchController < ApplicationController
  def index
    @query = params[:query]
    @animes = Anime.where('title LIKE ?', "%#{@query}%")
    @voice_actors = VoiceActor.where('name LIKE ?', "%#{@query}%")
  end
end
