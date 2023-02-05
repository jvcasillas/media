
# General media

Last update: 2023-02-05

## gifs

``` r
fs::dir_ls(path = here::here("general", "gifs")) |>
  tibble::as_tibble() |>
  dplyr::mutate(
    name = stringr::str_remove(value, here::here("general", "gifs/")), 
    name = stringr::str_remove(name, ".gif"),
    value = stringr::str_remove(value, here::here("general")), 
    path = glue::glue("- [{name}](.{value})")
    ) |>
  dplyr::pull()
```

- [phd](./gifs/phd.gif)
- [pull](./gifs/pull.gif)
- [throw_into_pool](./gifs/throw_into_pool.gif)

## img

``` r
fs::dir_ls(path = here::here("general", "img")) |>
  tibble::as_tibble() |>
  dplyr::mutate(
    name = stringr::str_remove(value, here::here("general", "img/")), 
    name = stringr::str_remove(name, ".png"),
    value = stringr::str_remove(value, here::here("general")), 
    path = glue::glue("- [{name}](.{value})")
    ) |>
  dplyr::pull()
```

- [circle](./img/circle.png)

## memes

``` r
fs::dir_ls(path = here::here("general", "memes")) |>
  tibble::as_tibble() |>
  dplyr::mutate(
    name = stringr::str_remove(value, here::here("general", "memes/")), 
    name = stringr::str_remove(name, ".png"),
    value = stringr::str_remove(value, here::here("general")), 
    path = glue::glue("- [{name}](.{value})")
    ) |>
  dplyr::pull()
```

- [draw_owl](./memes/draw_owl.png)
- [sucking1](./memes/sucking1.png)
- [sucking2](./memes/sucking2.png)
