view: accounts {
  sql_table_name: dbo.accounts ;;
  drill_fields: [id]

  dimension: id {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
    required_fields: [id]
    link: {
      label: "Link to Salesforce"
      url: "https://www.google.com/search?q={{id|encode_url}}"
      icon_url: "https://www.salesforce.com/etc/designs/sfdc-www/en_us/favicon.ico"
    }
    link: {
      label: "Google {{name}}"
      url: "https://www.google.com/search?q={{name|encode_url}}"
      icon_url: "http://www.google.com/s2/favicons?domain=www.google.com"
    }
  }

  dimension: amc_protected_list {
    label: "AMC Protected List"
    description: "Contact the responsible office if marked client"
    type: string
    sql: ${TABLE}.AMCPL__c ;;
  }

  dimension: division {
    type: string
    sql: COALESCE(NULLIF(${TABLE}.DIVISION__C,''),'~UPDATE Division~') ;;
  }

  dimension: related_to_office {
    type: string
    sql: ${TABLE}.RELATED_TO_OFFICE__C ;;
  }

  dimension: type {
    type: string
    sql: COALESCE(NULLIF(${TABLE}.Type,''),'~Unknown Type~') ;;
  }

  measure: count_of_accounts {
    type: count
  }
}
