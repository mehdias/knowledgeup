class KnowledgesController < ApplicationController
    def index
      @knowledge = Knowledge.order("RANDOM()").first
    end
    def new
      @knowledge = Knowledge.new
    end

    def create
      Knowledge.create(knowledge_params)
      if @knowledge.invalid?
        flash[:error] = '<strong> could not save</strong> The data you entered is invalid.'
      end
      redirect_to root_path
    end

    private

    def knowledge_params
      params.require(:knowledge).permit(:title, :description, :written_by)
    end

end
