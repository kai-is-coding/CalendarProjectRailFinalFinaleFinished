class NotesController < ApplicationController
  def new
    @note = Note.new
    render json: @note
  end

  def create

    Note.create note_params
    redirect_to notes_path
  end

  def index
    @notes = Note.all
    render json: @notes
  end

  def show
    @note = Note.find params[:id]
    render json: @note
  end

  def edit
    @note = Note.find params[:id]
  end

  def update
    note = Note.find params[:id]
    note.update(note_params)
    redirect_to note_path(note.id)
  end

  def destroy
    Note.destroy params[:id]
    redirect_to notes_path
  end

  private
  def note_params

    params.require(:note).permit(:message, :user_id, :appointment_id)

  end
end
