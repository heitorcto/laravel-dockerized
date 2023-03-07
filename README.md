# Laravel Dockerized 

### Para que tenhamos o **vendor** do nosso projeto, podemos executar uma imagem de instalação do próprio laravel, porém omitindo o package sail

### Execute:
docker run --rm \\
    -u span"\$(id -u):\$(id -g)" \\
    -v "$(pwd):/var/www/html" \\
    -w /var/www/html \\
    composer install --ignore-platform-reqs

--- 
<br>

### Edite seu docker-compose.yml, remova o **caminho absoluto** para o seu verdadeiro caminho absoluto do seu projeto. 

---
<br>

### Sinta-se a vontade para adicionar novas funcionalidades se achar interessante, porém tente manter a simplicidade. 

---
<br>

# Projeto aceitando PRs.
