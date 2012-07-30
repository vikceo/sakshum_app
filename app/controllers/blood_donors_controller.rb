class BloodDonorsController < ApplicationController
  # GET /blood_donors
  # GET /blood_donors.json
  def index
    @blood_donors = BloodDonor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blood_donors }
    end
  end

  # GET /blood_donors/1
  # GET /blood_donors/1.json
  def show
    @blood_donor = BloodDonor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @blood_donor }
    end
  end

  # GET /blood_donors/new
  # GET /blood_donors/new.json
  def new
    @blood_donor = BloodDonor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @blood_donor }
    end
  end

  # GET /blood_donors/1/edit
  def edit
    @blood_donor = BloodDonor.find(params[:id])
  end

  # POST /blood_donors
  # POST /blood_donors.json
  def create
    @blood_donor = BloodDonor.new(params[:blood_donor])

    respond_to do |format|
      if @blood_donor.save
        format.html { redirect_to @blood_donor, notice: 'Blood donor was successfully created.' }
        format.json { render json: @blood_donor, status: :created, location: @blood_donor }
      else
        format.html { render action: "new" }
        format.json { render json: @blood_donor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /blood_donors/1
  # PUT /blood_donors/1.json
  def update
    @blood_donor = BloodDonor.find(params[:id])

    respond_to do |format|
      if @blood_donor.update_attributes(params[:blood_donor])
        format.html { redirect_to @blood_donor, notice: 'Blood donor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @blood_donor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blood_donors/1
  # DELETE /blood_donors/1.json
  def destroy
    @blood_donor = BloodDonor.find(params[:id])
    @blood_donor.destroy

    respond_to do |format|
      format.html { redirect_to blood_donors_url }
      format.json { head :no_content }
    end
  end
end
