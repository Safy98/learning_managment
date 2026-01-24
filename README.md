# Learning Management System

A Rails 8.1.2 application for managing learning content and courses.

## Prerequisites

Before you begin, ensure you have the following installed:

- **Ruby** 3.2.5 (check with `ruby -v`)
- **Bundler** (install with `gem install bundler`)
- **Node.js** (for JavaScript dependencies)
- **SQLite3** (for the database)
- **Git** (for version control)

### Installing Ruby

If you don't have Ruby 3.2.5 installed, we recommend using a version manager:

- **rbenv**: `rbenv install 3.2.5`
- **rvm**: `rvm install 3.2.5`

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/Safy98/learning_managment.git
cd learning_managment
```

### 2. Install Dependencies

```bash
bundle install
```

### 3. Set Up the Database

```bash
bin/rails db:create
bin/rails db:migrate
bin/rails db:seed
```

Or use the automated setup script:

```bash
bin/setup
```

The setup script will:
- Install all dependencies
- Prepare the database
- Clear old logs and temp files
- Start the development server (unless you use `--skip-server`)

### 4. Start the Development Server

```bash
bin/dev
```

Or manually:

```bash
bin/rails server
```

The application will be available at `http://localhost:3000`

## Development

### Running Tests

```bash
bin/rails test
```

### Code Quality

Run linting and security checks:

```bash
# RuboCop (code style)
bin/rubocop

# Brakeman (security)
bin/brakeman

# Bundler audit (dependency security)
bin/bundler-audit
```

### Database

```bash
# Create database
bin/rails db:create

# Run migrations
bin/rails db:migrate

# Reset database (WARNING: deletes all data)
bin/rails db:reset

# Seed database with sample data
bin/rails db:seed
```

## Docker Setup (Optional)

### Building the Docker Image

```bash
docker build -t learning_managment .
```

### Running with Docker

```bash
docker run -d -p 80:80 \
  -e RAILS_MASTER_KEY=$(cat config/master.key) \
  --name learning_managment \
  learning_managment
```

**Note**: The Dockerfile is designed for production. For development, consider using [Dev Containers](https://guides.rubyonrails.org/getting_started_with_devcontainer.html).

## Deployment

This application uses [Kamal](https://kamal-deploy.org) for deployment. Configuration is in `config/deploy.yml`.

```bash
kamal setup
kamal deploy
```

## Project Structure

- `app/` - Application code (models, views, controllers)
- `config/` - Configuration files
- `db/` - Database migrations and schema
- `test/` - Test files
- `public/` - Static assets
- `bin/` - Executable scripts

## Technologies Used

- **Rails** 8.1.2 - Web framework
- **Ruby** 3.2.5 - Programming language
- **SQLite3** - Database
- **Tailwind CSS** - Styling
- **Stimulus** - JavaScript framework
- **Turbo** - Page acceleration
- **Devise** - Authentication
- **Puma** - Web server

## Contributing

1. Create a feature branch (`git checkout -b feature/amazing-feature`)
2. Commit your changes (`git commit -m 'Add some amazing feature'`)
3. Push to the branch (`git push origin feature/amazing-feature`)
4. Open a Pull Request

## License

[Add your license here]

## Support

For issues and questions, please open an issue on GitHub.
