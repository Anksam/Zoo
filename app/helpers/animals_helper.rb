module AnimalsHelper
  def form_route(source)
    return create_animal_path if source == 'new'
    return zooo_animal_path(zooo_id: @zooo.id, id: @animal.id) if source == 'edit'
  end

  def form_action(source)
    return 'animal' if source == 'new'
    return 'put' if source == 'edit'
  end
end
