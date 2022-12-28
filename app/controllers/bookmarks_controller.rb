class BookmarksController < ApplicationController
    def create
        quiz = Quiz.find(params[:quiz_id])
        current_user.bookmark(quiz)
        redirect_back fallback_location: root_path
    end

    def destroy
        quiz = current_user.bookmarks.find(params[:id]).quiz
        current_user.unbookmark(quiz)
        redirect_back fallback_location: root_path
    end
end
