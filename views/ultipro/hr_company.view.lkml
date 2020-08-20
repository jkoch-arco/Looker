explore: hr_company {}
view: hr_company {
  derived_table: {
    datagroup_trigger:daily
    create_process: {
      sql_step:
      CREATE TABLE ${SQL_TABLE_NAME} (
    [company_code] NVARCHAR(4),
    [company_short_name] NVARCHAR(10),
    [company_long_name] NVARCHAR(50)
) ;;
sql_step:
INSERT INTO ${SQL_TABLE_NAME} VALUES
    ('001','-','The Murray Company'),
    ('002','ACC','ARCO Construction Com'),
    ('003','ADB','ARCO Design/Build, Inc.'),
    ('005','ANC','ARCO National Const'),
    ('006','ABS','ARCO Business Services'),
    ('007','AMNC','ARCO/Murray National BTS'),
    ('008','ADB-PHL','ARCO Design/Build NE'),
    ('010','ADB-BAL','ARCO Design/Build MA'),
    ('011','MERCO','Merco Mechanical, Inc.'),
    ('017','EV','Echo Valley Ranch, L.L.C.'),
    ('018','ANCKC','ARCO National Const KC'),
    ('019','GMA','GMA Architects, Inc.'),
    ('021','MCC','Midwest Concrete Cons'),
    ('030','AMCC','ARCO/Murray Con Co'),
    ('031','ADB-MW','ARCO Design-Build MW'),
    ('033','FBC','Flat Bottom Creek, LLC'),
    ('046','AMA','ARCO/Murray Associates'),
    ('047','AMNC-PS','ARCO/Murray National Proc'),
    ('048','AMNC-TS','ARCO/Murray National TS'),
    ('049','AMND','ARCO/Murray National Dal'),
    ('051','ADB-SW','ARCO Design/Build SW'),
    ('070','ADB-BTS','ARCO Design/Build - BTS'),
    ('072','CE','CAGE Engineering, Inc.'),
    ('073','AMC','ARCO/Murray Cons'),
    ('075','ADBDS','ADB Design Services, Inc.'),
    ('076','AMM','AM Mechanical, Inc.'),
    ('077','AMNC-UM','ARCO/Murray National Chic'),
    ('078','AMNV','ARCO/Murray National Nash'),
    ('079','AMD','ARCO/Murray National Denv'),
    ('080','AMSM','ARCO/Murray Nat San Mateo'),
    ('081','ALG','ARCO National Living Grou'),
    ('082','ANE','ARCO National New England'),
    ('083','ACC-SLMF','ARCO Senior Living Multi'),
    ('084','ADB-SE','ARCO Design/Build Southea'),
    ('085','ADB-NY','ADB Industrial New York '),
    ('086','ACC-MW','ARCO Construction Company Mountain West'),
    ('087','AMNT','ARCO/Murray International Toronto'),
    ('088','AMNC-BTSC','AMNC - BTS Canadian Ops');
      ;;
    }
  }

  dimension: company_code {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.company_code ;;
  }

  dimension: company_short_name {
    group_label: "Organization"
    label: "{{_view._name | capitalize | replace:'_',' '}} Short Name"
    type: string
    sql: ${TABLE}.company_short_name ;;
  }

  dimension: company_long_name {
    group_label: "Organization"
    label: "{{_view._name | capitalize | replace:'_',' '}} Long Name"
    type: string
    sql: ${TABLE}.company_long_name ;;
  }

}
