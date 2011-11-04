class ReadCalfSpreadsheet

  # To run in irb:
  #   require 'ReadCalfSpreadsheet'
  #   load 'ReadCalfSpreadsheet.rb'
  #   newData = ReadCalfSpreadsheet.new( "", "Stenmark Lab Calf Database.xls")

  require 'rubygems'
  require 'spreadsheet'

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
                               :age           => sheet1.cell(6,  colInd),
                               :hypDays       => sheet1.cell(7,  colInd),
                               :sacrificeDate => sheet1.cell(5,  colInd),
                               :base_HR       => sheet1.cell(12, colInd),
                               :base_sys_pap  => sheet1.cell(16, colInd),
                               :base_dias_pap => sheet1.cell(17, colInd),
                               :base_PA_pulse => sheet1.cell(18, colInd),
                               :alt_sys_pap   => sheet1.cell(29, colInd),
                               :alt_dias_pap  => sheet1.cell(30, colInd),
                               :alt_PA_pulse  => sheet1.cell(31, colInd)  }
    end
    return @sheetData
  end
 

  def sheetData
    @sheetData
  end


end
