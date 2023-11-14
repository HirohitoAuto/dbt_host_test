

select
    compression_set_no as test_id,
    'compression_set' as test_category,
    curing_no,
    project_no,
    test_plan_no,
    aging_flag,
    aging_medium,
    aging_equipment,
    aging_temperature,
    aging_time,
    dryout_flag,
    compression_rate,
    original_weight_in_water1,
    sample_type,
    sample_shape,
    release_method,
    sample_area,
    compression_set,
    original_thickness1,
    aged_thickness1,
    compression_set1,
    original_thickness2,
    aged_thickness2,
    compression_set2,
    compression_set_std,
    equipment_for_thickness,
    created_at,
    updated_at,
    creator_employee_no,
    updator_employee_no
from "elastomer_dwh"."elastomer"."compressionset"
where
    (compression_set_no is not null and compression_set_no != '')
    and (curing_no is not null and curing_no != '')