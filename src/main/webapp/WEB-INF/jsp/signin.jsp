<!doctype html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sign in</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
  </head>
  <body>

    <div class="row" style="padding-top: 50px;">
        <div class="card" style="width: 20rem; margin: auto;">
            <div class="card-body">
                <h5 class="card-title text-center">
                    <a href="/" class="navbar-brand"><span class="navbar-brand mt-1 mb-2 h1">Spring<span class="text-info">Login</span></span></a>
                </h5>
                <h1 class="text-center">Sign in</h1>
                <form:form action="/login" method="post">
                    <div class="form-group mt-4">
                        <label for="username" class="visually-hidden">username</label>
                        <input type="text" id="username" name="username" class="form-control" placeholder="Username" required autofocus />
                    </div>
                    <div class="form-group mt-2">
                        <label for="password" class="visually-hidden">password</label>
                        <input type="password" id="password" name="password" class="form-control" placeholder="Password" required />
                    </div>
                    <div class="form-group mt-2 d-grid gap-2">
                        <button type="submit" class="btn btn-primary w-100">Sign in with Email</button>
                    </div>
                </form:form>
                
                <div class="form-group mt-2 d-grid gap-2">
                	<a href="/oauth2/authorization/github" class="btn btn-light w-100">Sign in with Github</a>
                </div>
    
                <div class="footer mt-5 text-center">
                    &copy; 2023. Made with <i class="fa-solid fa-heart"></i> in Penang. <br/>
                    <i class="fa-brands fa-github"></i>
                    <a href="https://github.com/hadrihl/spring-login-otp"> spring-login-otp</a>
                </div>
            </div>
        </div>
    </div>

    <script src="https://kit.fontawesome.com/e19fcdf015.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
  </body>
</html>