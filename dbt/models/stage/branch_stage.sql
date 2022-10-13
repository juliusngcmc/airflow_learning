{{ config(
    schema='stage'
) }}

{% set yaml_metadata %}
source_model: "branch_pre_stage"
derived_columns:
    EFFECTIVE_FROM: "_FIVETRAN_START"
    START_DATE: "_FIVETRAN_START"
    END_DATE: "_FIVETRAN_END"
hashed_columns:
    BRANCH_PK: "ID"
    BRANCH_HASHDIFF:
        is_hashdiff: true
        columns:
            - ID
            - EQ_PRAC_CODE
            - APPOINTMENT_LABEL_PRINT_DIALOG
            - PATIENT_STATEMENT_STANDARD_TEXT
            - USE_CR_SURFACING
            - JJ_HOST
            - DEFAULT_APPOINTMENT_CARD
            - SHAMIR_PATH
            - CONT_RX_EMAIL_STANDARD_TEXT
            - EP_EMAIL_SUBJECT
            - ROUND_SUNGLASS_AMOUNT
            - ESSILOR_ESSTRACE_PATH
            - QUOTE_STANDARD_TEXT
            - ESSILOR_WINLINX_PATH
            - ABN
            - PHONE
            - ROUND_CONTLENS_TYPE
            - EP_BUDGET_FRAME_NUMBER
            - ZEISS_RXCONNECT_DEFAULT_LAB
            - ROUND_SPECFRAME_TYPE
            - SPECTACLE_DESCRIPTION_PRINT
            - USE_HASTINGS_OPTICAL_SUPPLIES
            - USE_SHAMIR_SOLS
            - PAYEE_PROVIDER_NUMBER
            - APPRO_STANDARD_TEXT
            - SHAMIR_SOLS_URL
            - EMAILNAME
            - EMAILOAUTHAUTHENDPOINT
            - DATE_EDITED
            - RECEIPT_HEADER_IMAGE
            - USE_ESSILOR_ESSILINK
            - EMAIL
            - USE_PROSUPPLY_MAGENTO
            - BANK_CON_ACCOUNTNAME
            - JJ_PASSWORD
            - ROUND_SPECLENS_TYPE
            - USER_ADDED
            - RX_REPORT_HEADER
            - TIMESTMP
            - DONT_SHOW_UPDATE_MESSAGE
            - VSP_MEMBER_NUMBER
            - BANK_ACCOUNTNAME
            - APPOINTMENT_CARD_PREVIEW
            - SMSUSERNAME
            - BUPA_WAREHOUSE
            - EMAILPASSWORD
            - DEFAULT_REFERRER_LABEL
            - PATIENT_CARD_PREVIEW
            - EMAILNOSSL
            - RECEIPT_STANDARD_TEXT
            - SMSREPORTING
            - DEFAULT_APP_DURATION
            - PSG_ACCOUNTNAME
            - MAIL_CHIMP_MULTIFORMAT
            - JJ_USERNAME
            - BANK_BSB
            - LAST_SMS_RETRIEVE
            - DEFAULT_INSTITUTION_PAYMENT_TYPE
            - ZEISS_VISUSTORE_USERNAME
            - DEFAULT_PATIENT_CARD
            - APPRO_RETURN_STANDARD_TEXT
            - GP_LABEL_PRINT_DIALOG
            - ARCOPTICAL_RXOFFICE_PATH
            - MAIL_CHIMP_DEFEMAIL
            - ECP_MEMBER_NUMBER
            - ROUND_OTHERITEM_AMOUNT
            - ARCOPTICAL_RXOFFICE_ACCOUNTNO
            - ROUND_CONTLENS_AMOUNT
            - CONTACT_LENS_TINT_DESCRIPTION_PRINT
            - ACCEPTED_EYETALK_LICENSE_DATE
            - ROUND_SUNGLASS_TYPE
            - WHITECOAT_PMS_USER_ID
            - BANK_DISP_ACCOUNTNAME
            - ONLINE_CLAIMING_PROXYPW
            - CR_SURFACING_LAB_CODE
            - BUSINESS_PROVIDER_NUMBER
            - BARCODE_DESCRIPTION_TYPE
            - USE_OPTICARE_OPTILINK
            - RODENSTOCK_PASSWORD
            - DEFAULT_PATIENT_OPTOMETRIST
            - NEXTCONTACTS_USERNAME
            - DATE_ADDED
            - ESSILOR_ESSILINK_RXORDER
            - CONTACT_ORDER_CARD_ORI
            - MARKUP_ACTUAL_BRANCH
            - INVOICE_EMAIL_STANDARD_TEXT
            - PSG_WEBSITE
            - BANK_DISP_ACCOUNTNUM
            - BAILEY_NELSON_CODE
            - BRANCH_PROVIDER_NUMBER
            - EP_NUMBER_OF_FRAME_DISPLAY
            - ADDRESS
            - ROUND_SUNGLASS
            - DEFAULT_SUPPLIER_LABEL
            - GM_TRACE_PATH
            - TYRO_MID
            - "STATE"
            - ESSILOR_ESSILINK_USERNAME
            - OPTICARE_OPTILINK_ONLINE_PASSWORD
            - REFERRER_LABEL_PRINT_DIALOG
            - BANK_CON_BSB
            - SUPPLIER_LABEL_PRINT_DIALOG
            - USE_OPTICARE_OPTILINK_ONLINE
            - CR_SURFACING_STORE_CODE
            - CR_SURFACING_TRACE_PATH
            - PROACCOUNTS_TOKEN
            - EP_BUDGET_VALUE
            - ROUND_SPECFRAME
            - VTE_STANDARD_TEXT
            - INSTITUTION_STANDARD_TEXT
            - BUPA_WAREHOUSE_EMAIL2
            - SUPPLY_FIT_CODE
            - RECEIPT_EMAIL_STANDARD_TEXT
            - EMAILOAUTHTOKENENDPOINT
            - PROSUPPLY_EMAIL
            - EMAILOAUTHCLIENTID
            - DVA_PROVIDER_NUMBER
            - CR_SURFACING_ENDPOINT
            - SMSPROXYPORT
            - USE_ESSILOR_WINLINX
            - ROUND_SPECLENS
            - POSTCODE
            - ZEISS_VISUSTORE_URL
            - CR_SURFACING_LAB_ACCOUNT_CODE
            - EULA_NAME
            - RECEIPTS_REPORT_HEADER
            - USE_PSG
            - CIBA_CUSTOMERCODE
            - CR_SURFACING_PASSWORD
            - USE_ARCOPTICAL_RXOFFICE
            - EMAILOAUTHPORT
            - ZEISS_VISUSTORE_PATH
            - JJ_PATH
            - ROUND_SPECFRAME_AMOUNT
            - INVOICE_HEADER_IMAGE
            - USE_GENOP
            - SPEC_RX_STANDARD_TEXT
            - SUNGLASS_DESCRIPTION_PRINT
            - BIGW_DEFAULT_WAREHOUSE
            - MAIL_CHIMP_REMINDTEXT
            - EMAILOAUTHCLIENTSECRET
            - REFERRER_LABEL_PREVIEW
            - SPLIT_BANKING
            - WHITECOAT_PMS_INSTANCE_ID
            - ESSILOR_LABCODE
            - EP_SIZE_OF_PRACTICE
            - EMAILINPORT
            - EQ_SHOW_ALL_BRANCHES
            - EMAILSMTP
            - APP_URL_ONLINE_BOOKING
            - ROUND_SOLUTION
            - EP_NUMBER_FULLTIME_STAFF
            - DEFAULT_GP_LABEL
            - SPECTACLE_LENS_ADDON_DESCRIPTION_PRINT
            - PREMIER_REFERENCE
            - CRSURF_RXCONNECT_DEFAULT_LAB
            - EP_EMAIL_ADDRESS
            - USE_ZEISS_VISUSTORE
            - PATIENT_CARD_PRINT_DIALOG
            - USE_PRINTER_PAPERSIZE
            - ZEISS_VISUSTORE_PASSWORD
            - CR_SURFACING_USERNAME
            - BARCODE_TYPE
            - IDENTIFIER
            - RODENSTOCK_CUSTOMERID
            - PAYEE_BUSINESS_NAME
            - ONLINE_CLAIMING_PROXYID
            - SPEC_RX_EMAIL_STANDARD_TEXT
            - BANK_CON_ACCOUNTNUM
            - REGION_IDENTIFIER
            - SMSPASSWORD
            - ROUND_SOLUTION_TYPE
            - EMAILOUTPORT
            - EP_NUMBER_FULLTIME_OPTOM
            - MAIL_CHIMP_APIKEY
            - EMAILADDRESS
            - DEFAULT_SALESREP
            - EMAILDOMAIN
            - SPECTACLE_LENS_DESCRIPTION_PRINT
            - EMAILSTARTTLS
            - USER_EDITED
            - DEFAULT_APPOINTMENT_LABEL
            - CR_SURFACING_SUPPLIER_CODE
            - EMAILUSERNAME
            - ONLINE_CLAIMING_PASSPHRASE
            - ONLINE_CLAIMING_MINORID
            - BARCODE_FOLD_TYPE
            - CIBA_USERID
            - "NAME"
            - INVOICE_RETURN_STANDARD_TEXT
            - CONT_RX_STANDARD_TEXT
            - EMAILOAUTH2
            - GP_LABEL_PREVIEW
            - SHAMIR_SOLS_PASSWORD
            - EMAILOAUTHSCOPE
            - RODENSTOCK_WINFIT_PATH
            - SMSPROXYNAME
            - GENOP_USERNAME
            - USE_ZEISS_RXCONNECT
            - RX_HEADER_IMAGE
            - CR_SURFACING_TOKEN
            - INVOICE_REPORT_HEADER
            - ONLINE_CLAIMING_WORKINGDIR
            - SPECTACLE_LENS_TINT_DESCRIPTION_PRINT
            - MAIL_CHIMP_URL
            - EMAILPOP3
            - GENOP_PASSWORD
            - USE_JJ
            - VTE_RETURN_STANDARD_TEXT
            - USE_RODENSTOCK_WINFIT
            - USE_CIBA
            - APPOINTMENT_LABEL_PREVIEW
            - SHAMIR_EMAIL
            - USE_CRSURF_RXCONNECT
            - SHAMIR_SOLS_LINKURL
            - PROVISION_MEMBER_ID
            - BIGW_WAREHOUSE
            - BARCODE_PRINT_TYPE
            - JJ_PARTNERNO
            - INVOICE_STANDARD_TEXT
            - MARKUP_AMOUNT_PERCENT
            - HOYA_PATH
            - EULA_ACCEPTED
            - ROUND_OTHERITEM
            - MWS_GUID
            - SHAMIR_SOLS_USERNAME
            - WEBSITE
            - PATIENT_LABEL_PREVIEW
            - SPECTACLE_ORDER_CARD_ORI
            - USE_SHAMIR
            - DEFAULT_PATIENT_LABEL
            - ACCEPTED_LICENSE_DATE
            - APPOINTMENT_CARD_PRINT_DIALOG
            - EP_APPOINTMENT_CAPACITY
            - ESSILOR_ESSILINK_PASSWORD
            - OPTICARE_OPTILINK_PATH
            - OPTICARE_OPTILINK_ONLINE_USERNAME
            - SUPPLIER_LABEL_PREVIEW
            - ROUND_CONTLENS
            - PATIENT_LABEL_PRINT_DIALOG
            - BANK_DISP_BSB
            - ESSILOR_ESSILINK_STOCKFITORDER
            - BANK_ACCOUNTNUM
            - ROUND_SOLUTION_AMOUNT
            - CIBA_STORECODE
            - USE_PROSUPPLY
            - WHITECOAT_PIN
            - EMAILSMTPAUTH
            - ROUND_OTHERITEM_TYPE
            - CONTACT_LENS_DESCRIPTION_PRINT
            - SUBURB
            - CIBA_PASSWORD
            - ALLOW_PRINTER_CONTROLLED_LAYOUT
            - FAX
            - CIBA_EMAIL
            - ZEISS_RXCONNECT_PATH
            - PSG_ACCOUNTID
            - ROUND_SPECLENS_AMOUNT
            - SITE_IDENTIFIER
            - NEXTCONTACTS_PASSWORD
            - CASH_SALE_STANDARD_TEXT
            - CRSURF_RXCONNECT_PATH
            - DEFAULT_BREAK
            - GEORGE_AND_MATILDA_CODE
            - MWS_MEDICARE
            - BUPA_WAREHOUSE_EMAIL
            - USE_HOYA
            - _FIVETRAN_SYNCED
            - _FIVETRAN_START
            - _FIVETRAN_END
            - _FIVETRAN_ACTIVE
            - OPERATION
            - LOAD_DATE
            - SOURCE_MODIFIED
            - ETL_BATCH_ID
            - SOURCE_SYSTEM_ID
            - ETL_LOADED
            - ETL_SOURCE
            - ETL_SOURCE_VERSION
            - EFFECTIVE_FROM

{% endset %}

{% set metadata_dict = fromyaml(yaml_metadata) %}
{% set source_model = metadata_dict['source_model'] %}
{% set derived_columns = metadata_dict['derived_columns'] %}
{% set hashed_columns = metadata_dict['hashed_columns'] %}


{{ dbtvault.stage(include_source_columns=true,
                  source_model=source_model,
                  derived_columns=derived_columns,
                  hashed_columns=hashed_columns) }}