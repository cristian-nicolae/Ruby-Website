class StoreController < ApplicationController
  def index
    @instruments = Instrument.all.order("created_at desc")
    @smartphones = Smartphone.all.order("created_at desc")
    @laptops = Laptop.all.order("created_at desc")
    @watches = Watch.all.order("created_at desc")

  end
end
