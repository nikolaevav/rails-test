json.id @book.id
json.title @book.title
json.about @book.about
json.image @book.image.url
json.created_at l @book.created_at, format: :book