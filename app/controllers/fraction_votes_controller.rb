class FractionVotesController < ApplicationController
  before_action :set_fraction_vote, only: [:show, :edit, :update, :destroy]

  # GET /fraction_votes
  # GET /fraction_votes.json
  def index
    @fraction_votes = FractionVote.all
  end

  # GET /fraction_votes/1
  # GET /fraction_votes/1.json
  def show
  end

  # GET /fraction_votes/new
  def new
    @fraction_vote = FractionVote.new
  end

  # GET /fraction_votes/1/edit
  def edit
  end

  # POST /fraction_votes
  # POST /fraction_votes.json
  def create
    @fraction_vote = FractionVote.new(fraction_vote_params)

    respond_to do |format|
      if @fraction_vote.save
        format.html { redirect_to @fraction_vote, notice: 'Fraction vote was successfully created.' }
        format.json { render :show, status: :created, location: @fraction_vote }
      else
        format.html { render :new }
        format.json { render json: @fraction_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fraction_votes/1
  # PATCH/PUT /fraction_votes/1.json
  def update
    respond_to do |format|
      if @fraction_vote.update(fraction_vote_params)
        format.html { redirect_to @fraction_vote, notice: 'Fraction vote was successfully updated.' }
        format.json { render :show, status: :ok, location: @fraction_vote }
      else
        format.html { render :edit }
        format.json { render json: @fraction_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fraction_votes/1
  # DELETE /fraction_votes/1.json
  def destroy
    @fraction_vote.destroy
    respond_to do |format|
      format.html { redirect_to fraction_votes_url, notice: 'Fraction vote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fraction_vote
      @fraction_vote = FractionVote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fraction_vote_params
      params.require(:fraction_vote).permit(:fraction_id, :vote_id, :number_of_present, :yes, :no, :dont_know)
    end
end
