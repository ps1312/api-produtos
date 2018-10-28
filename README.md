# README

API criada em rails como teste para a Tracking Trade. A api conta com login através de token de autenticação possível pelo [devise_token_auth](https://github.com/lynndylanhurley/devise_token_auth). Também conta com envio de imagens para os produtos com a gem [paperclip](https://github.com/thoughtbot/paperclip), e também com o soft_delete permitido pelo [paranoia](https://github.com/rubysherpas/paranoia).

A api também conta com alguns testes automatizados feitos com o [rspec](https://github.com/rspec/rspec-rails) e outras gems. Inicialmente essa api será utilizada como fonte de uma aplicação criada em angular.

Link da api no heroku:  https://radiant-badlands-73836.herokuapp.com, lembrando que para acessar as funcionalidades da api  necessário utilizar a url /api/v1 antes da url dos controllers e ela não possui views a serem renderizadas em browsers
