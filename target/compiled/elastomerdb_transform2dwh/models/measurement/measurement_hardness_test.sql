

select
    hardness_no as test_id,
    'hardness' as test_category,
    curing_no,
    project_no,
    test_plan_no,
    aging_flag,
    aging_medium,
    aging_equipment,
    aging_temperature,
    aging_time,
    dryout_flag,
    hardness_type,
    measuring_temperature_for_hardness,
    equipment_for_hardness,
    needle_speed,
    delay,
    hardness_n1,
    hardness_n2,
    hardness_n3,
    hardness_median,
    created_at,
    updated_at,
    creator_employee_no,
    updator_employee_no
from "elastomer_dwh"."elastomer"."hardnesstest"
where
    (hardness_no is not null and hardness_no != '')
    and (curing_no is not null and curing_no != '')