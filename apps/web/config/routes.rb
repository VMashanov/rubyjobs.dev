# typed: false
# frozen_string_literal: true

root to: 'vacancies#index'

resources :vacancies,   only: %i[new create show]
resources :subscribers, only: %i[create]

get '/terms', to: 'static#terms', as: :terms
get '/about', to: 'static#about', as: :about
get '/contacts', to: 'static#contacts', as: :contacts
get '/feed.rss', to: 'rss_feed#index'
get '/sitemap.xml', to: 'sitemap#index'
