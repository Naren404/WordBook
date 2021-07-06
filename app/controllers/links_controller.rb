class LinksController < ApplicationController
    def index 
        @links = Link.order(:title)
        @link = current_user.links.build
    end

    def create
        @link = current_user.links.create!(link_params)
        respond_to  do |format|
            if @link.save
                format.html { redirect_to links_path, notice:"Link was successfully created." }
            else
                format.html { render :new }
            end
            
        end
    end

    private

    def link_params
        params.require(:link).permit(:title,:source,:user_id)
    end
    
    
end
