require 'rails_helper'

RSpec.describe "units/edit", type: :view do
  before(:each) do
    @unit = assign(:unit, Unit.create!(
      :price => "MyString",
      :name => "MyString",
      :description => "MyString",
      :width => "MyString",
      :length => "MyString",
      :height => "MyString",
      :door_height => "MyString",
      :door_width => "MyString",
      :door_type => "MyString",
      :access_type => "MyString",
      :floor => "MyString",
      :size => "MyString",
      :area => "MyString",
      :standard_rate => "MyString",
      :managed_rate => "MyString",
      :available_for_move_in => "MyString",
      :rentable => "MyString",
      :status => "MyString",
      :payment_status => "MyString",
      :current_ledger_id => "MyString",
      :current_tenant_id => "MyString",
      :combination_lock_number => "MyString",
      :attribute_description => "MyString",
      :deleted => "MyString",
      :damaged => "MyString",
      :complimentary => "MyString",
      :channel_rate => "MyString",
      :unit_amenities => "MyString",
      :unit_type => "MyString",
      :unit_group_id => "MyString"
    ))
  end

  it "renders the edit unit form" do
    render

    assert_select "form[action=?][method=?]", unit_path(@unit), "post" do

      assert_select "input[name=?]", "unit[price]"

      assert_select "input[name=?]", "unit[name]"

      assert_select "input[name=?]", "unit[description]"

      assert_select "input[name=?]", "unit[width]"

      assert_select "input[name=?]", "unit[length]"

      assert_select "input[name=?]", "unit[height]"

      assert_select "input[name=?]", "unit[door_height]"

      assert_select "input[name=?]", "unit[door_width]"

      assert_select "input[name=?]", "unit[door_type]"

      assert_select "input[name=?]", "unit[access_type]"

      assert_select "input[name=?]", "unit[floor]"

      assert_select "input[name=?]", "unit[size]"

      assert_select "input[name=?]", "unit[area]"

      assert_select "input[name=?]", "unit[standard_rate]"

      assert_select "input[name=?]", "unit[managed_rate]"

      assert_select "input[name=?]", "unit[available_for_move_in]"

      assert_select "input[name=?]", "unit[rentable]"

      assert_select "input[name=?]", "unit[status]"

      assert_select "input[name=?]", "unit[payment_status]"

      assert_select "input[name=?]", "unit[current_ledger_id]"

      assert_select "input[name=?]", "unit[current_tenant_id]"

      assert_select "input[name=?]", "unit[combination_lock_number]"

      assert_select "input[name=?]", "unit[attribute_description]"

      assert_select "input[name=?]", "unit[deleted]"

      assert_select "input[name=?]", "unit[damaged]"

      assert_select "input[name=?]", "unit[complimentary]"

      assert_select "input[name=?]", "unit[channel_rate]"

      assert_select "input[name=?]", "unit[unit_amenities]"

      assert_select "input[name=?]", "unit[unit_type]"

      assert_select "input[name=?]", "unit[unit_group_id]"
    end
  end
end
