require 'spec_helper'
describe GamesController do
 before (:each) do

    @user = User.create!({

      :email => 'user@test.com',

      :password => 'please',

      :password_confirmation => 'please',

      :Names => 'Ankur'

    })

    sign_in @user

  end



describe "gameend method" do



    it "lowest clicks for level1" do

        expect {

        @user.update_attribute(:LowestClicksL1, 12)

        put :game_end, {:user => { "LowestClicksL1" => 12 }}

      }.to change{@user.LowestClicksL1}

      @user.LowestClicksL2.should be_nil

      @user.LowestClicksL3.should be_nil

      @user.LowestClicksL4.should be_nil

        #response.should be_successful

    end



    it "lowest clicks for level2" do

        expect {

        @user.update_attribute(:LowestClicksL2, 12)

        put :game_end, {:user => { "LowestClicksL2" => 12 }}

      }.to change{@user.LowestClicksL2}

      @user.LowestClicksL1.should be_nil

      @user.LowestClicksL3.should be_nil

      @user.LowestClicksL4.should be_nil

        #response.should be_successful

    end



    it "lowest clicks for level3" do

        expect {

        @user.update_attribute(:LowestClicksL3, 12)

        put :game_end, {:user => { "LowestClicksL3" => 12 }}

      }.to change{@user.LowestClicksL3}

      @user.LowestClicksL2.should be_nil

      @user.LowestClicksL1.should be_nil

      @user.LowestClicksL4.should be_nil

        #response.should be_successful

    end



    it "lowest clicks for level4" do

        expect {

        @user.update_attribute(:LowestClicksL4, 12)

        put :game_end, {:user => { "LowestClicksL4" => 12 }}

      }.to change{@user.LowestClicksL4}

      @user.LowestClicksL2.should be_nil

      @user.LowestClicksL3.should be_nil

      @user.LowestClicksL1.should be_nil

        #response.should be_successful

    end

end
 end
