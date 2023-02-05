
# Linguistics media

Last update: 2023-02-05

## gifs

``` r
fs::dir_ls(path = here::here("linguistics", "gifs")) |>
  tibble::as_tibble() |>
  dplyr::mutate(
    name = stringr::str_remove(value, here::here("linguistics", "gifs/")), 
    name = stringr::str_remove(name, ".gif"),
    value = stringr::str_remove(value, here::here("linguistics")), 
    path = glue::glue("- [{name}](.{value})")
    ) |>
  dplyr::pull()
```

- [history_spain](./gifs/history_spain.gif)
- [phon_history](./gifs/phon_history.gif)
- [teeth](./gifs/teeth.gif)
- [thor_words_made_up](./gifs/thor_words_made_up.gif)
- [vocal_apparatus](./gifs/vocal_apparatus.gif)

## img

``` r
fs::dir_ls(path = here::here("linguistics", "img")) |>
  tibble::as_tibble() |>
  dplyr::mutate(
    name = stringr::str_remove(value, here::here("linguistics", "img/")), 
    name = stringr::str_remove(name, ".png"),
    value = stringr::str_remove(value, here::here("linguistics")), 
    path = glue::glue("- [{name}](.{value})")
    ) |>
  dplyr::pull()
```

- [perception_1](./img/perception_1.png)
- [perception_2](./img/perception_2.png)
- [production_1](./img/production_1.png)
- [production_2](./img/production_2.png)

## memes

``` r
fs::dir_ls(path = here::here("linguistics", "memes")) |>
  tibble::as_tibble() |>
  dplyr::mutate(
    name = stringr::str_remove(value, here::here("linguistics", "memes/")), 
    name = stringr::str_remove(name, ".png"),
    value = stringr::str_remove(value, here::here("linguistics")), 
    path = glue::glue("- [{name}](.{value})")
    ) |>
  dplyr::pull()
```

- [babybeat](./memes/babybeat.png)
- [clinica_aspirar_ptk](./memes/clinica_aspirar_ptk.png)
- [clinica_dt_poa](./memes/clinica_dt_poa.png)
- [clinica_encadenamiento](./memes/clinica_encadenamiento.png)
- [clinica_r](./memes/clinica_r.png)
- [clinica_schwa](./memes/clinica_schwa.png)
- [consonants_english](./memes/consonants_english.png)
- [diptongo](./memes/diptongo.png)
- [evolution](./memes/evolution.png)
- [ipa_beer](./memes/ipa_beer.png)
- [labiodental](./memes/labiodental.png)
- [language_acquisition_babies](./memes/language_acquisition_babies.png)
- [language_nerd](./memes/language_nerd.png)
- [phon_phonemes](./memes/phon_phonemes.png)
- [phon_translation_pain](./memes/phon_translation_pain.png)
- [phonemes_common](./memes/phonemes_common.png)
- [phonetics_allphone](./memes/phonetics_allphone.png)
- [phonetics_exceptional_hiatus](./memes/phonetics_exceptional_hiatus.png)
- [phonetics_grapheme_phoneme_correspondence](./memes/phonetics_grapheme_phoneme_correspondence.png)
- [phonetics_ipa](./memes/phonetics_ipa.png)
- [phonetics_orthography](./memes/phonetics_orthography.png)
- [phonetics_orthography1](./memes/phonetics_orthography1.png)
- [phonetics_orthography2](./memes/phonetics_orthography2.png)
- [phonetics_perception](./memes/phonetics_perception.png)
- [phonetics_phonology](./memes/phonetics_phonology.png)
- [phonetics_resyllabification1](./memes/phonetics_resyllabification1.png)
- [phonetics_resyllabification2](./memes/phonetics_resyllabification2.png)
- [phonetics_resyllabification3](./memes/phonetics_resyllabification3.png)
- [phonetics_variation](./memes/phonetics_variation.png)
- [phonetics_vowels](./memes/phonetics_vowels.png)
- [pitch_accent](./memes/pitch_accent.png)
- [prescriptivism](./memes/prescriptivism.png)
- [prescriptivism_template](./memes/prescriptivism_template.png)
