<%--
  Created by IntelliJ IDEA.
  User: Simon
  Date: 10.04.2025
  Time: 11:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quest</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: linear-gradient(to bottom, #a8c0ff, #3f2b96);
            background-image: url('https://www.transparenttextures.com/patterns/paper-fibers.png');
            font-family: 'Georgia', serif;
            color: #2c3e50;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .quest-container {
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
            color: #0a3d62;
            margin-bottom: 0.5em;
        }

        h2 {
            font-size: 1.2em;
            font-weight: normal;
            line-height: 1.5;
            margin-bottom: 2em;
        }

        form {
            text-align: left;
            display: inline-block;
        }

        label {
            display: block;
            font-size: 1.1em;
            margin-bottom: 1em;
        }

        input[type="radio"] {
            margin-right: 10px;
        }

        button {
            margin-top: 1.5em;
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
<div class="quest-container">
    <h1>${requestScope.title}</h1>
    <h2>${requestScope.description}</h2>
    <form action="quest" method="post">
        <label><input type="radio" name="answer" value="1" required /> ${requestScope.option1}</label>
        <label><input type="radio" name="answer" value="2" required /> ${requestScope.option2}</label>
        <button type="submit">Продолжить</button>
    </form>
</div>
</body>
</html>
