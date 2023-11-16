

with
    master_reagent as (  -- 可塑剤マスター
        select category, sub_category, ingredients_no, ingredients_name
        from "elastomer_dwh"."elastomer"."m_plasticizer"
    )
select
    a.category_id as reagent_category_id,
    a.category as reagent_category,
    null as reagent_sub_category_id,
    case when sub_category = '' then null else sub_category end as reagent_sub_category,  -- '' -> null,
    b.ingredients_no as reagent_id,
    b.ingredients_name as reagent
from "elastomer_dwh"."elastomer"."stg_reagent__m_category" as a
inner join master_reagent as b on a.category = b.category