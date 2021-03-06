ActiveAdmin.register Media do
  index do
    column :id
    column :event
    column :file
    column :desc
    default_actions
  end

  filter :id

  form do |f|
    f.inputs "Album" do
      f.input :event_id, :as => :select, :collection => Event.all
      f.input :file, :as => :file
      f.input :desc
    end
    f.actions
  end

  controller do
    def permitted_params
      params.permit(:media => [:event_id, :file, :desc])
    end
  end

end
