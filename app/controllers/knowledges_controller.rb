class KnowledgesController < ApplicationController
    def index
      @knowledge = Knowledge.order("RANDOM()").first
    end
    def new
      @knowledge = Knowledge.new
    end
end
