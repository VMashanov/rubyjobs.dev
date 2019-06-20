# frozen_string_literal: true
# typed: ignore

RSpec.describe Web::Views::Vacancies::Show, type: :view do
  let(:exposures) do
    { format: :html, vacancy: vacancy_aggregate, analitics: VacancyAnalitic.new, flash: {} }
  end
  let(:template)  { Hanami::View::Template.new('apps/web/templates/vacancies/show.html.slim') }
  let(:view)      { described_class.new(template, exposures) }
  let(:rendered)  { view.render }

  let(:vacancy_aggregate) do
    Vacancy.new(
      contact: Contact.new(created_at: Time.now),
      position: 'Ruby vacancy',
      created_at: Time.now
    )
  end

  it { expect(rendered).to match('Ruby vacancy') }

  it 'exposes #format' do
    expect(view.format).to eq exposures.fetch(:format)
  end

  it 'social buttons showing' do
    expect(rendered).to match('<div class="likely likely-big">')
  end
end
