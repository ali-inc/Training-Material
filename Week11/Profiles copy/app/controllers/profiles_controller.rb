class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  before_action :check_login

  # GET /profiles
  # GET /profiles.json
  def index
    if current_user.role == 2
      redirect_to '/profiles/adminindex'
    else
      @profiles_draft = Profile.where(user_id: current_user.id, status: "Draft").order(:name)
      @profiles_pending = Profile.where(user_id: current_user.id, status: "Pending").order(:name)
      @profiles_approved = Profile.where(user_id: current_user.id, status: "Approved").order(:name)
      @profiles_rejected = Profile.where(user_id: current_user.id, status: "Rejected").order(:name)
    end
  end

  def adminindex

    if current_user.role == 2
      @profiles_pending = Profile.where(status: "Pending").order(:name)
      @profiles_approved = Profile.where(status: "Approved").order(:name)
      @profiles_rejected = Profile.where(status: "Rejected").order(:name)
    else
      redirect_to '/profiles/'
    end

  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    if current_user.role == 2 || @profile.user_id == current_user.id
      respond_to do |format|
        format.docx do
          render docx: 'show'
        end
        format.pdf do
            render :pdf => "#{@profile.name} Profile", :template => "profiles/show.html.erb", layout: 'pdf'
        end
        format.html do
          render :show
        end
      end
    else
      redirect_to '/profiles/'
    end
  end

  # GET /profiles/new
  def new
    @sections = Section.all
    @projects = Project.where(user_id: current_user.id)
    @employment = Employment.where(user_id: current_user.id).order(end_date: :desc )
    @education = Education.where(user_id: current_user.id).order(end_date: :desc )
    @certifications = Certification.where(user_id: current_user.id)
    @customs = Custom.where(user_id: current_user.id)
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit
    if current_user.role == 2 || @profile.user_id == current_user.id
      @sections = Section.all
      @projects = Project.where(user_id: @profile.user_id)
      @employment = Employment.where(user_id: @profile.user_id).order(end_date: :desc )
      @education = Education.where(user_id: @profile.user_id).order(end_date: :desc )
      @certifications = Certification.where(user_id: @profile.user_id)
      @customs = Custom.where(user_id: @profile.user_id)
    else
      redirect_to '/profiles/'
    end
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id
    @profile.name = "#{current_user.first_name} #{current_user.last_name}"
    @profile.email = "#{(current_user.email).downcase}"
    if profile_params[:status] == "Approved" || profile_params[:status] == "Rejected"
      @profile.approved_by = "#{current_user.first_name} #{current_user.last_name}"
    end
    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: '*Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        @sections = Section.all
        @projects = Project.where(user_id: current_user.id)
        @employment = Employment.where(user_id: current_user.id)
        @education = Education.where(user_id: current_user.id)
        @certifications = Certification.where(user_id: current_user.id)
        @customs = Custom.where(user_id: current_user.id)
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
    if profile_params[:status] == "Pending" # This condition sends an email if profile status is set to pending
      NotificationMailer.new_pending(@profile).deliver_now
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    if profile_params[:status] == "Approved" || profile_params[:status] == "Rejected"
      @profile.approved_by = "#{current_user.first_name} #{current_user.last_name}"
    else
      @profile.approved_by = ""
    end

    if profile_params[:status] == "Pending" # This condition sends an email if profile status is set to pending
      NotificationMailer.new_pending(@profile).deliver_now
    end

    respond_to do |format|
      if @profile.update(profile_params)
        if profile_params[:status] == "Approved"
          format.html { redirect_to profiles_url, notice: '*Profile was successfully approved.' }
        elsif profile_params[:status] == "Rejected"
          format.html { redirect_to profiles_url, notice: '*Profile was rejected.' }
        else
        format.html { redirect_to @profile, notice: '*Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
        end
        if profile_params[:status] == "Approved" || profile_params[:status] ==  "Rejected"
          NotificationMailer.new_response(@profile).deliver_now
        end
      else
        @sections = Section.all
        @projects = Project.where(user_id: current_user.id)
        @employment = Employment.where(user_id: current_user.id)
        @education = Education.where(user_id: current_user.id)
        @certifications = Certification.where(user_id: current_user.id)
        @customs = Custom.where(user_id: current_user.id)
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: '*Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def token
    puts "making token"
    @token = Tokenurl.new
    puts params[:profile_id]
    @token.profile_id = params[:profile_id]
    @token.token = SecureRandom.urlsafe_base64
    @token.save
    @profile = Profile.find(@token.profile_id)

  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(
        :summary,
        :degree,
        :stream,
        :status,
        section_ids: [],
        project_ids: [],
        employment_ids:[],
        certification_ids: [],
        education_ids: [],
        custom_ids: []
      )
    end

end
