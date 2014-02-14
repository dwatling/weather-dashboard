require "spec_helper"

describe SnapshotPullerController do

	describe "GET #index" do
		it "responds with 200" do
			get :index
			expect(response).to be_success
			expect(response.status).to eq(200)
		end
	end

	describe "fetch_json" do
		it "fetches data from wunderground.com" do
			
			
		end	
	end
end
