#Adds ordering to the employment table for the historical order (oldest (1) to newest - company transfer ordering) and what is the newest record (1) - most recent record

view: l_transfer_ordering {
  derived_table: {
    datagroup_trigger: daily
    indexes: ["employeeid"]
    sql: SELECT *,
    Row_number() OVER(partition BY employeeid ORDER BY EmploymentStatus ASC, statusstartdate ASC, terminationdate DESC) AS company_transfer_ordering, --fixes issue where statusstartdate was the same between 2 records
    Row_number() OVER(partition BY employeeid ORDER BY EmploymentStatus ASC, statusstartdate DESC, terminationdate ASC) AS most_recent_record --fixes issue where statusstartdate was the same between 2 records
FROM (
SELECT
  employeeid,
  OrgLevel3 as companycode,
  employment.LastHire as hire,
  terminationdate,
  statusstartdate,
  terminationreasoncode,
  OrgLevel1Description as department_description,
  EmploymentStatus,
  Row_number() OVER (partition BY employeeid, OrgLevel3 ORDER BY EmploymentStatus ASC, statusstartdate DESC, terminationdate ASC) as moved_company_codes
FROM ultipro.employment AS employment
WHERE employment.load_ts = (SELECT Max(load_ts) FROM ultipro.employment)
  --AND employeeid = 'BRE06H0310K0'
) as a
WHERE moved_company_codes = 1;;
  }
}


#This view did not take into account that we only care about transfers between orglevel3
# view: l_transfer_ordering {
#   derived_table: {
#     datagroup_trigger: daily
#     indexes: ["employeeid"]
#     sql: SELECT
#           employeeid,
#           OrgLevel3 as companycode,
#           employment.LastHire as hire,
#           terminationdate,
#           statusstartdate,
#           terminationreasoncode,
#           OrgLevel1Description as department_description,
#           Row_number() OVER(partition BY employeeid ORDER BY statusstartdate ASC, terminationdate DESC) AS company_transfer_ordering, --fixes issue where statusstartdate was the same between 2 records
#           Row_number() OVER(partition BY employeeid ORDER BY statusstartdate DESC, terminationdate ASC) AS most_recent_record --fixes issue where statusstartdate was the same between 2 records
#         FROM ultipro.employment AS employment
#         WHERE employment.load_ts = (SELECT Max(load_ts) FROM ultipro.employment)
#           --AND employeeid = 'BRE06P00P0K0'
#           ;;
#   }
# }
