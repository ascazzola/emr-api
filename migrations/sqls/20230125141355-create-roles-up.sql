CREATE ROLE emr LOGIN PASSWORD 'emr123456';

CREATE ROLE emr_anonymous;

GRANT emr_anonymous TO emr;

CREATE ROLE emr_doctor;

GRANT emr_doctor TO emr;