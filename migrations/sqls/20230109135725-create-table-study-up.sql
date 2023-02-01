CREATE TABLE api.study(
  id uuid  PRIMARY KEY DEFAULT uuid_generate_v4 (),
  report_id uuid  REFERENCES api.medical_report (id),
  category text NOT NULL,
  observations text NOT NULL,
  done_at timestamp with time zone,
  created_at timestamp without time zone default (now() at time zone 'utc')
);