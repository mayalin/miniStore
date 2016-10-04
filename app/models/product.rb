class Product < ApplicationRecord
  mount_uploader :image, ImageUploader

  enum size: [:'36', :'37', :'38', :'39', :'40', :'41']
end
