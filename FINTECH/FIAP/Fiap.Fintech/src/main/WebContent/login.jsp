<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="pt-BR">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous" defer></script>
    <!-- Custom/Vanilla CSS -->
    <link href="./resources/css/main.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">
    <title>Login</title>
</head>

<body class="background">
    <div class="container-fluid">
        <div class="row">
            <!-- Login column -->
            <div class="col-md-6 mt-5 p-5">
                <!-- Login image -->
                <figure class="">
                    <img id="loginImage" class="img-fluid mx-auto d-block mt-4" src="./resources/images/login.svg"
                        alt="Imagem de login">
                </figure>
                <!-- Greetings -->
                <h1 class="text-center fw-bold login-title my-4">Oi de novo! :)</h1>
                <!-- Login form -->
                <div class="container form-rectangle d-flex mb-3 p-3">
                    <form method="post" action="login">
                        <div class="mb-3">
                            <input class="form-text credentials-input-format" name="username" id="username" type="text"
                                placeholder="seu login" required>
                        </div>
                        <div class="mb-3">
                            <input class="form-text credentials-input-format" name="password" id="password" type="password"
                                placeholder="******" required>
                        </div>
                        <div class="mb-2 form-check">
                            <input class="form-check-input" type="checkbox" id="stayConnected">
                            <label class="form-check-label login-text-sub" for="stayConnected">Permanecer conectado</label>
                        </div>
                        <div>
                            <a class="login-link ms-4" href="#">Esqueci minha senha :(</a>
                        </div>
                        <div class="text-center">
                            <button id="loginButton" class="btn login-button m-3" role="button"
                                type="submit">Entrar</button>
                        </div>
                    </form>
                </div>
            </div>
            <!-- Register column -->
            <div class="col-md-6 mt-5 p-5">
                <h1 class="text-center fw-bold login-title my-4">Ainda não tem uma conta?</h1>
                <div class="container form-rectangle d-flex mt-5 p-4">
                    <form method="post" action="dashboard">
                        <div class="mb-3">
                            <input class="form-text credentials-input-format" name="name" id="name" type="text"
                                placeholder="seu nome completo" required>
                        </div>
                        <select class="form-text-placeholder credentials-input-format mb-3" name="gender" id="gender">
                            <option value="" disabled selected>seu gênero</option>
                            <option class="form-text" value="masc">Masculino</option>
                            <option class="form-text" value="fem">Feminino</option>
                            <option class="form-text" value="nb">Não-binárie</option>
                        </select>
                        <!-- <div class="mb-3">
                            <input class="form-text credentials-input-format" name="gender" id="gender" type="text"      placeholder="seu gênero"> -->
                        <div class="mb-3">
                            <input class="form-text credentials-input-format" name="birthdate" id="birthdate" type="text"
                                placeholder="o dia em que você nasceu" onfocus="(this.type='date')" required>
                        </div>
                        <div class="mb-3">
                            <input class="form-text credentials-input-format" name="email" id="email" type="email"
                                placeholder="seu melhor e-mail" required>
                        </div>
                        <div class="mb-3">
                            <input class="form-text credentials-input-format" name="username_register" id="username_register" type="user"
                                placeholder="escolha um usuário" required>
                        </div>
                        <div class="mb-3">
                            <input class="form-text credentials-input-format" name="password_register" id="password_register" type="password"
                                placeholder="agora uma senha" required>
                        </div>
                        <div class="mb-3">
                            <input class="form-text credentials-input-format" name="passwordcomparison" id="passwordcomparison" type="password"
                                placeholder="repita a sua senha aqui" required>
                        </div>

                        <div class="text-center">
                            <button id="registerButton" class="btn login-button mt-2" role="button"
                                type="submit">Registrar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>