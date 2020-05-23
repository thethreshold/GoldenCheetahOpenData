ids <- get_athlete_ids(prefix = "00")
out <- download_workouts(ids, pattern = "002|000e", dir = tempdir(), overwrite = TRUE)
out <- extract_workouts(out)

expect_warning(res <- read_workouts(out, verbose = FALSE),
               pattern = "Number of workout files")

expect_true(is.na(res[[2]]))

expect_true(is(res[[1]], "trackeRdata"))

## Clean up
file.remove(local(out)$path)
unlink(gsub(".zip", "", out$path), recursive = TRUE)