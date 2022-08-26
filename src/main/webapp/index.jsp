<%--@elvariable id="compoundingPeriod" type="CalculatorServlet"--%>
<%--@elvariable id="years" type="CalculatorServlet"--%>
<%--@elvariable id="principle" type="CalculatorServlet"--%>
<%--@elvariable id="interest" type="CalculatorServlet"--%>
<%--@elvariable id="result" type="CalculatorServlet"--%>
<%--@elvariable id="error" type="CalculatorServlet"--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title></title>

    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-blue-500">
<div>
    <div class="bg-white mx-auto text-center w-1/2 py-5 shadow-xl rounded-3xl my-96 max-w-2xl">
        <h2 class="text-4xl font-semibold border-b pb-2 mx-6">Compound Interest Calculator</h2>
        <h3 class="bg-red-300 text-red-900 font-semibold text-xl w-80 rounded-lg my-2 mx-auto">${error}</h3>
        <form action="/" method="post">

            <div class="grid grid-cols-2 gap-4 my-5 mx-8">
                <label for="principal-amount" class="text-x1 flex items-center">Principal Amount:<span
                        class="text-gray-500 mx-1">$</span></label>
                <input class="w-full p-1 border-2 placeholder-blue800 border-blue-700 appearance-none rounded-lg focus:outline-none focus:ring-2"
                       id="principal-amount" type="number" name="principleAmount" value="${principle}">

                <label for="interest" class="text-x1 flex items-center">Interest Percentage:</label>
                <input class="w-full p-1 border-2 placeholder-blue800 border-blue-700 appearance-none rounded-lg focus:outline-none focus:ring-2"
                       id="interest" type="number" min="1" max="100" name="interest" value="${interest}">

                <label for="years" class="text-x1 flex items-center"># of Years:</label>
                <input class="w-full p-1 border-2 placeholder-blue800 border-blue-700 appearance-none rounded-lg focus:outline-none focus:ring-2"
                       id="years" type="number" min="1" name="years" value="${years}">

                <label for="compoundingPeriod" class="text-x1 flex items-center">Times per Year:</label>
                <input class="w-full p-1 border-2 placeholder-blue800 border-blue-700 appearance-none rounded-lg focus:outline-none focus:ring-2"
                       id="compoundingPeriod" type="number" min="1" max="12" name="compoundingPeriod"
                       value="${compoundingPeriod}">
            </div>
                <button type="submit"
                        class="bg-blue-300 text-xl  font-semibold px-4 py-1 rounded-lg hover:bg-blue-800 hover:text-white">
                    Calculate
                </button>
                <br><br>

                <p class="text-3xl font-mono text-green-600 ">Result: ${result}</p>


        </form>


    </div>
</div>

</body>
</html>