get '/' do
  erb :'/index'
end

post '/' do
  @results1 = Dinosaurus.synonyms_of(params[:word1])
  @results2 = Dinosaurus.synonyms_of(params[:word2])
  erb :"/results"#, layout: false
end

