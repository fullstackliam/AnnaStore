ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :description, :price, :category_id, :image

  form do |f| # This is a formtastic form builder.
    f.semantic_errors # shows errors on :base
    # f.inputs          # builds an input field for every attribute
    f.inputs do
      f.input :category, as: :select, collection: Category.all.map { |c| [c.name, c.id] }
      f.input :image, as: :file, hint: f.object.image.present? ? image_tag(f.object.image) : ""
      f.input :name
      f.input :description
      f.input :price
    end
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end
end
