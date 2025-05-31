class SeekersController < ApplicationController
  # POST /seekers (Sign up)
  def create
    seeker = Seeker.new(seeker_params)
    if seeker.save
      render json: { message: "Seeker created!", seeker: seeker }, status: :created
    else
      render json: { errors: seeker.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # GET /seekers/:id (Show profile)
  def show
    seeker = Seeker.find(params[:id])
    render json: seeker
  end

  # PATCH /seekers/:id (Update profile)
  def update
    seeker = Seeker.find(params[:id])
    if seeker.update(seeker_params)
      render json: { message: "Seeker updated!", seeker: seeker }
    else
      render json: { errors: seeker.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def seeker_params
    params.require(:seeker).permit(:name, :email, :password, :pal_id, :is_anonymous)
  end
end
