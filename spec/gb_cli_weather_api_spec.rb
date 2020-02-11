RSpec.describe GbCliWeatherApi do
  it "has a version number" do
    expect(GbCliWeatherApi::VERSION).not_to be nil
  end

  it "shows the temperature" do
    expect(GbCliWeatherApi::Temperature.display).to eql("70")
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
