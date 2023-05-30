class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'


  get '/subjects' do
    subject = Subject.all.to_json(include: :resources)
      end

      get '/subjects/:id' do
    subject = Subject.find(params[:id])
    subject.to_json
    end

    get '/subjects/:name' do
subject = Subject.find(params[:name])
subject.tojson
    end

      post "/resources" do
   new_resource = Resource.create(
    name: params[:name],
    description: params[:description],
    url: params[:url],
    subject_id: params[:subject_id]
   )
   new_resource.to_json

end

      delete "/resources/:id" do
        deleteResource = Resource.find(params[:id])
        deleteResource.destroy
        # deleteResource.to_json
      end

    #   patch '/users/:id' do
    #     user = User.find(params[:id])
    #     user.update(
    #       name: params[:name]
    #       drawings: params[:drawings]
    # )
    # user.to_json
    #   end 

      get "/resources" do

        resource = Resource.all
        resource.to_json
    
      end
    
      get "/resources/:id" do
    
        resource = Resource.find(params[:id])
        resource.to_json
    
      end

end
