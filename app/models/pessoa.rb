class Pessoa < ApplicationRecord
    belongs_to :genero
    has_many :telefones , :dependent => :destroy
    accepts_nested_attributes_for :telefones, allow_destroy: true, reject_if: lambda {|attributes| attributes['numero'].blank?}
end