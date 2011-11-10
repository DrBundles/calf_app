class ImportExportsController < ApplicationController

  def new
    @import_export = ImportExport.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @import_export }
    end
  end


  def create
    @import_export = ImportExport.new(params[:import_export])
    
    respond_to do |format|
      if @import_export.save
        format.html { redirect_to(@import_export, :notice => 'Calf was successfully created.') }
        format.xml  { render :xml => @import_export, :status => :created, :location => @import_export }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @import_export.errors, :status => :unprocessable_entity }
      end
    end
  end


  def show
    @import_export = ImportExport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  
  def destroy
    @import_export = ImportExport.find(params[:id])
    @import_export.destroy

    respond_to do |format|
      format.html { redirect_to(root_path) }
      format.xml  { head :ok }
    end
  end

  def importSpreadsheet
    @import_export = ImportExport.find(params[:id])

    @newData = ReadCalfSpreadsheet.new( "", @import_export.attachment.path )
  end 

end
