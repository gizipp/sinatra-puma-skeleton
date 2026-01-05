### Ruby Sinatra Puma Skeleton

A minimal skeleton for a Sinatra application running on Puma.

### Local Development

To run the application locally, use the following command:

```bash
bundle exec puma
```

The application will be available at `http://localhost:4567`.

### Production

This application is ready to be deployed to Heroku.

1.  **Install the Heroku CLI and log in:**
    Follow the instructions on the [Heroku Dev Center](https://devcenter.heroku.com/articles/heroku-cli) to install the CLI and log in to your account.

2.  **Create a Heroku application:**
    ```bash
    heroku create
    ```

3.  **Deploy the application:**
    ```bash
    git push heroku main
    ```

### Environment Variables

The following environment variables can be used to configure the Puma server:

*   `WEB_CONCURRENCY`: The number of worker processes. Defaults to `2`.
*   `MAX_THREADS`: The number of threads per worker. Defaults to `5`.
*   `PORT`: The port to bind to. Defaults to `4567`.
*   `RACK_ENV`: The environment to run in. Defaults to `development`.