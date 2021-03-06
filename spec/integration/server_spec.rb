require File.expand_path(File.join(File.dirname(__FILE__), "..", "spec_helper"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "..", "lib", "allegro_graph"))

describe "server" do

  use_real_transport!

  before :each do
    @server = AllegroGraph::Server.new :username => "test", :password => "test"
  end

  it "should return the server's version" do
    @server.version.should == {
      :version  => "4.1.1",
      :date     => "October 23, 2010 16:25:51 GMT-0700",
      :revision => "internal reversion unknown"
    }
  end

end
