describe 'Articles Index', vcr: { cassette_name: 'one_article_called_who' } do
  it 'responds with HTML' do
    get '/articles'
    expect(last_response.status).to eq(200)
    expect(last_response.content_type).to include('text/html')
  end

  it 'responds with an article' do
    get '/articles'
    expect(last_response.body).to include("First article has title 'who'.")
  end
end
