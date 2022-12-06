class RoutinesController < ApplicationController
  # attr_reader :oily, :combi, :dry, :aging, :acne, :pigmentation, :sensitive, :darker

  # def initialize(oily, combi, dry, aging, acne, pigmentation, sensitive, darker)
  #   @oily = oily
  #   @combi = combi
  #   @dry = dry
  #   @aging = aging
  #   @acne = acne
  #   @pigmentation = pigmentation
  #   @sensitive = sensitive
  #   # @oilliness = oilliness
  #   @darker = darker
  # end

  def show
    @routine = Routine.find(params[:id])
    @routine_product = RoutineProduct.new
  end
end

#  @routine = Routine.find(params[:id, :oily, :combi, :dry, :aging, :acne, :pigmentation, :darker])
# it is possible that we need to a product has_many routines
