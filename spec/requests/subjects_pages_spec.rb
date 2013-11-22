require 'spec_helper'

describe "Subject page" do
	subject { page }

	describe "new subject" do
		let(:subject) { FactoryGirl.create(:subject) }
		before { visit subject_new_path }

		let(:submit) { "Add Subject" }

		describe "with valid information" do
			before { subject_new(:subject) }
			it "should create a new subject" do
				expect { click_button submit }.to change(Subject, :count).by(1)
			end
		end
	end
end