class Course < ApplicationRecord
  serialize :topics, Array
end
