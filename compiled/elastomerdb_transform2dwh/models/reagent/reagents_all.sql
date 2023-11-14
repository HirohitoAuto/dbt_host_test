

with
    reagents_stg_union as (
        select
            reagent_category_id,
            reagent_category,
            reagent_sub_category_id,
            reagent_sub_category,
            reagent_id,
            reagent
        from "elastomer_dwh"."elastomer"."stg_reagent__m_activator_retarder"

        union all

        select
            reagent_category_id,
            reagent_category,
            reagent_sub_category_id,
            reagent_sub_category,
            reagent_id,
            reagent
        from "elastomer_dwh"."elastomer"."stg_reagent__m_adhesionpromoter"

        union all

        select
            reagent_category_id,
            reagent_category,
            reagent_sub_category_id,
            reagent_sub_category,
            reagent_id,
            reagent
        from "elastomer_dwh"."elastomer"."stg_reagent__m_antioxidant"

        union all

        select
            reagent_category_id,
            reagent_category,
            reagent_sub_category_id,
            reagent_sub_category,
            reagent_id,
            reagent
        from "elastomer_dwh"."elastomer"."stg_reagent__m_coagent"

        union all

        select
            reagent_category_id,
            reagent_category,
            reagent_sub_category_id,
            reagent_sub_category,
            reagent_id,
            reagent
        from "elastomer_dwh"."elastomer"."stg_reagent__m_couplingagent"

        union all

        select
            reagent_category_id,
            reagent_category,
            reagent_sub_category_id,
            reagent_sub_category,
            reagent_id,
            reagent
        from "elastomer_dwh"."elastomer"."stg_reagent__m_curative"

        union all

        select
            reagent_category_id,
            reagent_category,
            reagent_sub_category_id,
            reagent_sub_category,
            reagent_id,
            reagent
        from "elastomer_dwh"."elastomer"."stg_reagent__m_filler"

        union all

        select
            reagent_category_id,
            reagent_category,
            reagent_sub_category_id,
            reagent_sub_category,
            reagent_id,
            reagent
        from "elastomer_dwh"."elastomer"."stg_reagent__m_hnbr"

        union all

        select
            reagent_category_id,
            reagent_category,
            reagent_sub_category_id,
            reagent_sub_category,
            reagent_id,
            reagent
        from "elastomer_dwh"."elastomer"."stg_reagent__m_metaloxide"

        union all

        select
            reagent_category_id,
            reagent_category,
            reagent_sub_category_id,
            reagent_sub_category,
            reagent_id,
            reagent
        from "elastomer_dwh"."elastomer"."stg_reagent__m_others"

        union all

        select
            reagent_category_id,
            reagent_category,
            reagent_sub_category_id,
            reagent_sub_category,
            reagent_id,
            reagent
        from "elastomer_dwh"."elastomer"."stg_reagent__m_plasticizer"

        union all

        select
            reagent_category_id,
            reagent_category,
            reagent_sub_category_id,
            reagent_sub_category,
            reagent_id,
            reagent
        from "elastomer_dwh"."elastomer"."stg_reagent__m_processaid"
    )

select
    reagent_category_id,
    reagent_category,
    reagent_sub_category_id,
    reagent_sub_category,
    reagent_id,
    reagent
from reagents_stg_union
where
    (reagent_category_id is not null and reagent_category_id != '')
    and (reagent_id is not null and reagent_id != '')
    and (reagent is not null and reagent != '')