# frozen_string_literal: true

RSpec.describe ShareasaleRuby do
  subject(:directory) { described_class }

  it 'has a version number' do
    expect(ShareasaleRuby::VERSION).not_to be nil
  end
end
