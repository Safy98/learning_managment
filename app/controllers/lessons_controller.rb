class LessonsController < ApplicationController
  before_action :set_lesson, only: %i[ show edit update ]

  # GET /lessons/1 or /lessons/1.json
  def show
    @course = @lesson.course
  end

  # PATCH/PUT /lessons/1 or /lessons/1.json
  def update
   @lesson
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson
      @lesson = Lesson.find(params.expect(:id))
    end
end
