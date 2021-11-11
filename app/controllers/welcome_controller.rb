class WelcomeController < ApplicationController
    skip_before_action :authorized, only: [:index]

    def index
        render html: 'Welcome to Tarot Card Reader...', layout: true
    end
end
