class Section < ActiveRecord::Base
  scope :programming, -> { find_by name: 'programming' }
  scope :music,       -> { find_by name: 'music'       }
  scope :literature,  -> { find_by name: 'literature'  }
  scope :nowhereland, -> { find_by name: 'nowhereland' }
end
