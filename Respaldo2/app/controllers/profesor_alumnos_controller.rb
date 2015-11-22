class ProfesorAlumnosController < ApplicationController
  before_action :set_profesor_alumno, only: [:show, :edit, :update, :destroy]

  # GET /profesor_alumnos
  # GET /profesor_alumnos.json
  def index
    @profesor_alumnos = ProfesorAlumno.all
  end

  # GET /profesor_alumnos/1
  # GET /profesor_alumnos/1.json
  def show
  end

  # GET /profesor_alumnos/new
  def new
    @profesor_alumno = ProfesorAlumno.new
  end

  # GET /profesor_alumnos/1/edit
  def edit
  end

  # POST /profesor_alumnos
  # POST /profesor_alumnos.json
  def create
    @profesor_alumno = ProfesorAlumno.new(profesor_alumno_params)

    respond_to do |format|
      if @profesor_alumno.save
        format.html { redirect_to @profesor_alumno, notice: 'Profesor alumno was successfully created.' }
        format.json { render :show, status: :created, location: @profesor_alumno }
      else
        format.html { render :new }
        format.json { render json: @profesor_alumno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profesor_alumnos/1
  # PATCH/PUT /profesor_alumnos/1.json
  def update
    respond_to do |format|
      if @profesor_alumno.update(profesor_alumno_params)
        format.html { redirect_to @profesor_alumno, notice: 'Profesor alumno was successfully updated.' }
        format.json { render :show, status: :ok, location: @profesor_alumno }
      else
        format.html { render :edit }
        format.json { render json: @profesor_alumno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profesor_alumnos/1
  # DELETE /profesor_alumnos/1.json
  def destroy
    @profesor_alumno.destroy
    respond_to do |format|
      format.html { redirect_to profesor_alumnos_url, notice: 'Profesor alumno was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profesor_alumno
      @profesor_alumno = ProfesorAlumno.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profesor_alumno_params
      params.require(:profesor_alumno).permit(:profesor_id, :alumno_id)
    end
end
