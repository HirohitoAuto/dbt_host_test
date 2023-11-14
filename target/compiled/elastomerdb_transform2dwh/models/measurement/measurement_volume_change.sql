

select
    volume_change_rate_no as test_id,
    'volume_change_rate' as test_category,
    curing_no,
    project_no,
    test_plan_no,
    aging_flag,
    aging_medium,
    aging_equipment,
    aging_temperature,
    aging_time,
    dryout_flag,
    volume_change_rate,
    original_weight1,
    original_weight_in_water1,
    aged_weight1,
    aged_weight_in_water1,
    original_weight2,
    original_weight_in_water2,
    aged_weight2,
    aged_weight_in_water2,
    volume_change_std,
    created_at,
    updated_at,
    creator_employee_no,
    updator_employee_no
from "elastomer_dwh"."elastomer"."volumechange"
where
    (volume_change_rate_no is not null and volume_change_rate_no != '')
    and (curing_no is not null and curing_no != '')