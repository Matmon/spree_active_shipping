Spree::Admin::ShippingMethodsController.class_eval do
  private

  # overriding to return an array of Calculator objects instead of a Set
  def load_data
    @available_zones = Spree::Zone.find :all, :order => :name
    @calculators = Spree::ShippingMethod.calculators.sort_by(&:description)
  end
end
