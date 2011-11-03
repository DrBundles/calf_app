class Calf < ActiveRecord::Base
  attr_accessible :lotNum, :contHyp, :hypDays, :age, :gender, :sacrificeDate, :pasys,
                  :padias, :pamean, :aosys, :aodias, :aomean, :notes

    validates :lotNum, :presence => true,
                       :uniqueness => true

    validates :contHyp, :presence => true,
                        :format => { :with => /\b(cont(rol)?|hyp(oxic)?)\b/i }

    validates :age, :numericality => true 

    validates :gender, :format => { :with => /\b(m(ale)?)\b|\b(f(emale)?)\b/i }

    validates :pasys,  :numericality => true
    validates :padias, :numericality => true
    validates :pamean, :numericality => true
    validates :aosys,  :numericality => true
    validates :aodias, :numericality => true
    validates :aomean, :numericality => true

end
