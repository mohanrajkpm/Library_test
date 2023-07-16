class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :status, :checked_out_by

  attribute :status do |book|
    book.checked_out? ? 'checked_out' : 'available'
  end

  attribute :checked_out_by do |book|
    book.user&.name
  end
end