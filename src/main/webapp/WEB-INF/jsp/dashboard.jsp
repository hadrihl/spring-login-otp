<!doctype html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Dashboard</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    </head>
    
    <body>
        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container">
                <span class="navbar-brand mt-1 h1">Spring<span class="text-info">Login</span></span>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarScroll">
                    <ul class="navbar-nav me-auto">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Dashboard</a>
                        </li>
                    </ul>

                    <span class="nav-item me-2">@${username }</span>
                    
                    <form:form class="d-flex" action="/logout" method="post">
                      <button type="submit" class="btn btn-danger">Logout</button>
                    </form:form>
                    
                </div>
            </div>
        </nav>

        <section>
            <div class="container py-4 mb-5">
            </div>
        </section>

        <footer class="py-5 bg-light text-muted">
            <div class="container">
              <div class="row">
                <div class="col-8 d-flex justify-content-start">
                  <span>&copy; 2023. Made with <i class="fa-solid fa-heart"></i> in Penang.<br/>
                    <i class="fa-brands fa-github"></i>
                    <a href="https://github.com/hadrihl/spring-login-otp"> spring-Login-otp</a>
                  </span>
                </div>
      
                <div class="col-4 d-flex justify-content-end">
                  <a href="#" class="me-2">Sitemap</a>
                </div>
              </div>
            </div>
        </footer>

        <script src="https://kit.fontawesome.com/e19fcdf015.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    </body>
</html>