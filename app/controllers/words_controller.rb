class WordsController < ApplicationController
    def index 
        if params[:word_category]
            @words= Word.joins(:word_category).where("LOWER(word_categories.name) = ?", params[:word_category])
        else
            @words=current_user.words.order(:word)
        end
        
        @word_categories = WordCategory.order(:name)
        @word_category = WordCategory.new
        @word = current_user.words.build
    end

    def show
        
    end

    def new

    end

    def create
        @word = current_user.words.create!(word_params)
        respond_to do |format|
            if @word.save 
                format.html { redirect_to words_path, notice: 'Word was successfully created.' }  
            end
        end
    end

    def edit
        
    end

    def update

    end

    def destroy 

    end

    private
    def word_params
        params.require(:word).permit(:word,:word_word_description,:user_id,:word_link,:word_category_id)
    end

end
