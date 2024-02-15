<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Custom/Vanilla CSS + Google Fonts -->
    <link href="./resources/css/main.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"
        defer>
    </script>
    <script src="./resources/scripts/entry_page.js" defer></script> 

    <title>Nova Receita</title>
</head>
<body class="bg-color">
    <header class="background input-header-text p-2">
        <a class="mx-1" role="button" href="dashboard"><img class="img-fluid " src="./resources/images/return_breadcrumb.svg"></a>
        <nobr>Adicionar nova receita...</nobr>
    </header>
    
    <!-- SUCCESS ENTRY ALERT -->
   	<c:if test="${ not empty msg}">
    <div class="alert alert-success" role="alert" id="success-alert">
  		<c:out value="${msg}" />
	</div>	
	</c:if>
   	<!--/ SUCCESS ENTRY ALERT -->
   	
    <div class="container-fluid d-flex justify-content-center my-4">
        <form method="post" action="addEntryItem?entryType=revenue">
            <img class="img-fluid mx-auto d-block mt-2" src="./resources/images/income.svg" alt="">
            <div class="my-4">
                <input class="revenue-form-text revenue-input-format" name="title" id="title" type="text"
                    placeholder="título" onfocus="dismissSuccessAlert()" required>
            </div>
            <div class="my-4">
                <input class="revenue-form-text revenue-input-format" name="desc" id="desc" type="text" placeholder="descrição">
            </div>
            <div class="my-4">
                <input class="revenue-form-text revenue-input-format" name="value" id="value" type="number"
                    placeholder="R$ 0,00" required>
            </div>
            <div class="my-4">
                <select class="revenue-form-text revenue-input-format" style="color: #948A9A !important" name="category"
                    id="vategory" placeholder="categoria" required>
                    <option value="" disabled selected>categoria</option>
                    <option class="form-text" value="faculdade">Renda Extra</option>
                    <option class="form-text" value="energia">Salário</option>
                    <option class="form-text" value="aluguel">Lucro Investimento</option>
                    <option class="form-text" value="alimentacao">Venda Avulsa</option>
                    <option class="form-text" value="agua">Transferência por Terceiros</option>
                </select>
            </div>
            <div class="my-4">
                <input class="revenue-input-date" name="date" id="date" type="date" required>
            </div>
            <div class="my-4">
                <input class="form-check-input me-1" name="fixedEntry" type="checkbox" id="fixedEntryRev" value="false" onclick="changeCheckBoxValue('fixedEntryRev')">
                <label class="revenue-input-question" for="fixedEntry" >Esta receita se repete?</label>
            </div>
            <div class="text-center mt-4">
                <button class="btn revenue-form-button mt-2" id="addRevenueBtn" role="button" type="submit"><nobr>Adicionar Receita</nobr></button>
            </div>
        </form>
    </div>
</body>
</html>