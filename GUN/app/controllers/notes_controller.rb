class NotesController < ApplicationController
  before_action :set_user

  def index
    @notes = @user.notes
  end

  def new
    @note = @user.notes.build
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    @note.update(note_params)

    redirect_to group_user_notes_path
  end
  def create
    @note = @user.notes.build(note_params)
    @note.save
    redirect_to group_user_notes_path
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to group_user_notes_path
  end




  private
  def set_user
    @user = User.find(params[:user_id])
  end

  def note_params
    params.require(:note).permit(:name, :user_id,:group_id)
  end


end