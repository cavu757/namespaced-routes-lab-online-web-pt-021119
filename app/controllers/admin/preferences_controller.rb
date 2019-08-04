class Admin::PreferencesController < ApplicationController

  def index
    if Preference.last
      @artist_sort_order = Preference.last[:artist_sort_order]
      @song_sort_order = Preference.last[:song_sort_order]
      @allow_create_artists = Preference.last[:allow_create_artists]
      @allow_create_songs = Preference.last[:allow_create_songs]
    else
      @artist_sort_order = "none"
      @song_sort_order = "none"
      @allow_create_artists = "none"
      @allow_create_songs = "none"
    end
  end

end
