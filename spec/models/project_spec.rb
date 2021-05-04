# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Project, type: :model do
  it 'Valid with Description, start date and end date' do
    project = create(:new_project) # cria e salva
    expect(project).to be_valid
  end

  it 'is invalid without the Description.' do
    project = build(:new_project, description: nil)
    project.valid?
    expect(project.errors[:description]).to end_with('não pode ficar em branco')
  end

  it 'It is invalid without the start date.' do
    project = build(:new_project, start_date: nil)
    project.valid?
    expect(project.errors[:start_date]).to end_with('não pode ficar em branco')
  end

  it 'It is invalid without the end date' do
    project = build(:new_project, end_date: nil)
    project.valid?
    expect(project.errors[:end_date]).to end_with('não pode ficar em branco')
  end

  it 'Returns a project with the full description' do
    project = create(:new_project)
    expect(project.full_description).to eq("#{project.description} - #{project.start_date} - #{project.end_date}")
  end
end
