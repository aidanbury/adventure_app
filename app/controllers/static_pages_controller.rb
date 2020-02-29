class StaticPagesController < ApplicationController
  def home
    direction = (1..4).to_a.shuffle.first
    @s_dir = ""
    if direction == 1
      @s_dir = "North"
    elsif direction == 2
      @s_dir = "West"
    elsif direction == 3
      @s_dir = "East"
    else
      @s_dir = "South"
    end
  end

  def about
  end

  def user
  end
end
