require 'rails_helper'

RSpec.describe "units/index", type: :view do
  before(:each) do
    assign(:units, [
      Unit.create!(
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
      ),
      Unit.create!(
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
      )
    ])
  end

  it "renders a list of units" do
    render
    assert_select "tr>td", :text => "Price".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Width".to_s, :count => 2
    assert_select "tr>td", :text => "Length".to_s, :count => 2
    assert_select "tr>td", :text => "Height".to_s, :count => 2
    assert_select "tr>td", :text => "Door Height".to_s, :count => 2
    assert_select "tr>td", :text => "Door Width".to_s, :count => 2
    assert_select "tr>td", :text => "Door Type".to_s, :count => 2
    assert_select "tr>td", :text => "Access Type".to_s, :count => 2
    assert_select "tr>td", :text => "Floor".to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => "Area".to_s, :count => 2
    assert_select "tr>td", :text => "Standard Rate".to_s, :count => 2
    assert_select "tr>td", :text => "Managed Rate".to_s, :count => 2
    assert_select "tr>td", :text => "Available For Move In".to_s, :count => 2
    assert_select "tr>td", :text => "Rentable".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Payment Status".to_s, :count => 2
    assert_select "tr>td", :text => "Current Ledger".to_s, :count => 2
    assert_select "tr>td", :text => "Current Tenant".to_s, :count => 2
    assert_select "tr>td", :text => "Combination Lock Number".to_s, :count => 2
    assert_select "tr>td", :text => "Attribute Description".to_s, :count => 2
    assert_select "tr>td", :text => "Deleted".to_s, :count => 2
    assert_select "tr>td", :text => "Damaged".to_s, :count => 2
    assert_select "tr>td", :text => "Complimentary".to_s, :count => 2
    assert_select "tr>td", :text => "Channel Rate".to_s, :count => 2
    assert_select "tr>td", :text => "Unit Amenities".to_s, :count => 2
    assert_select "tr>td", :text => "Unit Type".to_s, :count => 2
    assert_select "tr>td", :text => "Unit Group".to_s, :count => 2
  end
end
