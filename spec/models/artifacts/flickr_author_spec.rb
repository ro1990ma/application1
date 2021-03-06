require 'rails_helper'
require 'models/concerns/artifacts/author_strategy'

RSpec.describe Artifacts::FlickrAuthor, type: :model do

  it_behaves_like 'artifacts author strategy'
end
