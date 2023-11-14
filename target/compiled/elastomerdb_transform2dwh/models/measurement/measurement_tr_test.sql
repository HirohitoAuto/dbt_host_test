

select
    temperature_retraction_no as test_id,
    'temperature_retraction' as test_category,
    curing_no,
    project_no,
    test_plan_no,
    aging_flag,
    aging_medium,
    aging_equipment,
    aging_temperature,
    aging_time,
    dryout_flag,
    testing_equipment,
    refrigerant,
    tr10,
    tr30,
    tr50,
    tr70,
    test_data,
    created_at,
    updated_at,
    creator_employee_no,
    updator_employee_no
from "elastomer_dwh"."elastomer"."trtest"
where
    (temperature_retraction_no is not null and temperature_retraction_no != '')
    and (curing_no is not null and curing_no != '')