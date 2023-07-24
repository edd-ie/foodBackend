class FallbackController < ApplicationController
    def index
        render file: '/public/home.html'
    end

    def error
        render file: '/public/404.html'
    end
end
