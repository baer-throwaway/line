### What's in this repo?

This repo contains [seeds](https://docs.getdbt.com/docs/building-a-dbt-project/seeds) with raw data from [DSIRE](https://www.dsireusa.org/resources/data-and-tools/)

### Running this project

To get up and running with this project:

1. Install dbt using [these instructions](https://docs.getdbt.com/docs/installation).
2. Clone this repository.
3. Change into the `line` directory from the command line:

```bash
$ cd line
```

4. Set up a profile called `line` to connect to a data warehouse.

```yml
line:
  target: dev
  outputs:
    dev:
      type: postgres
      host: <neon connection id>.us-west-2.aws.neon.tech
      user: <your user>
      password: <your password>
      port: 5432
      dbname: neondb
      schema: <your dbt schema>
      threads: 4
```

For more information, check the [dbt docs](https://docs.getdbt.com/docs/configure-your-profile).

5. Ensure your profile is setup correctly from the command line:

```bash
$ dbt debug
```

6. Load the CSVs with the demo data set. This materializes the CSVs as tables in your target schema. Note that a typical dbt project **does not require this step** since dbt assumes your raw data is already in your warehouse.

```bash
$ dbt seed
```

7. Run the models:

```bash
$ dbt run
```

> **NOTE:** If this steps fails, it might mean that you need to make small changes to the SQL in the models folder to adjust for the flavor of SQL of your target database. Definitely consider this if you are using a community-contributed adapter.

8. Test the output of the models:

```bash
$ dbt test
```

9. Generate documentation for the project:

```bash
$ dbt docs generate
```

10. View the documentation for the project:

```bash
$ dbt docs serve
```
