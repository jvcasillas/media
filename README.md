
# Media

Assorted gifs and memes related to R, stats, linguistics, and
teaching.  
Last update: 2023-03-26

``` r
fs::dir_ls(regex = "^[^.]*$") |>
  tibble::as_tibble() |>
  dplyr::mutate(value = glue::glue("- [{value}](./{value}/README.md)")) |>
  dplyr::pull()
```

- [datascience](./datascience/README.md)
- [general](./general/README.md)
- [linguistics](./linguistics/README.md)
- [logic](./logic/README.md)
- [rstats](./rstats/README.md)
- [teaching](./teaching/README.md)
- [unsorted](./unsorted/README.md)
