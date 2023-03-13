CREATE DOMAIN language_sample AS VARCHAR(3)[]
  CONSTRAINT no_empty_element CHECK (NOT VALUE @> '{""}')
  CONSTRAINT is_uppercase CHECK (array_to_string(VALUE, ',') =
                                 upper(array_to_string(VALUE, ',')));

CREATE TABLE IF NOT EXISTS site_sample
(
  site_id         SERIAL PRIMARY KEY,
  translates_from language_sample
);