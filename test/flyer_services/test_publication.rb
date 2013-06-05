require_relative '../helper'
require 'date'

class TestPublication < Minitest::Unit::TestCase

  def first_publication_id
    response = @client.get_publications(@org_code, @banner_code)
    response.body.publication_grouping_data.publications.publication_data.first.pub_id
  end

  def test_get_publications
    response = @client.get_publications(@org_code, @banner_code)
    assert_equal 200, response.status

    assert publications = response.body.publication_grouping_data.publications.publication_data
    refute_equal 0, publications.length
    assert publication = publications.first

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

  def test_get_publications_to_store
    response = @client.get_publications_to_store(@org_code, @banner_code)
    assert_equal 200, response.status
    assert maps = response.body.publication_store_grouping_data.publication_store_groups.publication_stores_data
    assert map = maps.first

    assert_hash_contains_keys %w{
      effective_end_date
      effective_start_date
      end_date
      last_update
      publication_id
      publication_type
      start_date
      store_headers
      total_stores
    }, map
  end

  def test_get_publication_products
    response = @client.get_publication_products(@org_code, @banner_code, first_publication_id)
    assert_equal 200, response.status
    assert product_grouping_data = response.body.product_grouping_data
    assert product_grouping_data.total_products.to_i > 0
    assert product = product_grouping_data.products.product_data.first

    assert_hash_contains_keys %w{
      banner_code
      brand_id
      brand_name
      brand_name_es
      brand_name_fr
      category_id
      category_name
      category_name_es
      category_name_fr
      description
      distance
      effective_end_date
      effective_start_date
      events
      featured_product
      financing
      id
      image_url
      images
      keywords
      keywords_matched
      link_url
      model_number
      new_product
      num_ratings
      original_price
      page_id
      page_number
      page_number_string
      parent_category_id
      price
      price_as_number
      price_savings
      price_unit
      product_bonuses
      product_colour
      product_size
      product_thumbnail_url
      product_title
      promotion
      publication_id
      quantity
      ranking
      rating
      rating_last_update
      rebate
      recipes
      ref_id
      region_area
      region_coords
      region_id
      sub_title
      terms_conditions
      upc_code
      videos
    }, product
  end

  def test_get_publication_top_products
    response = @client.get_publication_top_products(@org_code, @banner_code, first_publication_id)
    assert_equal 200, response.status
    assert product_grouping_data = response.body.product_grouping_data
    assert product_grouping_data.total_products.to_i > 0
    assert product = product_grouping_data.products.product_data.first
  end

  def test_get_preview_publications_to_store
    response = @client.get_preview_publications_to_store(@org_code, @banner_code)
    assert_equal 200, response.status
  end

  def test_get_publication_page
    response = @client.get_publication_page(@org_code, @banner_code, first_publication_id, 1)
    assert_equal 200, response.status

    assert page_grouping_data = response.body.page_grouping_data
    assert page_grouping_data.page_numbers.int.length > 0
    assert page_grouping_data.page_numbers.int[0].to_i == 1
    assert page = page_grouping_data.pages.page_data

    assert_hash_contains_keys %w{
      image_facing_height
      image_facing_url
      image_facing_width
      image_full_height
      image_full_url
      image_full_width
      image_print_height
      image_print_url
      image_print_width
      image_production_height
      image_production_width
      image_zoom_height
      image_zoom_url
      image_zoom_width
      page_category
      page_category_id
      page_id
      page_number
      page_number_string
      recipes
      thumbnail_height
      thumbnail_url
      thumbnail_width
      videos
    }, page
  end
end
