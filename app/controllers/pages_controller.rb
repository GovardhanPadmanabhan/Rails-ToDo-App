# frozen_string_literal: true

class PagesController < ApplicationController
  def home
    @todo_list = TodoList.all
  end
end
