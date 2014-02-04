if initialize_session "book"; then
  load_window "padrino-book"
  load_window "job-vacancy"

  select_window 1
fi

finalize_and_go_to_session
