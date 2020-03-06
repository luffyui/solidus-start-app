# frozen_string_literal: true

require 'spec_helper'

describe 'taxons', type: :system, caching: true do
  let!(:taxonomy) { create(:taxonomy) }
  let!(:taxon) { create(:taxon, taxonomy: taxonomy, parent: taxonomy.root) }

  before do
    # Warm up the cache
    visit spree.products_path

    clear_cache_events
  end

  it "busts the cache when a taxon changes" do
    taxon.touch(:updated_at)

    visit spree.products_path
    # Cache rewrites:
    # - 2 x categories component
    # - 1 x taxons list in search form
    # - 1 x categories in navigation
    expect(cache_writes.count).to eq(4)
  end

  it "busts the cache when max_level_in_taxons_menu conf changes" do
    stub_spree_preferences(max_level_in_taxons_menu: 5)
    visit spree.products_path

    # Cache rewrites:
    # - 2 x categories component
    expect(cache_writes.count).to eq(2)
  end
end
