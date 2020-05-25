class PokecasController < InheritedResources::Base

  private

    def pokeca_params
      params.require(:pokeca).permit(:image, :name, :detail, :box_id, :genre_id, :rare_id)
    end

end
