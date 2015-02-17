class Material < ActiveRecord::Base
  validates :author, presence: true
  validates :title, presence: true
  validates :position, presence: true
  validates :link, presence: true
  validates :year, presence: true
  validates :year,    :numericality =>  { :only_integer => true }
  validates_numericality_of :ntn, allow_nil: true
  validates_numericality_of :nen, allow_nil: true
  validates_numericality_of :non, allow_nil: true
  validates_numericality_of :nfn, allow_nil: true

  validate :ntn_xor_nen_xor_non_xor_nfn

  private

    def ntn_xor_nen_xor_non_xor_nfn
      if !(ntn or nen or non or nfn)
        errors.add(:base, "Нужно выбрать хотя бы одно направление")
      end
    end
end
