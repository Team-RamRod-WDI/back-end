# About "Ramrod CMS"

Our team, over the course of three days, built a Content Management System (CMS) that allows visitors to: - See content on the app without being signed in.
When logged in:
    - Users are able to create their own ‘pages’ with a title and description, and create ‘posts’ on those pages that have a title and content.
    - Users are able to manage the content once it's created: Display it, Edit it, Delete it.

-  Deployed Back End - https://protected-mesa-82595.herokuapp.com/
-  Front End Repository - https://github.com/Team-RamRod-WDI/front-end

## API Routing


The following routes make up the API for users, pages, and posts.

### Users

| Verb   | URI                  | Controller#Action |
|--------|----------------------|-------------------|
| POST   | /sign-up             | users#signup      |
| POST   | /sign-in             | users#signin      |
| PATCH  | /change-password/:id | users#changepw    |
| DELETE | /sign-out/:id        | users#signout     |

### Pages
| Verb   | URI        | Controller#Action |
|--------|------------|-------------------|
| GET    | /pages     | pages#index       |
| PATCH  | /pages/:id | pages#update      |
| POST   | /pages     | pages#create      |
| DELETE | /pages/:id | pages#destroy     |

### Posts

| Verb   | URI            | Controller#Action |
|--------|----------------|-------------------|
| GET    | /posts         | pages#index       |
| POST   | /posts         | posts#create      |
| PATCH  | /posts/:id     | posts#update      |
| DELETE | /posts/:id     | posts#destroy     |
