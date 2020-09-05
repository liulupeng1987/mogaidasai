class StaticPagesController < ApplicationController
  layout 'layouts/about',only: [:about]
  def about
  end

  def contact
  end

  def category
  end
end
