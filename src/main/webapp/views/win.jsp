<%--
  Created by IntelliJ IDEA.
  User: Simon
  Date: 10.04.2025
  Time: 12:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Congratulation</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: linear-gradient(to top, #dceefb, #91a3b0);
            background-image: url('https://www.transparenttextures.com/patterns/paper-fibers.png');
            font-family: 'Georgia', serif;
            color: #2c3e50;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .win-container {
            background-color: rgba(255, 255, 255, 0.95);
            padding: 3em;
            max-width: 700px;
            border-radius: 12px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.2);
            border: 1px solid #ccc;
            text-align: center;
        }

        h1 {
            font-size: 2em;
            color: #1b4f72;
            margin-bottom: 1em;
        }

        h2 {
            font-size: 1.2em;
            font-weight: normal;
            line-height: 1.6;
            color: #34495e;
            margin-bottom: 2em;
        }

        button {
            padding: 0.7em 1.5em;
            font-size: 1em;
            background-color: #3c6382;
            color: #fff;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        button:hover {
            background-color: #0a3d62;
        }
    </style>
</head>
<body>
<div class="win-container">
    <h1>${requestScope.win}</h1>
    <h2>Ты прошёл через боль, одиночество, поражение и возвращение.
        Эта история — не про рыбу. Она про дух. И ты его не потерял.</h2>
    <form action="index.jsp">
        <button type="submit">Сыграть ещё раз</button>
    </form>
</div>
</body>
</html>
