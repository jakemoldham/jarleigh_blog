require "./spec_helper"

describe "SpecKemalApp" do
  it "handles get" do
    Kemal::RouteHandler::INSTANCE.add_route "GET", "/" do
      "Hello world"
    end
    get "/"
    response.body.should eq "Hello world"
  end

  it "handles post" do
    Kemal::RouteHandler::INSTANCE.add_route "POST", "/user" do |env|
      env.params.json.to_json
    end
    json_body = {"name": "Serdar", "age": 27, "skills": ["crystal, kemal"]}
    post("/user", headers: HTTP::Headers{"Content-Type" => "application/json"}, body: json_body.to_json)
    response.body.should eq(json_body.to_json)
  end
end
