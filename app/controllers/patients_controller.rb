
class PatientsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
  

  # GET /patients or /patients.json
  def index
    @patients = Patient.all

    respond_to do |format|
      format.html
    end
  end

  # GET /patients/1 or /patients/1.json
  def show
  end

  # GET /patients/new
  def new
    
  end

  # GET /patients/1/edit
  def edit
  end

  # POST /patients or /patients.json
  def create
    
    # @patient.user_id = current_user.id
    
    respond_to do |format|
      if @patient.save
        format.html { redirect_to patients_path, notice: "Patient was successfully created." }
        format.json { render :index, status: :created, location: @patient }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1 or /patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to patients_path, notice: "Patient was successfully updated." }
        format.json { render :index, status: :ok, location: @patient }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1 or /patients/1.json
  def destroy
    @patient.destroy!

    respond_to do |format|
      format.html { redirect_to patients_path, notice: "Patient was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def patient_params
      params.require(:patient).permit(:name, :age, :gender, :disease)  # Adjust attributes as needed
    end
    
end
