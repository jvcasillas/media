
# Teaching media

Last update: 2023-02-05

## gifs

``` r
fs::dir_ls(path = here::here("teaching", "gifs")) |>
  tibble::as_tibble() |>
  dplyr::mutate(
    name = stringr::str_remove(value, here::here("teaching", "gifs/")), 
    name = stringr::str_remove(name, ".gif"),
    value = stringr::str_remove(value, here::here("teaching")), 
    path = glue::glue("- [{name}](.{value})")
    ) |>
  dplyr::pull()
```

- [beer_catch](./gifs/beer_catch.gif)
- [cant_believe](./gifs/cant_believe.gif)
- [confused](./gifs/confused.gif)
- [creepy_happy](./gifs/creepy_happy.gif)
- [disaster](./gifs/disaster.gif)
- [haha](./gifs/haha.gif)
- [hungry_creepy](./gifs/hungry_creepy.gif)
- [jurassic_park](./gifs/jurassic_park.gif)
- [luis](./gifs/luis.gif)
- [maya](./gifs/maya.gif)
- [partner](./gifs/partner.gif)
- [partner2](./gifs/partner2.gif)
- [partner3](./gifs/partner3.gif)
- [rock_clap](./gifs/rock_clap.gif)
- [scared](./gifs/scared.gif)
- [sly_happy](./gifs/sly_happy.gif)

## img

``` r
fs::dir_ls(path = here::here("teaching", "img")) |>
  tibble::as_tibble() |>
  dplyr::mutate(
    name = stringr::str_remove(value, here::here("teaching", "img/")), 
    name = stringr::str_remove(name, ".png"),
    value = stringr::str_remove(value, here::here("teaching")), 
    path = glue::glue("- [{name}](.{value})")
    ) |>
  dplyr::pull()
```

- [casillas_presenting_2017
  08.48.47](./img/casillas_presenting_2017%2008.48.47.png)
- [casillas_presenting_2017
  08.48.47_1](./img/casillas_presenting_2017%2008.48.47_1.png)
- [casillas_presenting_2018](./img/casillas_presenting_2018.png)
- [casillas_tasha_2016
  08.48.47](./img/casillas_tasha_2016%2008.48.47.png)
- [confused](./img/confused.png)
- [frustration](./img/frustration.png)
- [happy](./img/happy.png)
- [happy2](./img/happy2.png)
- [partner](./img/partner.png)
- [think](./img/think.png)
- [tired](./img/tired.png)

## memes

``` r
fs::dir_ls(path = here::here("teaching", "memes")) |>
  tibble::as_tibble() |>
  dplyr::mutate(
    name = stringr::str_remove(value, here::here("teaching", "memes/")), 
    name = stringr::str_remove(name, ".png"),
    value = stringr::str_remove(value, here::here("teaching")), 
    path = glue::glue("- [{name}](.{value})")
    ) |>
  dplyr::pull()
```

- [abd](./memes/abd.png)
- [supervisors](./memes/supervisors.png)
- [tilde_diacritica](./memes/tilde_diacritica.png)
