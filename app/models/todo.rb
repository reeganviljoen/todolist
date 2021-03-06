class Todo < ApplicationRecord
    has_many :comments, dependent: :destroy

    validates :title , presence: true, length: {minimum:5, maximum:15}
    validates :body, presence:true, length: {minimum:20}

    VALID_STATUSES = ['in-progress', 'done']

    validates :status , inclusion:{in:VALID_STATUSES}
end
