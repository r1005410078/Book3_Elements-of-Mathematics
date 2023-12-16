insert into
  "JZCLOUD"."test_types_2" (
    "c_char",
    "c_character",
    "c_varchar",
    "c_numeric",
    "c_decimal",
    "c_number",
    "c_dec",
    "c_bit",
    "c_integer",
    "c_int",
    "c_bigint",
    "c_tinyint",
    "c_byte",
    "c_smallint",
    "c_binary",
    "c_varbinary",
    "c_float",
    "c_double",
    "c_real",
    "c_doubleprecision",
    "c_date",
    "c_time",
    "c_timestamp",
    "c_datetime",
    "c_timewithtimezone",
    "c_timewithlocaltimezone",
    "c_datetimewithtimezone",
    "c_text",
    "c_image",
    "c_longvarchar",
    "c_longvarbinary",
    "c_blob",
    "c_clob",
    "c_intervalyear",
    "c_intervalyeartomonth",
    "c_intervalmonth",
    "c_intervalday",
    "c_intervaldaytohour",
    "c_intervaldaytominute",
    "c_intervaldaytosecond",
    "c_intervalhour",
    "c_intervalhourtominute",
    "c_intervalhourtosecond",
    "c_intervalminute",
    "c_intervalminutetosecond",
    "c_intervalsecond",
    "c_bfile",
    "c_rowid"
  )
VALUES
  (
    'c_char4',
    'c_ch',
    'c_varchar1',
    1.01234567,
    2.01234567,
    3.01234567,
    4.01234567,
    1,
    11,
    12,
    16,
    14,
    0x01,
    11,
    0x123456789,
    0x123456789,
    5.12345,
    6.12345,
    7.12345,
    8.12345,
    '2023-11-19',
    '10:05:30.0123456',
    '2020-11-18 10:05:30.000123',
    '2020-11-18 10:05:30.000000',
    '09:10:21.123 -11:00',
    '2002-12-12 09:10:21 +9:00',
    '2002-12-12 09:10:21.345 +9:00',
    'c_text_aaa',
    0x1221,
    'c_LONGVARCHAR',
    0x1111,
    0x1112,
    'cblob',
    INTERVAL '15' YEAR,
    INTERVAL '15-08' YEAR TO MONTH,
    INTERVAL '15' MONTH,
    INTERVAL '15' DAY,
    INTERVAL '9 23' DAY TO HOUR,
    INTERVAL '09 23:12' DAY TO MINUTE,
    INTERVAL '09 23:12:01.123' DAY TO SECOND,
    INTERVAL '15' HOUR,
    INTERVAL '23:12' HOUR TO MINUTE,
    INTERVAL '23:12:01.1' HOUR TO SECOND,
    INTERVAL '50' MINUTE,
    INTERVAL '12:01.1' MINUTE TO SECOND,
    INTERVAL '51.123' SECOND,
    BFILENAME ('GYFDIR', 'protobuf-test-1.0-SNAPSHOT.jar'),
    SF_BUILD_ROWID (1, 2, 50)
  );

update "JZCLOUD"."test_types_2"
set
  "c_character" = 't_up';

insert into
  "JZCLOUD"."test_types_2" (
    "c_char",
    "c_character",
    "c_varchar",
    "c_numeric",
    "c_decimal",
    "c_number",
    "c_dec",
    "c_bit",
    "c_integer",
    "c_int",
    "c_bigint",
    "c_tinyint",
    "c_byte",
    "c_smallint",
    "c_binary",
    "c_varbinary",
    "c_float",
    "c_double",
    "c_real",
    "c_doubleprecision",
    "c_date",
    "c_time",
    "c_timestamp",
    "c_datetime",
    "c_timewithtimezone",
    "c_timewithlocaltimezone",
    "c_datetimewithtimezone",
    "c_text",
    "c_image",
    "c_longvarchar",
    "c_longvarbinary",
    "c_blob",
    "c_clob",
    "c_intervalyear",
    "c_intervalyeartomonth",
    "c_intervalmonth",
    "c_intervalday",
    "c_intervaldaytohour",
    "c_intervaldaytominute",
    "c_intervaldaytosecond",
    "c_intervalhour",
    "c_intervalhourtominute",
    "c_intervalhourtosecond",
    "c_intervalminute",
    "c_intervalminutetosecond",
    "c_intervalsecond",
    "c_bfile",
    "c_rowid"
  )
VALUES
  (
    'c_char4',
    'c_ch',
    'c_varchar1',
    1.01234567,
    2.01234567,
    3.01234567,
    4.01234567,
    1,
    11,
    12,
    16,
    14,
    0x01,
    11,
    0x123456789,
    0x123456789,
    5.12345,
    6.12345,
    7.12345,
    8.12345,
    '2023-11-19',
    '10:05:30.0123456',
    '2020-11-18 10:05:30.000123',
    '2020-11-18 10:05:30.000000',
    '09:10:21.123 -11:00',
    '2002-12-12 09:10:21 +9:00',
    '2002-12-12 09:10:21.345 +9:00',
    'c_text_aaa',
    0x1221,
    'c_LONGVARCHAR',
    0x1111,
    0x1112,
    'cblob',
    INTERVAL '15' YEAR,
    INTERVAL '15-08' YEAR TO MONTH,
    INTERVAL '15' MONTH,
    INTERVAL '15' DAY,
    INTERVAL '9 23' DAY TO HOUR,
    INTERVAL '09 23:12' DAY TO MINUTE,
    INTERVAL '09 23:12:01.123' DAY TO SECOND,
    INTERVAL '15' HOUR,
    INTERVAL '23:12' HOUR TO MINUTE,
    INTERVAL '23:12:01.1' HOUR TO SECOND,
    INTERVAL '50' MINUTE,
    INTERVAL '12:01.1' MINUTE TO SECOND,
    INTERVAL '51.123' SECOND,
    BFILENAME ('GYFDIR', 'protobuf-test-1.0-SNAPSHOT.jar'),
    SF_BUILD_ROWID (1, 2, 50)
  );