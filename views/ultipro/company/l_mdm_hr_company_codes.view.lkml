#Cleans up additional company names if they were unavailable in the main table, used in company
#Added 001 manually as it doesn't naturally occur in GL Company Codes
view: l_mdm_hr_company_codes {
  derived_table: {
    datagroup_trigger: daily
    indexes: ["company_number_padded"]
    sql:
      Select
        coalesce(cast(l_hr_company_codes.global_company_code as int), company.company_number) as company_number,
        coalesce(l_hr_company_codes.global_company_code,right(replicate('0',3)+cast(company.company_number as varchar(3)),3)) as company_number_padded,
        company.parent_flg,
        company.company_parent_number,
        company.company_group,
        company.company_parent,
        CASE WHEN coalesce(cast(l_hr_company_codes.global_company_code as int), company.company_number) = 11 THEN 'AMNC'
        WHEN coalesce(cast(l_hr_company_codes.global_company_code as int), company.company_number) = 46 THEN 'AMNC'
        WHEN coalesce(cast(l_hr_company_codes.global_company_code as int), company.company_number) = 1 THEN '001 - The Murray Company'
        ELSE company.company_name end as company_name,
        company.company_full_name,
        company.city,
        company.state_code,
        company.other_city,
        company.other_state_code,
        company.year_est
      FROM arco.Company as company
        FULL OUTER JOIN ( Select global_company_code FROM ${l_hr_company_codes.SQL_TABLE_NAME} as l_hr_company_codes UNION Select '001') as l_hr_company_codes ON right(replicate('0',3)+cast(company.company_number as varchar(3)),3)  = l_hr_company_codes.global_company_code;;
  }
}
