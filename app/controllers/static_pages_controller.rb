class StaticPagesController < ApplicationController
  def index
    render layout: 'layouts/landscape'
  end
end
