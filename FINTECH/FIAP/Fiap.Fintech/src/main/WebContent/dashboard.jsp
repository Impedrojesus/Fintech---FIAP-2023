<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="br.com.fiap.fintech.entities.Revenue"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="pt-BR">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

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
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous" defer></script>
    
    <title>Dashboard</title>
</head>

<body class="background">
    <nav class="navbar navbar-expand-lg navigation" id="naviBar">
        <div class="container-fluid">            
            <select class="form-select form-select-sm navigation-text-main" aria-label=".form-select-sm example" style="width: 8rem">
			  <option value="0">Janeiro</option>
			  <option value="1">Fevereiro</option>
			  <option value="2">Março</option>
			  <option value="3">Abril</option>
			  <option value="4">Maio</option>
			  <option value="5">Junho</option>
			  <option value="6">Julho</option>
			  <option value="7">Agosto</option>
			  <option value="8">Setembro</option>
			  <option value="9">Outubro</option>
			  <option value="10" selected>Novembro</option>
			  <option value="11">Dezembro</option>
			</select>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active navigation-text-active" aria-current="page" href="#">Dashboard</a>
                    </li>
                    <li>
                        <div class="vr"></div>
                    </li>
                    <li class="nav-item">
                        <div class="dd-item-wrapper">
                            <a class="nav-link dropdown-toggle active navigation-text-active" id="newEntryDropdown" role="button"
                                data-bs-toggle="dropdown" aria-expanded="false">Novo Lançamento</a>
                            <ul class="dropdown-menu mt-3" aria-labelled by="newEntryDropdown">
                                <li><a class="dropdown-item navigation-text" href="revenue.jsp">Nova receita</a></li>
                                <li><a class="dropdown-item navigation-text" href="expense.jsp">Nova despesa</a></li>
                                <li><a class="dropdown-item navigation-text disabled" href="#">Novo lembrete</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled navigation-text-inactive" href="#">Metas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled navigation-text-inactive" href="#">Estatísticas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled navigation-text-inactive" href="#">Calendário</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled navigation-text-inactive" href="#">Configurações</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link navigation-text" href="logOut">Sair</a>
                    </li>
                </ul>
            </div>
            <div class="dd-item-wrapper">
                <button class="navbar-toggler" type="button" data-bs-toggle="dropdown" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <img src="./resources/images/toggler.svg">
                </button>
            </div>
        </div>
    </nav>
    <div class="container d-flex justify-content-center my-3" id="header">
        <div class="row">
        	<c:set var="currentBalance"><fmt:formatNumber type="number" minFractionDigits="2" maxFractionDigits="2" value="${dashboardData.currentBalance}" /></c:set>
    	    <c:set var="startWithBalance"><fmt:formatNumber type="number" minFractionDigits="2" maxFractionDigits="2" value="${dashboardData.startWithBalance}" /></c:set>
    	    <c:set var="expectedToCloseWithBalance"><fmt:formatNumber type="number" minFractionDigits="2" maxFractionDigits="2" value="${dashboardData.expectedToCloseWithBalance}" /></c:set>
            <div class="col-12 col-md-3 dashboard-budget-text justify-content-center my-1">Iniciou o mês com R$<c:out value="${startWithBalance}"/></div>
            <div class="col-12 col-md-6 dashboard-budget-main justify-content-center my-1">R$<c:out value="${currentBalance}"/></div>
            <div class="col-12 col-md-3 dashboard-budget-text justify-content-center my-1">Previsto fechar com R$<c:out value="${expectedToCloseWithBalance}"/></div>
        </div>
    </div>
    <!-- News cards (5 max)-->
    <div class="news-cards-scroll" id="newsCards">
    	<c:forEach var="entry" items="${comingNextEntries}">
			<c:set var="entryClassName" value="${entry.getClass().simpleName}" /> 
			<c:if test="${entryClassName == 'Revenue'}"><c:set var="img" value="money-in" /></c:if>
			<c:if test="${entryClassName == 'Expense'}"><c:set var="img" value="money-out" /></c:if>
	    	<div class="card d-flex p-1 pe-2 ${img}">
	            <div class="card-date d-flex"><fmt:formatDate type="time" pattern="dd/MM" value="${entry.entryDate.time}" /></div> 
	            <div class="card-text d-flex my-2 text-center">${entry.entryName}</div>
	            <div class="card-value d-flex"> R$ ${entry.entryValue}</div>
	        </div>
        </c:forEach>
    </div>
    
    <!-- Content -->
    <div class="container-fluid" id="mainContent">
        <div class="row mt-1">
            <div class="col-12 col-lg-6">
                <div class="container p-1 p-md-3">
                    <div class="row dashboard-content p-3 p-md-4">
                        <div class="col-12 total receita mb-2 mb-md-4 d-inline-flex">
                            <div class="container d-flex flex-column justify-content-center align-items-start">
                               <!--  <div class="value">+ R$ 4820,00</div> --> 
                               <div class="value"> <c:out value="R$ ${dashboardData.monthlyRevenueValue}"/> </div>
                                <div class="name">Receita mensal</div>
                            </div>
                            <div class="container d-flex">
                                <img class="img-fluid graph" src="./resources/images/income-graph.svg"
                                    alt="Gráfico de Receitas">
                            </div>
                        </div>
                        <div class="col-12 total despesa d-inline-flex">
                            <div class="container d-flex flex-column justify-content-center align-items-start">
                         <!--      <div class="value">- R$ 2474,15</div> --> 
                          <div class="value"> <c:out value="R$ ${dashboardData.monthlyExpenseValue}"/> </div>
                                <div class="name">Despesa mensal</div>
                            </div>
                            <div class="container d-flex">
                                <img class="img-fluid graph" src="./resources/images/expense-graph.svg"
                                    alt="Gráfico de Despesas">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12 col-lg-6">
                <div class="container p-1 p-md-3">
                    <div class="row dashboard-content p-3 p-md-4">
                        <div class="col-6 d-flex">
                            <img class="img-fluid" src="./resources/images/chart.svg" alt="Gráfico de despesas">
                        </div>
                        <div class="col-6 expense-list d-flex align-items-center expense-items">
                            <ul class="categories">
                                <li class="category1">Faculdade</li>
                                <li class="category2">Energia</li>
                                <li class="category3">Aluguel</li>
                                <li class="category4">Alimentação</li>
                                <li class="category5">Água</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>