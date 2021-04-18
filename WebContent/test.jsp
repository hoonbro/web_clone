<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	a {
  display: none;
  height: 100%;
  width: 100%;
  background-color: rgba(0,0,0,.5);
  justify-content: center;
  align-items: center;
  text-decoration: none;
}
.btn-like {
  display: block;
  border: 1px solid #FFF;
  padding: 5px;
  color: #FFF;
}
.col-md-6:hover a{
  display: flex;
}
</style>
<body>
<div class="container-fluid">
  <div class="row">
    <div class="col-md-6" style="background-image:url(https://i.imgur.com/fZ3S5qJ.jpg);background-size: 100% 100%;height: 400px;">
          <a href="https://google.com"><span class="btn-like">Buy now</span></a>
    </div>
    <div class="col-md-6" style="background-image:url(https://i.imgur.com/jTFqukV.jpg);background-size: 100% 100%;height: 400px;">
          <a href="https://google.com"><span class="btn-like">Buy now</span></a>
    </div>
  </div>
</div>
</body>
</html>