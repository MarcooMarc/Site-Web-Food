class BentosController < ApplicationController
  def index
    @bento = Bento.all
  end
end
