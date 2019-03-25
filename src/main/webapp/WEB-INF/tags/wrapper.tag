<%@tag description="Simple Wrapper Tag" pageEncoding="UTF-8"%>
<%@attribute name="title" fragment="true" %>

<!doctype html>
<html lang="fr">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="initial-scale=1.0, width=device-width" />

    <title><jsp:invoke fragment="title"/></title>
    <style>
        body {
            font-size: 1.4em;
            font-family: sans-serif;
            word-break: break-word;
        }
    </style>
  </head>
    <body>
      <main>
        <jsp:doBody/>
      </main>
    </body>
</html>