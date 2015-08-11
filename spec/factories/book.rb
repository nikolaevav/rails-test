# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book do
    title "Заголовок книги"
    about "Описание книги"
    image  Rack::Test::UploadedFile.new('spec/fixtures/goaway.jpeg', 'image/jpeg')
  end
end
