class WordCategoriesController < ApplicationController
    def index 
        @word_categories = WordCategory.order(:name)
        @word_category = WordCategory.new
    end

    def show
      @word_category = WordCategory.friendly.find(params[:id])
       @words = @word_category.words.order(:word)
       @word = current_user.words.build
    end

    def new
        #new form is defined in index action
    end

    def create
        @word_category = WordCategory.create!(word_category_params)
        respond_to do |format|
            if @word_category.save 
                format.html { redirect_to words_path, notice: 'Word Category was successfully created.' }            end
        end
    end

    def edit
        
    end

    def update

    end

    def destroy 

    end

    private
    def word_category_params
        params.require(:word_category).permit(:name)
    end
end
