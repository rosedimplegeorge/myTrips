class Trip < ApplicationRecord
        has_many:albums, dependent: :destroy
    end
