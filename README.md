# Alteri - Server

Back end for [Alteri](https://github.com/jeffreyc86/alteri-demo/), an app connecting users in need of basic necessities to donors in their area. Built with a `React` front end, a `Ruby on Rails` & `PostgreSQL` back end, `Redux` for universal state management, `ActionCable` to integrate WebSockets, and all custom CSS.

[Live Link](https://alteri-client.netlify.app/) / [Demo](https://www.loom.com/share/471914886e254936afc0976c14b0b3c2)

[Front End](https://github.com/jeffreyc86/alteri-frontend)

To start the server:

```bash
bundle install
```

```bash
rails db:create && rails db:migrate
```

```bash
rails s
```