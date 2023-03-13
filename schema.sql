CREATE DOMAIN language_sample AS VARCHAR(3)[]
  CONSTRAINT no_empty_element CHECK (NOT VALUE @> '{""}')
  CONSTRAINT is_uppercase CHECK (array_to_string(VALUE, ',') =
                                 upper(array_to_string(VALUE, ',')));

CREATE TABLE IF NOT EXISTS site_sample
(
  site_id         UUID NOT NULL PRIMARY KEY DEFAULT uuid_generate_v1(),
  translates_from language_sample
);