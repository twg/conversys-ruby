require_relative '../helper'

class TestStore < Minitest::Test
  def first_store_id
    @client.get_stores(@org_code, @banner_code).body.store_grouping_data.stores.store_data.first.store_id
  end

  def test_get_stores
    response = @client.get_stores(@org_code, @banner_code)

    assert_equal 200, response.status
    assert store_data = response.body.store_grouping_data.stores.store_data
    assert_not_equal 0, store_data.length
    assert store = store_data.first

    assert_hash_contains_keys %w{
      address1
      address2
      banner_code
      city
      city_code
      country
      country_code
      county
      county_code
      departments
      departments_fr
      distance
      distance_unit
      email
      latitude
      longitude
      pc_zip
      phone
      region
      region_code
      store_hours
      store_hours_fr
      store_id
      store_name
      store_number
      store_region
      store_type
      web_page
    }, store
  end

  def test_get_store_publications
    response = @client.get_store_publications(@org_code, @banner_code, first_store_id)

    assert_equal 200, response.status
    assert grouping_data = response.body.publication_grouping_data
    assert publication = if grouping_data.total_publications.to_i == 1
      grouping_data.publications.publication_data
    else
      grouping_data.publications.publication_data.first
    end

    assert_hash_contains_keys %w{
      banner_code
      banner_name_en
      banner_name_es
      banner_name_fr
      description
      description_es
      description_fr
      display_mode
      distance
      edition_id
      effective_end_date
      effective_start_date
      end_date
      language
      last_update
      legacy_pub_type_id
      organization_code
      pub_id
      pub_run_id
      pub_type
      pub_type_id
      recipes
      sort_order
      start_date
      thumbnail
      title
      title_es
      title_fr
      total_pages
      videos
      zone_class
    }, publication
  end
end
