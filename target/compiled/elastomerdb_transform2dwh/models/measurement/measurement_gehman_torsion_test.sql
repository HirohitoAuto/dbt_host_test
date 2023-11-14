

select
    gehman_no as test_id,
    'gehman' as test_category,
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
    t2,
    t5,
    t10,
    t50,
    t100,
    test_data,
    temp_profile,
    value_profile,
    thickness,
    width,
    created_at,
    updated_at,
    creator_employee_no,
    updator_employee_no
from "elastomer_dwh"."elastomer"."gehmantorsiontest"
where
    (gehman_no is not null and gehman_no != '')
    and (curing_no is not null and curing_no != '')