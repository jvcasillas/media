
# Data science media

Last update: 2023-03-26

## img

``` r
fs::dir_ls(path = here::here("datascience", "img")) |>
  tibble::as_tibble() |>
  dplyr::mutate(
    name = stringr::str_remove(value, here::here("datascience", "img/")), 
    name = stringr::str_remove(name, ".png"),
    value = stringr::str_remove(value, here::here("datascience")), 
    path = glue::glue("- [{name}](.{value})")
    ) |>
  dplyr::pull()
```

- [github](./img/github.png)
- [os_datasharing](./img/os_datasharing.png)
- [os_rr](./img/os_rr.png)
- [workflow_8.jpg](./img/workflow_8.jpg)
