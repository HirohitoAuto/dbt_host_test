

select
    mooney_viscosity_no as test_id,
    'mooney_viscosity' as test_category,
    compound_no,
    project_no,
    test_plan_no,
    mooney_viscosity,
    mooney_curve,
    instrument_id,
    rotor_type,
    rpm,
    measurement_temperature,
    preheating_time,
    measurement_time,
    aged_operation,
    aged_temperature,
    aged_humidity,
    aged_time,
    created_at,
    updated_at,
    creator_employee_no,
    updator_employee_no
from "elastomer_dwh"."elastomer"."mooneyviscosity"
where
    (mooney_viscosity_no is not null and mooney_viscosity_no != '')
    and (compound_no is not null and compound_no != '')