# Citations API

Rails API for serving citation records used by the citations badge widget.

## Requirements

- Ruby 3.2.2
- Rails 7.2.3.2
- Bundler
- SQLite3

## Setup

```bash
bundle install
rails db:create db:migrate db:seed
rails s
```

The API runs at:

```text
http://localhost:3000
```

## API

### Get all citations

```http
GET /api/citations
```

Default ordering is newest first.

Oldest first:

```http
GET /api/citations?order=asc
```

### Get a citation by ID

```http
GET /api/citations/:id
```

Example:

```text
http://localhost:3000/api/citations/1
```

## Data

Citation records are loaded from the provided sample data by:

```text
db/seeds.rb
```

CORS is enabled to allow the frontend widget to access the API from localhost.