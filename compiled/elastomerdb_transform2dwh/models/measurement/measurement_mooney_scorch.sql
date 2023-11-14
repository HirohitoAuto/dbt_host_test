

select
    mooney_scorch_no as test_id,
    'mooney_scorch' as test_category,
    compound_no,
    project_no,
    test_plan_no,
    minimum_viscosity,
    t5,
    t35,
    over_30_min,
    mooney_curve,
    instrument_id,
    rotor_type,
    rpm,
    measurement_temperature,
    preheating_time,
    aged_operation,
    aged_temperature,
    aged_humidity,
    aged_time,
    created_at,
    updated_at,
    creator_employee_no,
    updator_employee_no
from "elastomer_dwh"."elastomer"."mooneyscorch"
where
    (mooney_scorch_no is not null and mooney_scorch_no != '')
    and (compound_no is not null and compound_no != '')