class Calf < ActiveRecord::Base
  attr_accessible :lotNum, :contHyp, :hypDays, :age, :gender, :sacrificeDate#, :pasys,
                  #:padias, :pamean, :aosys, :aodias, :aomean, :notes
 

  def uploadData
    @import_export = ImportExport.find(:last)
    @data = ReadCalfSpreadsheet.new( "",  @import_export.attachment.path )
    @calf = Calf.create(@data.sheetData[3])
    #@data.sheetData.each do |tmpData|
    #  @calf = Calf.create(tmpData)
    #end
  end


    validates :lotNum, :presence => true,
                       :uniqueness => true

    validates :contHyp, :format => { :with => /\b(Control|Hypoxic)\b/ },
                        :allow_nil => true 

    validates :age, :numericality => true,
                    :allow_nil => true 

    validates :gender, :format => { :with => /\b(Male\b|\bFemale)\b/i },
                       :allow_nil => true 

    #validates :pasys,  :numericality => true
    #validates :padias, :numericality => true
    #validates :pamean, :numericality => true
    #validates :aosys,  :numericality => true
    #validates :aodias, :numericality => true
    #validates :aomean, :numericality => true

end
