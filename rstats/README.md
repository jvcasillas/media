
# Rstats media

Last update: 2023-03-26

## Memes

``` r
fs::dir_ls(path = here::here("rstats", "memes")) |>
  tibble::as_tibble() |>
  dplyr::mutate(
    name = stringr::str_remove(value, here::here("rstats", "memes/")), 
    name = stringr::str_remove(name, ".png"),
    value = stringr::str_remove(value, here::here("rstats")), 
    path = glue::glue("- [{name}](.{value})")
    ) |>
  dplyr::pull()
```

- [baes_theorem](./memes/baes_theorem.png)
- [bayes_cult](./memes/bayes_cult.png)
- [bayesian_bayes_theorem](./memes/bayesian_bayes_theorem.png)
- [bayesian_bayes_theorem_desc](./memes/bayesian_bayes_theorem_desc.png)
- [bayesian_bey](./memes/bayesian_bey.png)
- [bayesian_likelihoods](./memes/bayesian_likelihoods.png)
- [bayesian_priors](./memes/bayesian_priors.png)
- [lm_additive_effects](./memes/lm_additive_effects.png)
- [lm_assumptions](./memes/lm_assumptions.png)
- [lm_ballantine](./memes/lm_ballantine.png)
- [lm_correlation](./memes/lm_correlation.png)
- [lm_correlation_not_causation](./memes/lm_correlation_not_causation.png)
- [lm_dgp](./memes/lm_dgp.png)
- [lm_dummy_variables](./memes/lm_dummy_variables.png)
- [lm_family_deaths](./memes/lm_family_deaths.png)
- [lm_general](./memes/lm_general.png)
- [lm_interactions](./memes/lm_interactions.png)
- [lm_linguistic_pedantry](./memes/lm_linguistic_pedantry.png)
- [lm_log_function](./memes/lm_log_function.png)
- [lm_logistic_regression](./memes/lm_logistic_regression.png)
- [lm_mem](./memes/lm_mem.png)
- [lm_number](./memes/lm_number.png)
- [lm_office](./memes/lm_office.png)
- [lm_ols](./memes/lm_ols.png)
- [lm_overfitting](./memes/lm_overfitting.png)
- [lm_predictors1](./memes/lm_predictors1.png)
- [lm_predictors2](./memes/lm_predictors2.png)
- [lm_simpson](./memes/lm_simpson.png)
- [lm_tellmey](./memes/lm_tellmey.png)
- [lm_type](./memes/lm_type.png)
- [lm_vs_dl](./memes/lm_vs_dl.png)
- [os_filedrawer](./memes/os_filedrawer.png)
- [os_heartbreak](./memes/os_heartbreak.png)
- [os_replication_types](./memes/os_replication_types.png)
- [osrrl_data_scientist](./memes/osrrl_data_scientist.png)
- [osrrl_git](./memes/osrrl_git.png)
- [ossrl_registered_reports](./memes/ossrl_registered_reports.png)
- [philosophy_of_science_aristotle_plato](./memes/philosophy_of_science_aristotle_plato.png)
- [philosophy_of_science_aristotle_socrates](./memes/philosophy_of_science_aristotle_socrates.png)
- [philosophy_of_science_stats](./memes/philosophy_of_science_stats.png)
- [philosophy_of_science_summary](./memes/philosophy_of_science_summary.png)
- [philosophy_of_science_summary_long](./memes/philosophy_of_science_summary_long.png)
- [power](./memes/power.png)
- [r_compare](./memes/r_compare.png)
- [r_tidy_verbs](./memes/r_tidy_verbs.png)
- [rstats_0nullnan](./memes/rstats_0nullnan.png)
- [rstats_analysis_section](./memes/rstats_analysis_section.png)
- [rstats_assignment](./memes/rstats_assignment.png)
- [rstats_badstats](./memes/rstats_badstats.png)
- [rstats_bargraphs](./memes/rstats_bargraphs.png)
- [rstats_beginners](./memes/rstats_beginners.png)
- [rstats_bimodal_distribution](./memes/rstats_bimodal_distribution.png)
- [rstats_case_when](./memes/rstats_case_when.png)
- [rstats_ci_1](./memes/rstats_ci_1.png)
- [rstats_ci_2](./memes/rstats_ci_2.png)
- [rstats_cult](./memes/rstats_cult.png)
- [rstats_distributions](./memes/rstats_distributions.png)
- [rstats_effect_size1](./memes/rstats_effect_size1.png)
- [rstats_effect_size2](./memes/rstats_effect_size2.png)
- [rstats_excel](./memes/rstats_excel.png)
- [rstats_ggplot2](./memes/rstats_ggplot2.png)
- [rstats_install_library](./memes/rstats_install_library.png)
- [rstats_interpolation](./memes/rstats_interpolation.png)
- [rstats_iqr](./memes/rstats_iqr.png)
- [rstats_joins](./memes/rstats_joins.png)
- [rstats_knowledge](./memes/rstats_knowledge.png)
- [rstats_linear_independence](./memes/rstats_linear_independence.png)
- [rstats_load_all1](./memes/rstats_load_all1.png)
- [rstats_load_all2](./memes/rstats_load_all2.png)
- [rstats_meaningless_data](./memes/rstats_meaningless_data.png)
- [rstats_model_workflow](./memes/rstats_model_workflow.png)
- [rstats_nhst1](./memes/rstats_nhst1.png)
- [rstats_nhst2](./memes/rstats_nhst2.png)
- [rstats_nhst3](./memes/rstats_nhst3.png)
- [rstats_pop_v\_sample](./memes/rstats_pop_v_sample.png)
- [rstats_pvalues](./memes/rstats_pvalues.png)
- [rstats_pvalues_wrong](./memes/rstats_pvalues_wrong.png)
- [rstats_r\_vs_rstudio](./memes/rstats_r_vs_rstudio.png)
- [rstats_regular_expressions](./memes/rstats_regular_expressions.png)
- [rstats_reprex](./memes/rstats_reprex.png)
- [rstats_rmd](./memes/rstats_rmd.png)
- [rstats_ronald_fisher](./memes/rstats_ronald_fisher.png)
- [rstats_skew](./memes/rstats_skew.png)
- [rstats_stackoverflow](./memes/rstats_stackoverflow.png)
- [rstats_statisticians](./memes/rstats_statisticians.png)
- [rstats_type12_error1](./memes/rstats_type12_error1.png)
- [rstats_type12_error2](./memes/rstats_type12_error2.png)
- [rstats_type12errors](./memes/rstats_type12errors.png)
- [rstats_vision](./memes/rstats_vision.png)
- [rstats_what_people_do](./memes/rstats_what_people_do.png)
- [rstats_workflow](./memes/rstats_workflow.png)

## Gifs

``` r
fs::dir_ls(path = here::here("rstats", "gifs")) |>
  tibble::as_tibble() |>
  dplyr::mutate(
    name = stringr::str_remove(value, here::here("rstats", "gifs/")), 
    name = stringr::str_remove(name, ".gif"),
    value = stringr::str_remove(value, here::here("rstats")), 
    path = glue::glue("- [{name}](.{value})")
    ) |>
  dplyr::pull()
```

- [bayes_theorem](./gifs/bayes_theorem.gif)
- [tables_improve](./gifs/tables_improve.gif)
