ActiveAdmin.register Template do

  permit_params :title, :description, :is_active

  scope :all, :default => true
  scope :active
  scope :inactive
  
  index do |d|         
    column :id
    column :title
    column :is_active
   
    default_actions             
  end 

  filter :id
  filter :title
    
  form do |f|
    f.inputs do
      f.input :title
      f.input :description, as: :html_editor
      f.input :is_active, :label => 'Active'
    end

    f.actions    
  end
  
end
