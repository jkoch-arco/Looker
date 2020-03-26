view: ddup_extended {

  sql_table_name: viewpoint.DDUPExtended_vw;;

  dimension: key_id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.KeyID ;;
  }

  dimension: vpuser_name {
    hidden: yes
    type: string
    sql: ${TABLE}.VPUserName ;;
  }

  dimension: show_rates {
    hidden: yes
    type: string
    sql: ${TABLE}.ShowRates ;;
  }

  dimension: hot_key_form {
    hidden: yes
    type: string
    sql: ${TABLE}.HotKeyForm ;;
  }

  dimension: restricted_batches {
    hidden: yes
    type: string
    sql: ${TABLE}.RestrictedBatches ;;
  }

  dimension: full_name {
    hidden: yes
    type: string
    sql: ${TABLE}.FullName ;;
  }

  dimension: phone {
    hidden: yes
    type: string
    sql: ${TABLE}.Phone ;;
  }

  dimension: email {
    hidden: yes
    type: string
    sql: ${TABLE}.EMail ;;
  }

  dimension: confirm_update {
    hidden: yes
    type: string
    sql: ${TABLE}.ConfirmUpdate ;;
  }

  dimension: default_company {
    hidden: yes
    type: number
    sql: ${TABLE}.DefaultCompany ;;
  }

  dimension: enter_as_tab {
    hidden: yes
    type: string
    sql: ${TABLE}.EnterAsTab ;;
  }

  dimension: extend_controls {
    hidden: yes
    type: string
    sql: ${TABLE}.ExtendControls ;;
  }

  dimension: save_printer_settings {
    hidden: yes
    type: string
    sql: ${TABLE}.SavePrinterSettings ;;
  }

  dimension: smart_cursor {
    hidden: yes
    type: string
    sql: ${TABLE}.SmartCursor ;;
  }

  dimension: tool_tip_help {
    hidden: yes
    type: string
    sql: ${TABLE}.ToolTipHelp ;;
  }

  dimension: project {
    hidden: yes
    type: string
    sql: ${TABLE}.Project ;;
  }

  dimension: prgroup {
    hidden: yes
    type: number
    sql: ${TABLE}.PRGroup ;;
  }

  dimension: prend_date {
    hidden: yes
    type: string
    sql: ${TABLE}.PREndDate ;;
  }

  dimension: jbbill_mth {
    hidden: yes
    type: string
    sql: ${TABLE}.JBBillMth ;;
  }

  dimension: jbbill_number {
    hidden: yes
    type: number
    sql: ${TABLE}.JBBillNumber ;;
  }

  dimension: menu_col_width {
    hidden: yes
    type: string
    sql: ${TABLE}.MenuColWidth ;;
  }

  dimension: last_node {
    hidden: yes
    type: string
    sql: ${TABLE}.LastNode ;;
  }

  dimension: last_sub_folder {
    hidden: yes
    type: string
    sql: ${TABLE}.LastSubFolder ;;
  }

  dimension: minimize_use {
    hidden: yes
    type: string
    sql: ${TABLE}.MinimizeUse ;;
  }

  dimension: accessible_only {
    hidden: yes
    type: string
    sql: ${TABLE}.AccessibleOnly ;;
  }

  dimension: view_options {
    hidden: yes
    type: string
    sql: ${TABLE}.ViewOptions ;;
  }

  dimension: report_options {
    hidden: yes
    type: string
    sql: ${TABLE}.ReportOptions ;;
  }

  dimension: smart_cursor_color {
    hidden: yes
    type: number
    sql: ${TABLE}.SmartCursorColor ;;
  }

  dimension: accent_color1 {
    hidden: yes
    type: number
    sql: ${TABLE}.AccentColor1 ;;
  }

  dimension: use_color_grad {
    hidden: yes
    type: string
    sql: ${TABLE}.UseColorGrad ;;
  }

  dimension: form_color1 {
    hidden: yes
    type: number
    sql: ${TABLE}.FormColor1 ;;
  }

  dimension: form_color2 {
    hidden: yes
    type: number
    sql: ${TABLE}.FormColor2 ;;
  }

  dimension: grad_direction {
    hidden: yes
    type: number
    sql: ${TABLE}.GradDirection ;;
  }

  dimension: unique_attch_id {
    hidden: yes
    type: string
    sql: ${TABLE}.UniqueAttchID ;;
  }

  dimension: menu_admin {
    hidden: yes
    type: string
    sql: ${TABLE}.MenuAdmin ;;
  }

  dimension: accent_color2 {
    hidden: yes
    type: number
    sql: ${TABLE}.AccentColor2 ;;
  }

  dimension: req_field_color {
    hidden: yes
    type: number
    sql: ${TABLE}.ReqFieldColor ;;
  }

  dimension: icon_size {
    hidden: yes
    type: number
    sql: ${TABLE}.IconSize ;;
  }

  dimension: font_size {
    hidden: yes
    type: number
    sql: ${TABLE}.FontSize ;;
  }

  dimension: form_admin {
    hidden: yes
    type: string
    sql: ${TABLE}.FormAdmin ;;
  }

  dimension: multi_form_instance {
    hidden: yes
    type: string
    sql: ${TABLE}.MultiFormInstance ;;
  }

  dimension: pay_category {
    hidden: yes
    type: number
    sql: ${TABLE}.PayCategory ;;
  }

  dimension: hide_mod_folders {
    hidden: yes
    type: string
    sql: ${TABLE}.HideModFolders ;;
  }

  dimension: folder_size {
    hidden: yes
    type: number
    sql: ${TABLE}.FolderSize ;;
  }

  dimension: job {
    hidden: yes
    type: string
    sql: ${TABLE}.Job ;;
  }

  dimension: contract {
    hidden: yes
    type: string
    sql: ${TABLE}.Contract ;;
  }

  dimension: menu_info {
    hidden: yes
    type: number
    sql: ${TABLE}.MenuInfo ;;
  }

  dimension: last_report_id {
    hidden: yes
    type: number
    sql: ${TABLE}.LastReportID ;;
  }

  dimension: color_scheme_id {
    hidden: yes
    type: number
    sql: ${TABLE}.ColorSchemeID ;;
  }

  dimension: mapping_id {
    hidden: yes
    type: number
    sql: ${TABLE}.MappingID ;;
  }

  dimension: import_id {
    hidden: yes
    type: string
    sql: ${TABLE}.ImportId ;;
  }

  dimension: import_template {
    hidden: yes
    type: string
    sql: ${TABLE}.ImportTemplate ;;
  }

  dimension: jbtmbill_mth {
    hidden: yes
    type: string
    sql: ${TABLE}.JBTMBillMth ;;
  }

  dimension: jbtmbill_number {
    hidden: yes
    type: number
    sql: ${TABLE}.JBTMBillNumber ;;
  }

  dimension: pmtemplate {
    hidden: yes
    type: string
    sql: ${TABLE}.PMTemplate ;;
  }

  dimension: merge_grid_keys {
    hidden: yes
    type: string
    sql: ${TABLE}.MergeGridKeys ;;
  }

  dimension: max_lookup_rows {
    hidden: yes
    type: number
    sql: ${TABLE}.MaxLookupRows ;;
  }

  dimension: pmview_name {
    hidden: yes
    type: string
    sql: ${TABLE}.PMViewName ;;
  }

  dimension: default_color_scheme_id {
    hidden: yes
    type: number
    sql: ${TABLE}.DefaultColorSchemeID ;;
  }

  dimension: alt_grid_row_colors {
    hidden: yes
    type: string
    sql: ${TABLE}.AltGridRowColors ;;
  }

  dimension: hrco {
    hidden: yes
    type: number
    sql: ${TABLE}.HRCo ;;
  }

  dimension: hrref {
    hidden: yes
    type: number
    sql: ${TABLE}.HRRef ;;
  }

  dimension: default_dest_type {
    hidden: yes
    type: string
    sql: ${TABLE}.DefaultDestType ;;
  }

  dimension: windows_user_name {
    hidden: yes
    type: string
    sql: ${TABLE}.WindowsUserName ;;
  }

  dimension: selected_template {
    hidden: yes
    type: string
    sql: ${TABLE}.SelectedTemplate ;;
  }

  dimension: rqenty_header_id {
    hidden: yes
    type: string
    sql: ${TABLE}.RQEntyHeaderID ;;
  }

  dimension: prco {
    hidden: yes
    type: number
    sql: ${TABLE}.PRCo ;;
  }

  dimension: employee {
    hidden: yes
    type: number
    sql: ${TABLE}.Employee ;;
  }

  dimension: my_timesheet_role {
    hidden: yes
    type: number
    sql: ${TABLE}.MyTimesheetRole ;;
  }

  dimension: rqquote_edit_header_id {
    hidden: yes
    type: string
    sql: ${TABLE}.RQQuoteEditHeaderID ;;
  }

  dimension: is_help_up_to_date {
    hidden: yes
    type: string
    sql: ${TABLE}.IsHelpUpToDate ;;
  }

  dimension: attachment_grouping {
    hidden: yes
    type: string
    sql: ${TABLE}.AttachmentGrouping ;;
  }

  dimension: label_background_color {
    hidden: yes
    type: number
    sql: ${TABLE}.LabelBackgroundColor ;;
  }

  dimension: label_text_color {
    hidden: yes
    type: number
    sql: ${TABLE}.LabelTextColor ;;
  }

  dimension: label_border_style {
    hidden: yes
    type: number
    sql: ${TABLE}.LabelBorderStyle ;;
  }

  dimension: show_logo_panel {
    hidden: yes
    type: string
    sql: ${TABLE}.ShowLogoPanel ;;
  }

  dimension: show_main_toolbar {
    hidden: yes
    type: string
    sql: ${TABLE}.ShowMainToolbar ;;
  }

  dimension: user_type {
    hidden: yes
    type: number
    sql: ${TABLE}.UserType ;;
  }

  dimension: save_last_used_parameters {
    hidden: yes
    type: string
    sql: ${TABLE}.SaveLastUsedParameters ;;
  }

  dimension: report_viewer_options {
    hidden: yes
    type: number
    sql: ${TABLE}.ReportViewerOptions ;;
  }

  dimension: thumbnail_max_count {
    hidden: yes
    type: number
    sql: ${TABLE}.ThumbnailMaxCount ;;
  }

  dimension: four_projects_user_name {
    hidden: yes
    type: string
    sql: ${TABLE}.FourProjectsUserName ;;
  }

  dimension: four_projects_password {
    hidden: yes
    type: string
    sql: ${TABLE}.FourProjectsPassword ;;
  }

  dimension: send_via_smtp {
    hidden: yes
    type: string
    sql: ${TABLE}.SendViaSmtp ;;
  }

  dimension: ud_project_admin_yn {
    hidden: yes
    type: string
    sql: ${TABLE}.udProjectAdminYN ;;
  }

  dimension: pmerror_correction_subcontracts {
    hidden: yes
    type: string
    sql: ${TABLE}.PMErrorCorrectionSubcontracts ;;
  }

  dimension: pmerror_correction_subcontract_cos {
    hidden: yes
    type: string
    sql: ${TABLE}.PMErrorCorrectionSubcontractCOs ;;
  }

  dimension: pmerror_correction_purchase_orders {
    hidden: yes
    type: string
    sql: ${TABLE}.PMErrorCorrectionPurchaseOrders ;;
  }

  dimension: pmerror_correction_purchase_order_cos {
    hidden: yes
    type: string
    sql: ${TABLE}.PMErrorCorrectionPurchaseOrderCOs ;;
  }

  dimension: deactivated_date {
    hidden: yes
    type: string
    sql: ${TABLE}.DeactivatedDate ;;
  }

  dimension: auto_log_out_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.AutoLogOutFlag ;;
  }

  dimension: ud_controller_yn {
    hidden: yes
    type: string
    sql: ${TABLE}.udControllerYN ;;
  }

  dimension: ud_payroll_personnel {
    hidden: yes
    type: string
    sql: ${TABLE}.udPayrollPersonnel ;;
  }

  dimension: csallow_doc_edit {
    hidden: yes
    type: string
    sql: ${TABLE}.CSAllowDocEdit ;;
  }

  dimension: csselect_all_attachments {
    hidden: yes
    type: string
    sql: ${TABLE}.CSSelectAllAttachments ;;
  }

  dimension: lookup_column_auto_size {
    hidden: yes
    type: string
    sql: ${TABLE}.LookupColumnAutoSize ;;
  }

  dimension: allow_external_login {
    hidden: yes
    type: string
    sql: ${TABLE}.AllowExternalLogin ;;
  }

  dimension: login_fail_count {
    hidden: yes
    type: number
    sql: ${TABLE}.LoginFailCount ;;
  }

  dimension_group: lockout_date_time {
    hidden: yes
    type: time
    sql: ${TABLE}.LockoutDateTime ;;
  }

  dimension: ud_auto_apreports {
    hidden: yes
    type: string
    sql: ${TABLE}.udAutoAPReports ;;
  }

  dimension: attachment_lister_style {
    hidden: yes
    type: number
    sql: ${TABLE}.AttachmentListerStyle ;;
  }

  dimension: show_unsaved_changes_on_startup {
    hidden: yes
    type: string
    sql: ${TABLE}.ShowUnsavedChangesOnStartup ;;
  }

  dimension: page_size {
    hidden: yes
    type: number
    sql: ${TABLE}.PageSize ;;
  }

  dimension: disallow_self_security_yn {
    hidden: yes
    type: string
    sql: ${TABLE}.DisallowSelfSecurityYN ;;
  }

  dimension: suppress_max_warning_rows {
    hidden: yes
    type: string
    sql: ${TABLE}.SuppressMaxWarningRows ;;
  }

  dimension: enable_shared_search {
    hidden: yes
    type: string
    sql: ${TABLE}.EnableSharedSearch ;;
  }

  dimension: aatrix_install_location {
    hidden: yes
    type: string
    sql: ${TABLE}.AatrixInstallLocation ;;
  }

  dimension: expiry_date {
    hidden: yes
    type: string
    sql: ${TABLE}.ExpiryDate ;;
  }

  dimension: user_account_type_id {
    hidden: yes
    type: number
    sql: ${TABLE}.UserAccountTypeID ;;
  }

  dimension: allow_view_app_log {
    hidden: yes
    type: string
    sql: ${TABLE}.AllowViewAppLog ;;
  }

  dimension: user_name {
    hidden: yes
    type: string
    sql: ${TABLE}.UserName ;;
  }

  dimension: user_id {
    hidden: yes
    type: number
    sql: ${TABLE}.UserID ;;
  }

  dimension: pid {
    hidden: yes
    type: string
    sql: ${TABLE}.PID ;;
  }

  dimension: sid {
    hidden: yes
    type: string
    sql: ${TABLE}.SID ;;
  }

  dimension_group: last_pidchange {
    hidden: yes
    type: time
    sql: ${TABLE}.LastPIDChange ;;
  }

  dimension: first_name {
    hidden: yes
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: middle_name {
    hidden: yes
    type: string
    sql: ${TABLE}.MiddleName ;;
  }

  dimension: last_name {
    hidden: yes
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension_group: last_login {
    hidden: yes
    type: time
    sql: ${TABLE}.LastLogin ;;
  }

  dimension: expr1 {
    hidden: yes
    type: number
    sql: ${TABLE}.Expr1 ;;
  }

  dimension: premployee {
    hidden: yes
    type: number
    sql: ${TABLE}.PREmployee ;;
  }

  dimension: expr2 {
    hidden: yes
    type: number
    sql: ${TABLE}.Expr2 ;;
  }

  dimension: expr3 {
    hidden: yes
    type: number
    sql: ${TABLE}.Expr3 ;;
  }

  dimension: vendor_group {
    hidden: yes
    type: number
    sql: ${TABLE}.VendorGroup ;;
  }

  dimension: vendor {
    hidden: yes
    type: number
    sql: ${TABLE}.Vendor ;;
  }

  dimension: cust_group {
    hidden: yes
    type: number
    sql: ${TABLE}.CustGroup ;;
  }

  dimension: customer {
    hidden: yes
    type: number
    sql: ${TABLE}.Customer ;;
  }

  dimension: firm_number {
    hidden: yes
    type: number
    sql: ${TABLE}.FirmNumber ;;
  }

  dimension: contact {
    hidden: yes
    type: number
    sql: ${TABLE}.Contact ;;
  }

  dimension: default_site_id {
    hidden: yes
    type: number
    sql: ${TABLE}.DefaultSiteID ;;
  }

  dimension: expr4 {
    hidden: yes
    type: string
    sql: ${TABLE}.Expr4 ;;
  }

  dimension: administer_portal {
    hidden: yes
    type: number
    sql: ${TABLE}.AdministerPortal ;;
  }

  dimension: role_id {
    hidden: yes
    type: number
    sql: ${TABLE}.RoleID ;;
  }

  dimension_group: load_date_ddup {
    hidden: yes
    type: time
    sql: ${TABLE}.LoadDate_DDUP ;;
  }

  dimension: load_id_ddup {
    hidden: yes
    type: number
    sql: ${TABLE}.LoadID_DDUP ;;
  }

  dimension_group: load_date_p_users {
    hidden: yes
    type: time
    sql: ${TABLE}.LoadDate_pUsers ;;
  }

  dimension: load_id_p_users {
    hidden: yes
    type: number
    sql: ${TABLE}.LoadID_pUsers ;;
  }

  dimension_group: load_date_p_usersites {
    hidden: yes
    type: time
    sql: ${TABLE}.LoadDate_pUsersites ;;
  }

  dimension: load_id_p_usersites {
    hidden: yes
    type: number
    sql: ${TABLE}.LoadID_pUsersites ;;
  }

}
