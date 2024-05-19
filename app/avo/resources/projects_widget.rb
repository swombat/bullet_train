class Avo::Resources::ProjectsWidget < Avo::BaseResource
  self.includes = []
  self.model_class = ::Projects::Widget
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :project, as: :belongs_to
    field :name, as: :text
  end
end
