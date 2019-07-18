require 'rails_helper'

RSpec.describe "units/show", type: :view do
  before(:each) do
    @unit = assign(:unit, Unit.create!(
      :price => "Price",
      :name => "Name",
      :description => "Description",
      :width => "Width",
      :length => "Length",
      :height => "Height",
      :door_height => "Door Height",
      :door_width => "Door Width",
      :door_type => "Door Type",
      :access_type => "Access Type",
      :floor => "Floor",
      :size => "Size",
      :area => "Area",
      :standard_rate => "Standard Rate",
      :managed_rate => "Managed Rate",
      :available_for_move_in => "Available For Move In",
      :rentable => "Rentable",
      :status => "Status",
      :payment_status => "Payment Status",
      :current_ledger_id => "Current Ledger",
      :current_tenant_id => "Current Tenant",
      :combination_lock_number => "Combination Lock Number",
      :attribute_description => "Attribute Description",
      :deleted => "Deleted",
      :damaged => "Damaged",
      :complimentary => "Complimentary",
      :channel_rate => "Channel Rate",
      :unit_amenities => "Unit Amenities",
      :unit_type => "Unit Type",
      :unit_group_id => "Unit Group"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Price/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Width/)
    expect(rendered).to match(/Length/)
    expect(rendered).to match(/Height/)
    expect(rendered).to match(/Door Height/)
    expect(rendered).to match(/Door Width/)
    expect(rendered).to match(/Door Type/)
    expect(rendered).to match(/Access Type/)
    expect(rendered).to match(/Floor/)
    expect(rendered).to match(/Size/)
    expect(rendered).to match(/Area/)
    expect(rendered).to match(/Standard Rate/)
    expect(rendered).to match(/Managed Rate/)
    expect(rendered).to match(/Available For Move In/)
    expect(rendered).to match(/Rentable/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Payment Status/)
    expect(rendered).to match(/Current Ledger/)
    expect(rendered).to match(/Current Tenant/)
    expect(rendered).to match(/Combination Lock Number/)
    expect(rendered).to match(/Attribute Description/)
    expect(rendered).to match(/Deleted/)
    expect(rendered).to match(/Damaged/)
    expect(rendered).to match(/Complimentary/)
    expect(rendered).to match(/Channel Rate/)
    expect(rendered).to match(/Unit Amenities/)
    expect(rendered).to match(/Unit Type/)
    expect(rendered).to match(/Unit Group/)
  end
end
