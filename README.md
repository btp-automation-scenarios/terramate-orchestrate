# Experimenting with Terramate and SAP BTP

Sample repository for showcasing setups with complex dependencies via leveraging experimental features of Terramate.

You find all details in the blog post [Experimenting with Terramate and SAP BTP](https://dev.to/lechnerc77/experimenting-with-terramate-and-sap-btp-22m1) on [dev.to](https://dev.to/).

## Set environment variables

If you want to try things out, you can define a `.env` file with the authentication information:

```text
BTP_USERNAME=<YOUR EMAIL>
BTP_PASSWORD=<YOUR PASSWORD>
CF_USER=<YOUR EMAIL>
CF_PASSWORD=<YOUR PASSWORD>
```

And make that available in your shell via

```bash
export $(xargs <.env)
```
