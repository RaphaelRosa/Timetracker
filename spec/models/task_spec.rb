require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'creation' do
    before do
      @task = Task.create(title: 'Save the world', start: DateTime.now)
    end

    it 'can be created' do
      expect(@task).to be_valid
    end

    it 'cannot be created without a title' do
      @task.title = nil
      expect(@task).to_not be_valid
    end

    it 'cannot be created without a start datetime' do
      @task.start = nil
      expect(@task).to_not be_valid
    end
  end
end
