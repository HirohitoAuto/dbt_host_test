

select
    mdr_no as test_id,
    'mdr' as test_category,
    compound_no,
    project_no,
    test_plan_no,
    ml,
    mh,
    t10,
    t50,
    t90,
    ts1,
    ts2,
    mdr_curve,
    instrument_id,
    amplitude_angle,
    frequency,
    measurement_temperature,
    measurement_time,
    aged_operation,
    aged_temperature,
    aged_humidity,
    aged_time,
    dryout_flag,
    created_at,
    updated_at,
    creator_employee_no,
    updator_employee_no
from "elastomer_dwh"."elastomer"."mdr"
where
    (mdr_no is not null and mdr_no != '')
    and (compound_no is not null and compound_no != '')