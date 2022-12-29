class BookmarksController < ApplicationController
    def create
        @quiz = Quiz.find(params[:quiz_id])
        current_user.bookmark(@quiz)
    end

    def destroy
        @quiz = current_user.bookmarks.find(params[:id]).quiz
        current_user.unbookmark(@quiz)
    end
end
