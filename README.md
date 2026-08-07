# Expense Tracker

A simple expense tracking application built with **Ruby on Rails 8**. Users can create categories, record expenses, edit or delete them, and organize their spending through a clean interface styled with Tailwind CSS.

## Features

- User authentication with Devise
- Create, edit, and delete expense categories
- Create, edit, and delete expenses
- Assign expenses to categories
- View all recorded expenses
- Responsive UI using Tailwind CSS

## Tech Stack

- Ruby 3.4.6
- Ruby on Rails 8.1
- PostgreSQL
- Tailwind CSS
- Devise
- Minitest

## System Dependencies

- Ruby 3.4.6
- PostgreSQL
- Node.js (for Rails frontend tooling)
- Bundler

## Installation

Clone the repository:

```bash
git clone <repository-url>
cd expense_tracker
```

Install dependencies:

```bash
bundle install
```

Create and set up the database:

```bash
bin/rails db:create
bin/rails db:migrate
bin/rails db:seed
```

## Running the Application

Start the Rails server:

```bash
bin/dev
```

or

```bash
bin/rails server
```

Visit:

```
http://localhost:3000
```

## Running Tests

Prepare the test database:

```bash
bin/rails db:test:prepare
```

Run all tests:

```bash
bin/rails test
```

Run controller tests only:

```bash
bin/rails test test/controllers
```

Run a specific test file:

```bash
bin/rails test test/controllers/expenses_controller_test.rb
```

## Code Quality

Run RuboCop:

```bash
bin/rubocop
```

Run Brakeman:

```bash
bin/brakeman --no-pager
```

Run Bundler Audit:

```bash
bin/bundler-audit
```

## Database

This application uses PostgreSQL.

Create and migrate the database with:

```bash
bin/rails db:create
bin/rails db:migrate
```

## Deployment

The application is configured for deployment using standard Rails deployment practices. Ensure the following environment variables are configured:

- `RAILS_MASTER_KEY`
- Database credentials

## Author

Developed as part of a Ruby on Rails learning project and OJT training.