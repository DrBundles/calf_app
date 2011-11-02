class Calf < ActiveRecord::Base
  attr_accessible :lotNum, :contHyp, :age, :gender, :sacrificeDate, :pasys,
                  :padias, :pamean, :aosys, :aodias, :aomean, :notes

    validates :lotNum, :presence => true,
                       :uniqueness => true

    validates :contHyp, :presence => true,
                        :format => { :with => /\b(cont(rol)?|hyp(oxic)?)\b
                                     |\b(\d+(days|wks|months|yrs))\b
                                     |\b(chronic)\b/i }

    validates :age, :format => { :with => /\d+(days|wks|months|yrs)/i }

    validates :gender, :format => { :with => /\b(m(ale)?)\b|\b(f(emale)?)\b/i }

    validates :pasys,  :numericality => true
    validates :padias, :numericality => true
    validates :pamean, :numericality => true
    validates :aosys,  :numericality => true
    validates :aodias, :numericality => true
    validates :aomean, :numericality => true

end
