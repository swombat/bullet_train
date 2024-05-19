class Account::Projects::WidgetsController < Account::ApplicationController
  include SortableActions
  account_load_and_authorize_resource :widget, through: :project, through_association: :widgets

  # GET /account/projects/:project_id/widgets
  # GET /account/projects/:project_id/widgets.json
  def index
    delegate_json_to_api
  end

  # GET /account/projects/widgets/:id
  # GET /account/projects/widgets/:id.json
  def show
    delegate_json_to_api
  end

  # GET /account/projects/:project_id/widgets/new
  def new
  end

  # GET /account/projects/widgets/:id/edit
  def edit
  end

  # POST /account/projects/:project_id/widgets
  # POST /account/projects/:project_id/widgets.json
  def create
    respond_to do |format|
      if @widget.save
        format.html { redirect_to [:account, @widget], notice: I18n.t("projects/widgets.notifications.created") }
        format.json { render :show, status: :created, location: [:account, @widget] }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @widget.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /account/projects/widgets/:id
  # PATCH/PUT /account/projects/widgets/:id.json
  def update
    respond_to do |format|
      if @widget.update(widget_params)
        format.html { redirect_to [:account, @widget], notice: I18n.t("projects/widgets.notifications.updated") }
        format.json { render :show, status: :ok, location: [:account, @widget] }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @widget.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account/projects/widgets/:id
  # DELETE /account/projects/widgets/:id.json
  def destroy
    @widget.destroy
    respond_to do |format|
      format.html { redirect_to [:account, @project, :widgets], notice: I18n.t("projects/widgets.notifications.destroyed") }
      format.json { head :no_content }
    end
  end

  private

  if defined?(Api::V1::ApplicationController)
    include strong_parameters_from_api
  end

  def process_params(strong_params)
    # 🚅 super scaffolding will insert processing for new fields above this line.
  end
end
