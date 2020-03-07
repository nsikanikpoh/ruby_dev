# TODO: complete this class

class PaginationHelper

  # The constructor takes in an array of items and a integer indicating how many
  # items fit within a single page
  attr_accessor :collection, :items_per_page
 
  def initialize(collection, items_per_page)
    @collection = collection
    @items_per_page = items_per_page
    
  end
  
  # returns the number of items within the entire collection
  def item_count
    @collection.count
  end
	
  # returns the number of pages
  def page_count
   (item_count/@items_per_page.to_f).ceil
  end
	
  # returns the number of items on the current page. page_index is zero based.
  # this method should return -1 for page_index values that are out of range
  def page_item_count(page_indexa)
 
  end

  def index_calc(indexes, page_indexs)
   
  end
	
  # determines what page an item is on. Zero based indexes.
  # this method should return -1 for item_index values that are out of range
  def page_index(item_index) 
  end

   def item_index_calc(item_index)
      page = 0
    
  end


end

helper = PaginationHelper.new(['a','b','c','d','e','f'], 4)
p helper.page_count # should == 2
p helper.item_count # should == 6
p helper.page_item_count(0)  # should == 4
p helper.page_item_count(1) # last page - should == 2
p helper.page_item_count(2) # should == -1 since the page is invalid

# page_ndex takes an item index and returns the page that it belongs on
p helper.page_index(5) # should == 1 (zero based index)
p helper.page_index(2) # should == 0
p helper.page_index(20) # should == -1
p helper.page_index(-10) # should == -1 because negative indexes are invalid