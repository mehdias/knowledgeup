class KnowledgesController < ApplicationController
    def index
      @knowledge = Knowledge.order("RANDOM()").first
    end
end
