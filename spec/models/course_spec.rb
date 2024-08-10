require 'rails_helper'

RSpec.describe Course, type: :model do
  it "is valid with valid attributes" do
    course = Course.new(title: "Docker for Beginners", description: "Learn Docker from scratch.")
    expect(course).to be_valid
  end

  it "is not valid without a title" do
    course = Course.new(description: "Learn Docker from scratch.")
    expect(course).not_to be_valid
  end
end
