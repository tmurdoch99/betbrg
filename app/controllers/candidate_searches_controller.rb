class CandidateSearchesController < ApplicationController

def new
  @candidate_search = CandidateSearch.new
end

def create
  @candidate_search = CandidateSearch.create!(params[:candidate_search])
  redirect_to @candidate_search
end

def show
  @candidate_search = CandidateSearch.find(params[:id])
end
end
