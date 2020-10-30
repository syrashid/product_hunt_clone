require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "a user should visit the index and see a certain header" do
    # Set Up, taken care of by fixtures

    # Exercise
    visit root_path

    # Verify
    assert_selector "h1", text: "Awesome Products"

    # Teardown, taken care of by the fixtures
  end

  test "lets a signed in user create a new product" do
    login_as users(:sy)
    visit "/products/new"

    fill_in "product_name", with: "Le Wagon"

    fill_in "product_tagline", with: "Change your life: Learn to code"
    # save_and_open_screenshot

    click_on 'Create Product'
    # save_and_open_screenshot

    # Should be redirected to Home with new product
    assert_equal root_path, page.current_path
    assert_text "Change your life: Learn to code"
  end
end
