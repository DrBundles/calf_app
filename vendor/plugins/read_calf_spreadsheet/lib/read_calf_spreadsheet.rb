class ReadCalfSpreadsheet

  # To run in irb:
  #   require 'ReadCalfSpreadsheet'
  #   load 'ReadCalfSpreadsheet.rb'
  #   newData = ReadCalfSpreadsheet.new( "", "Stenmark Lab Calf Database.xls")
  #
  #   @import_export = ImportExport.find(params[:id])   
  #   data    = ReadCalfSpreadsheet.new( "", @import_export.attachment.path )
  #require 'rubygems'
  #require 'spreadsheet'

  attr_accessor :filepath, :filename 


  def initialize(filepath, filename)
    @filepath = filepath
    @filename = filename
    @sheetData = collectData
  end


  def collectData
    book = Spreadsheet.open @filepath + @filename
    puts book
    sheet1 = book.worksheet 'Raw data'
    puts sheet1

    # The total number of columns which have data
    # note: the index is one less than this value 
    numCols = sheet1.column_count 
    puts "numCols = "+numCols.to_s
    
    @sheetData = Array.new
    # Step through each column, starting at index = 2
    (2..numCols-1).each do |colInd|
      puts "colInd="+colInd.to_s
      @sheetData <<  { :lotNum        => sheet1.cell(0,  colInd),
                               :contHyp       => sheet1.cell(2,  colInd),
                               :sacrificeDate => sheet1.cell(5,  colInd),
                               :age           => sheet1.cell(6,  colInd).to_int,
                               :hypDays       => sheet1.cell(7,  colInd).to_int,
                               :weight        => sheet1.cell(8,  colInd).to_int,
                               :gender        => sheet1.cell(9,  colInd),
                               :base_HR       => sheet1.cell(12, colInd).to_int,
                               :base_cardiacOutput => sheet1.cell(13, colInd),
                               :base_cardiacIndex  => sheet1.cell(14, colInd).to_int,
                               :base_mean_pap => sheet1.cell(15, colInd).to_int,
                               :base_sys_pap  => sheet1.cell(16, colInd).to_int,
                               :base_dias_pap => sheet1.cell(17, colInd).to_int,
                               :base_pulse_pap=> sheet1.cell(18, colInd).to_int,
                               :alt_HR        => sheet1.cell(25, colInd).to_int,
                               :alt_cardiacOutput => sheet1.cell(26, colInd),
                               :alt_cardiacIndex  => sheet1.cell(27, colInd).to_int,
                               :alt_mean_pap  => sheet1.cell(28, colInd).to_int,
                               :alt_sys_pap   => sheet1.cell(29, colInd).to_int,
                               :alt_dias_pap  => sheet1.cell(30, colInd).to_int,
                               :alt_pulse_pap => sheet1.cell(31, colInd).to_int  }
    end
    return @sheetData
  end
 

  def sheetData
    @sheetData
  end


#  def uploadData
#    @sheetData.each do |data|
#      @tmpCalf  = Calf.new
#      
#      @tmpCalf.lotNum              = data.lotNum
#      @tmpCalf.contHyp             = data.contHyp
#      @tmpCalf.sacrificeDate       = data.sacrificeDate
#      @tmpCalf.age                 = data.age
#      @tmpCalf.hypDays             = data.hypDays
#      @tmpCalf.weight              = data.weight
#      @tmpCalf.gender              = data.gender
#      @tmpCalf.base_HR             = data.base_HR
#      @tmpCalf.base_cardiacOutput  = data.base_cardiacOutput
#      @tmpCalf.base_cardiacIndex   = data.base_cardiacIndex
#      @tmpCalf.base_mean_pap       = data.base_mean_pap
#      @tmpCalf.base_sys_pap        = data.base_sys_pap
#      @tmpCalf.base_dias_pap       = data.base_dias_pap
#      @tmpCalf.base_pulse_pap      = data.base_pulse_pap
#      @tmpCalf.alt_HR              = data.alt_HR
#      @tmpCalf.alt_cardiacOutput   = data.alt_cardiacOutput
#      @tmpCalf.alt_cardiacIndex    = data.alt_cardiacIndex
#      @tmpCalf.alt_mean_pap        = data.alt_mean_pap
#      @tmpCalf.alt_sys_pap         = data.alt_sys_pap
#      @tmpCalf.alt_dias_pap        = data.alt_dias_pap
#      @tmpCalf.alt_pulse_pap       = data.alt_pulse_pap
#
#
##  attr_accessible :lotNum, :contHyp, :hypDays, :age, :gender, :sacrificeDate, :pasys,
##                  :padias, :pamean, :aosys, :aodias, :aomean, :notes
#    end
#    
#    return @tmpCalf[1]
#
#  end  

end
