<?php

use Slim\Http\Request;
use Slim\Http\Response;

// Routes

$app->get('/[{name}]', function (Request $request, Response $response, array $args) {

    // Render index view
    return $this->renderer->render($response, 'index.html', $args);
});

$app->get('/admin/[{name}]', function (Request $request, Response $response, array $args) {

    // Render admin view
    return $this->renderer->render($response, 'admin/index.html', $args);
});
