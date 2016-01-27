class Requests < BindingBase
  def consultPost(arg1)
    get $mainAPIUrl + arg1
  end
  
  def insertPost(arg1)
    data = '{"userId":'+ userId + ', "id": ' + id + ',"title": ' + title + ',"body": ' + body + '}'
    post '/posts', JSON.parse(data)
  end

  def deletePost(arg1)
    get $mainAPIUrl + arg1
  end

  def updatePost(arg1)
    get $mainAPIUrl + arg1
  end

end