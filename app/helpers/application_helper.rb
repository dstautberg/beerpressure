module ApplicationHelper
  def show_developer_login?
    ["development","test"].include?(Rails.env)
  end
end
