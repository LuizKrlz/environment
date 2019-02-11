# Environments for developing

Branchs

- master
  `sh docker pull luizkrlz/environment`

  - workdir: /home/app

  tools:

  - yarn
  - nodemon

- adonis
  `sh docker pull luizkrlz/environment:adonis`

  - workdir: /home/app

  tools:

  - yarn
  - nodemon
  - adonis cli

- react
  `sh docker pull luizkrlz/environment:react`

  - workdir: /home/app

  tools:

  - yarn
  - nodemon
  - create-react-app

- laravel
  `sh docker pull luizkrlz/environment:laravel`

  - workdir: /var/www/html

  tools:

  - composer
  - laravel instaler
  - apache
