# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20130903201456) do

  create_table "ADefWebserver_Locations", primary_key: "LocationId", force: true do |t|
    t.integer "ModuleID",                 null: false
    t.string  "LocationName", limit: 50,  null: false
    t.string  "Address",      limit: 50
    t.string  "City",         limit: 50,  null: false
    t.string  "State",        limit: 2,   null: false
    t.string  "Zip",          limit: 10
    t.float   "Latitude",     limit: 53
    t.float   "Longitude",    limit: 53
    t.string  "Phone",        limit: 50
    t.string  "Fax",          limit: 50
    t.string  "Country",      limit: 50
    t.string  "Products",     limit: 500
    t.boolean "Distributor"
    t.boolean "Retailer"
    t.boolean "Elite"
  end

  create_table "AboutUs", id: false, force: true do |t|
    t.string "ContactText",   limit: 100
    t.string "ContactNumber", limit: 50
    t.string "Comment1",      limit: 1000
    t.string "Comment2",      limit: 1000
    t.string "Comment3",      limit: 1000
    t.string "Comment4",      limit: 1000
  end

  create_table "Affiliates", primary_key: "AffiliateId", force: true do |t|
    t.integer  "VendorId"
    t.datetime "StartDate"
    t.datetime "EndDate"
    t.float    "CPC",          limit: 53, null: false
    t.integer  "Clicks",                  null: false
    t.float    "CPA",          limit: 53, null: false
    t.integer  "Acquisitions",            null: false
  end

  create_table "Announcements", primary_key: "ItemID", force: true do |t|
    t.integer  "ModuleID",                  null: false
    t.datetime "CreatedDate"
    t.string   "Title",         limit: 150
    t.string   "URL",           limit: 250
    t.datetime "ExpireDate"
    t.text     "Description"
    t.integer  "ViewOrder"
    t.integer  "CreatedByUser",             null: false
    t.datetime "PublishDate"
    t.string   "ImageSource",   limit: 250
  end

  create_table "AnonymousUsers", id: false, force: true do |t|
    t.string   "UserID",         limit: 36, null: false
    t.integer  "PortalID",                  null: false
    t.integer  "TabID",                     null: false
    t.datetime "CreationDate",              null: false
    t.datetime "LastActiveDate",            null: false
  end

  create_table "Assemblies", primary_key: "AssemblyID", force: true do |t|
    t.integer "PackageID",                null: false
    t.string  "AssemblyName", limit: 250, null: false
    t.string  "Version",      limit: 20,  null: false
  end

  create_table "Authentication", primary_key: "AuthenticationID", force: true do |t|
    t.integer  "PackageID",                        default: -1,    null: false
    t.string   "AuthenticationType",   limit: 100,                 null: false
    t.boolean  "IsEnabled",                        default: false, null: false
    t.string   "SettingsControlSrc",   limit: 250,                 null: false
    t.string   "LoginControlSrc",      limit: 250,                 null: false
    t.string   "LogoffControlSrc",     limit: 250,                 null: false
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  create_table "Banners", primary_key: "BannerId", force: true do |t|
    t.integer  "VendorId",                                  null: false
    t.string   "ImageFile",     limit: 100
    t.string   "BannerName",    limit: 100,                 null: false
    t.integer  "Impressions",                               null: false
    t.float    "CPM",           limit: 53,                  null: false
    t.integer  "Views",                      default: 0,    null: false
    t.integer  "ClickThroughs",              default: 0,    null: false
    t.datetime "StartDate"
    t.datetime "EndDate"
    t.string   "CreatedByUser", limit: 100,                 null: false
    t.datetime "CreatedDate",                               null: false
    t.integer  "BannerTypeId"
    t.string   "Description",   limit: 2000
    t.string   "GroupName",     limit: 100
    t.boolean  "Criteria",                   default: true, null: false
    t.string   "URL"
    t.integer  "Width",                      default: 0,    null: false
    t.integer  "Height",                     default: 0,    null: false
  end

  create_table "C5SLLC_Form", primary_key: "FormID", force: true do |t|
    t.integer  "PortalID",                                          null: false
    t.integer  "ModuleID",                                          null: false
    t.string   "FormName",             limit: 100,                  null: false
    t.integer  "EmailFromAction",      limit: 1,    default: 1,     null: false
    t.string   "FromAddress",          limit: 100,                  null: false
    t.string   "EmailSendFromControl", limit: 50,   default: "1"
    t.string   "BccAddress",           limit: 100
    t.integer  "EmailSendAction",      limit: 1,                    null: false
    t.string   "EmailSendTo",          limit: 2000
    t.string   "EmailSendToControl",   limit: 50
    t.boolean  "SaveData",                          default: false, null: false
    t.integer  "TableColumns",         limit: 1,    default: 1,     null: false
    t.integer  "TableRows",            limit: 1,    default: 1,     null: false
    t.string   "TableClass",           limit: 30
    t.integer  "LabelPosition",        limit: 1,                    null: false
    t.text     "FormDefinition",                                    null: false
    t.integer  "CreatedByID",                                       null: false
    t.datetime "CreatedDate",                                       null: false
    t.integer  "LastModifiedByID",                                  null: false
    t.datetime "LastModifiedDate",                                  null: false
    t.boolean  "ShowCCMe",                          default: false, null: false
    t.string   "EmailCCMeControl",     limit: 50,   default: "",    null: false
    t.string   "ConnectionString",     limit: 500
    t.string   "FormQuery",            limit: 4000
    t.boolean  "UseCaptcha"
    t.string   "CaptchaCharacters",    limit: 50
  end

  create_table "C5SLLC_FormData", primary_key: "FormDataID", force: true do |t|
    t.integer  "FormID",           null: false
    t.integer  "PortalID",         null: false
    t.integer  "ModuleID",         null: false
    t.text     "FormData",         null: false
    t.integer  "CreatedByID",      null: false
    t.datetime "CreatedDate",      null: false
    t.integer  "LastModifiedByID", null: false
    t.datetime "LastModifiedDate", null: false
  end

  create_table "C5SLLC_FormFileData", primary_key: "FileDataId", force: true do |t|
    t.integer  "FormDataId"
    t.integer  "PortalId",                     null: false
    t.integer  "ModuleId",                     null: false
    t.string   "ControlId",        limit: 50,  null: false
    t.string   "ContentType",      limit: 50,  null: false
    t.integer  "ContentLegth",                 null: false
    t.string   "FilePath",         limit: 300, null: false
    t.string   "OrigFileName",     limit: 200, null: false
    t.string   "FileName",         limit: 200, null: false
    t.boolean  "InDB",                         null: false
    t.binary   "FileData"
    t.integer  "CreatedByID",                  null: false
    t.datetime "CreatedDate",                  null: false
    t.integer  "LastModifiedByID",             null: false
    t.datetime "LastModifiedDate",             null: false
  end

  create_table "Classification", primary_key: "ClassificationId", force: true do |t|
    t.string  "ClassificationName", limit: 200, null: false
    t.integer "ParentId"
  end

  create_table "ContentItems", primary_key: "ContentItemID", force: true do |t|
    t.text     "Content"
    t.integer  "ContentTypeID",                                    null: false
    t.integer  "TabID",                                            null: false
    t.integer  "ModuleID",                                         null: false
    t.string   "ContentKey",           limit: 250
    t.boolean  "Indexed",                          default: false, null: false
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  create_table "ContentItems_MetaData", primary_key: "ContentItemMetaDataID", force: true do |t|
    t.integer "ContentItemID", null: false
    t.integer "MetaDataID",    null: false
    t.text    "MetaDataValue"
  end

  create_table "ContentItems_Tags", primary_key: "ContentItemTagID", force: true do |t|
    t.integer "ContentItemID", null: false
    t.integer "TermID",        null: false
  end

  create_table "ContentTypes", primary_key: "ContentTypeID", force: true do |t|
    t.string "ContentType", limit: 100, null: false
  end

  create_table "CoreMessaging_MessageAttachments", primary_key: "MessageAttachmentID", force: true do |t|
    t.integer  "MessageID",            null: false
    t.integer  "FileID"
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  create_table "CoreMessaging_MessageRecipients", primary_key: "RecipientID", force: true do |t|
    t.integer  "MessageID",                                          null: false
    t.integer  "UserID",                                             null: false
    t.boolean  "Read",                               default: false, null: false
    t.boolean  "Archived",                           default: false, null: false
    t.boolean  "EmailSent",                          default: false, null: false
    t.datetime "EmailSentDate"
    t.string   "EmailSchedulerInstance", limit: nil
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  create_table "CoreMessaging_Messages", primary_key: "MessageID", force: true do |t|
    t.integer  "PortalID"
    t.integer  "NotificationTypeID"
    t.string   "To",                   limit: 2000
    t.string   "From",                 limit: 200
    t.string   "Subject",              limit: 400
    t.text     "Body"
    t.integer  "ConversationID"
    t.boolean  "ReplyAllAllowed"
    t.integer  "SenderUserID"
    t.datetime "ExpirationDate"
    t.string   "Context",              limit: 200
    t.boolean  "IncludeDismissAction"
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  create_table "CoreMessaging_NotificationTypeActions", primary_key: "NotificationTypeActionID", force: true do |t|
    t.integer  "NotificationTypeID",                 null: false
    t.string   "NameResourceKey",        limit: 100, null: false
    t.string   "DescriptionResourceKey", limit: 100
    t.string   "ConfirmResourceKey",     limit: 100
    t.integer  "Order",                              null: false
    t.string   "APICall",                limit: 500, null: false
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  create_table "CoreMessaging_NotificationTypes", primary_key: "NotificationTypeID", force: true do |t|
    t.string   "Name",                 limit: 100,  null: false
    t.string   "Description",          limit: 2000
    t.integer  "TTL"
    t.integer  "DesktopModuleID"
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  create_table "Countries", primary_key: "CountryID", force: true do |t|
    t.string "countryName", limit: 250, null: false
    t.string "countryCode", limit: 10,  null: false
  end

  create_table "DSCustRep", primary_key: "DSRepId", force: true do |t|
    t.string "Email",      limit: 50
    t.string "Name",       limit: 50
    t.string "CustomerNo", limit: 50
  end

  create_table "DSUser", primary_key: "DSUserId", force: true do |t|
    t.string   "Name",          limit: 50
    t.string   "Company",       limit: 50
    t.string   "CustomerNo",    limit: 50
    t.string   "ZipCode",       limit: 50
    t.string   "Phone",         limit: 50
    t.string   "Email",         limit: 50
    t.datetime "DateCreated"
    t.integer  "CustomerRepId"
    t.boolean  "CSRApproved"
    t.datetime "CSRDate"
    t.boolean  "ITApproved"
    t.datetime "ITDate"
    t.string   "UserName",      limit: 50
    t.string   "Password",      limit: 50
  end

  create_table "Dashboard_Controls", primary_key: "DashboardControlID", force: true do |t|
    t.string  "DashboardControlKey",            limit: 50,               null: false
    t.boolean "IsEnabled",                                               null: false
    t.string  "DashboardControlSrc",            limit: 250,              null: false
    t.string  "DashboardControlLocalResources", limit: 250,              null: false
    t.string  "ControllerClass",                limit: 250
    t.integer "ViewOrder",                                  default: 0,  null: false
    t.integer "PackageID",                                  default: -1, null: false
  end

  create_table "DesktopModulePermission", primary_key: "DesktopModulePermissionID", force: true do |t|
    t.integer  "PortalDesktopModuleID", null: false
    t.integer  "PermissionID",          null: false
    t.boolean  "AllowAccess",           null: false
    t.integer  "RoleID"
    t.integer  "UserID"
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  add_index "DesktopModulePermission", ["PortalDesktopModuleID", "PermissionID", "RoleID", "UserID"], name: "IX_DesktopModulePermission", unique: true

  create_table "DesktopModules", primary_key: "DesktopModuleID", force: true do |t|
    t.string   "FriendlyName",            limit: 128,               null: false
    t.string   "Description",             limit: 2000
    t.string   "Version",                 limit: 8
    t.boolean  "IsPremium",                                         null: false
    t.boolean  "IsAdmin",                                           null: false
    t.string   "BusinessControllerClass", limit: 200
    t.string   "FolderName",              limit: 128,               null: false
    t.string   "ModuleName",              limit: 128,               null: false
    t.integer  "SupportedFeatures",                    default: 0,  null: false
    t.string   "CompatibleVersions",      limit: 500
    t.string   "Dependencies",            limit: 400
    t.string   "Permissions",             limit: 400
    t.integer  "PackageID",                            default: -1, null: false
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
    t.integer  "ContentItemId",                        default: -1, null: false
  end

  add_index "DesktopModules", ["ModuleName"], name: "IX_DesktopModules_ModuleName", unique: true

  create_table "DnnForge_SimpleGallery_Album", primary_key: "AlbumID", force: true do |t|
    t.integer  "ModuleID",                                   null: false
    t.string   "Caption",                                    null: false
    t.boolean  "IsPublic",                   default: false, null: false
    t.string   "HomeDirectory",                              null: false
    t.integer  "ParentAlbumID",              default: -1,    null: false
    t.string   "Password",      limit: 50
    t.integer  "AlbumOrder",                 default: 0,     null: false
    t.string   "Description",   limit: 2000
    t.datetime "CreateDate"
  end

  create_table "DnnForge_SimpleGallery_Photo", primary_key: "PhotoID", force: true do |t|
    t.integer  "ModuleID",                                 null: false
    t.string   "Name",         limit: 100,                 null: false
    t.string   "FileName",                                 null: false
    t.datetime "DateCreated",                              null: false
    t.integer  "Width",                                    null: false
    t.integer  "Height",                                   null: false
    t.integer  "AlbumID"
    t.boolean  "IsDefault",                default: false, null: false
    t.integer  "AuthorID"
    t.integer  "ApproverID"
    t.boolean  "IsApproved",               default: true,  null: false
    t.datetime "DateApproved"
    t.datetime "DateUpdated"
    t.text     "Description"
    t.string   "BatchID",      limit: 50
  end

  create_table "DnnForge_SimpleGallery_PhotoTag", id: false, force: true do |t|
    t.integer "PhotoID", null: false
    t.integer "TagID",   null: false
  end

  create_table "DnnForge_SimpleGallery_Tag", primary_key: "TagID", force: true do |t|
    t.integer "ModuleID",                           null: false
    t.string  "Name",        limit: 50,             null: false
    t.string  "NameLowered", limit: 50,             null: false
    t.integer "Usages",                 default: 0, null: false
  end

  create_table "DnnForge_SimpleGallery_Template", primary_key: "TemplateID", force: true do |t|
    t.integer "ModuleID", null: false
    t.string  "Name",     null: false
    t.text    "Template", null: false
  end

  create_table "Documents", primary_key: "ItemID", force: true do |t|
    t.integer  "ModuleID",                     null: false
    t.datetime "CreatedDate"
    t.string   "URL",              limit: 250
    t.string   "Title",            limit: 150
    t.string   "Category",         limit: 50
    t.integer  "CreatedByUserID"
    t.integer  "OwnedByUserID"
    t.integer  "ModifiedByUserID"
    t.datetime "ModifiedDate"
    t.integer  "SortOrderIndex"
    t.string   "Description"
  end

  create_table "DocumentsSettings", id: false, force: true do |t|
    t.integer "ModuleID",                        null: false
    t.boolean "ShowTitleLink"
    t.string  "SortOrder",          limit: 2000
    t.string  "DisplayColumns",     limit: 2000
    t.boolean "UseCategoriesList"
    t.string  "DefaultFolder",      limit: 2000
    t.string  "CategoriesListName", limit: 50
    t.boolean "AllowUserSort"
  end

  create_table "DynamicRegistration_BlackList", id: false, force: true do |t|
    t.string  "DynamicBlackListID", limit: nil,               null: false
    t.string  "BlackListResponse",  limit: 1000, default: "", null: false
    t.integer "ModuleID",                        default: 0,  null: false
    t.integer "InActive",                        default: 0,  null: false
  end

  create_table "DynamicRegistration_DynamicEventPaymentStatus", id: false, force: true do |t|
    t.string  "EventPaymentStatusID", limit: nil,  null: false
    t.string  "DynamicEventID",       limit: nil
    t.string  "PaymentStatus",        limit: 1000
    t.integer "ExecuteEvent"
    t.integer "ModuleID"
  end

  create_table "DynamicRegistration_DynamicQuestionEvent", id: false, force: true do |t|
    t.string  "DynamicQuestionEventID",    limit: nil, null: false
    t.string  "EventName",                 limit: 200
    t.string  "DynamicPostbackQuestionID", limit: nil
    t.string  "DynamicAffectedQuestionID", limit: nil
    t.integer "QuestionEventType",                     null: false
    t.string  "PostbackValue",             limit: 200
    t.string  "AffectedDefaultValue",      limit: 200
    t.integer "InActive",                              null: false
  end

  create_table "DynamicRegistration_Events", id: false, force: true do |t|
    t.string  "DynamicEventID",       limit: nil,               null: false
    t.string  "EventName",            limit: 200
    t.string  "EventType",            limit: 50
    t.string  "DynamicQuestionID",    limit: nil
    t.string  "DynamicResponse",      limit: 500
    t.integer "DNNRole"
    t.string  "DynamicRedirection",   limit: 300,  default: ""
    t.string  "DynamicSQL",           limit: 8000
    t.text    "DynamicEmailMessage"
    t.string  "DynamicEmailTo",       limit: 300
    t.string  "DynamicEmailSubject",  limit: 500
    t.integer "ModuleID",                                       null: false
    t.integer "PortalID",                                       null: false
    t.integer "InActive",                                       null: false
    t.integer "FireEventParameter",                default: 0
    t.string  "DynamicEmailFrom",     limit: 300
    t.string  "DynamicEmailCC",       limit: 600
    t.string  "DynamicEmailBCC",      limit: 600
    t.string  "FileAttachment",       limit: 800
    t.string  "DynamicEmailPriority", limit: 20
  end

  create_table "DynamicRegistration_FormLocalization", id: false, force: true do |t|
    t.string  "DynamicRegistrationLocalizationID", limit: nil,              null: false
    t.string  "LocalizationLanguage",              limit: 200
    t.string  "FormHeader",                        limit: 4000
    t.string  "FormFooter",                        limit: 4000
    t.string  "DisplayAfterMessage",               limit: 4000
    t.integer "UseRegisterButton",                              default: 0
    t.string  "RegisterText",                      limit: 200
    t.string  "RegisterImage",                     limit: 500
    t.integer "UseUpdateButton"
    t.string  "UpdateText",                        limit: 200
    t.string  "UpdateImage",                       limit: 500
    t.integer "UseCancelButton"
    t.string  "CancelText",                        limit: 200
    t.string  "CancelImage",                       limit: 500
    t.integer "UseContinueButton"
    t.string  "ContinueText",                      limit: 200
    t.string  "ContinueImage",                     limit: 500
    t.integer "ModuleID"
    t.text    "ValidationErrorMessage"
    t.text    "DuplicateEmailText"
  end

  create_table "DynamicRegistration_PayPalUserID", id: false, force: true do |t|
    t.string  "PayPalUserID",   limit: nil, null: false
    t.string  "PayPalReturnID", limit: nil
    t.integer "UserID"
  end

  create_table "DynamicRegistration_Question", id: false, force: true do |t|
    t.string  "DynamicQuestionID",          limit: nil,               null: false
    t.string  "Question",                   limit: 4000, default: "", null: false
    t.string  "HelpText"
    t.string  "QuestionType",               limit: 50,   default: ""
    t.string  "OptionType",                 limit: 50,   default: ""
    t.integer "IsRequired",                              default: 0
    t.integer "UserViewable",                            default: 0
    t.integer "DNNField",                                default: 0
    t.integer "PortalID",                                default: 0
    t.integer "SortOrder",                               default: 0
    t.integer "InActive",                                default: 0
    t.integer "ModuleID",                                default: 0,  null: false
    t.string  "ExampleText",                             default: "", null: false
    t.string  "RequiredFieldText",                       default: "", null: false
    t.string  "DefaultValue",                            default: "", null: false
    t.string  "ShortFieldName",                          default: "", null: false
    t.integer "MaxLength",                               default: 50
    t.integer "UseSQL",                                  default: 0
    t.string  "SQLText",                    limit: 8000, default: ""
    t.string  "JavaValidation",             limit: 800,  default: "", null: false
    t.integer "IsReadOnly",                              default: 0,  null: false
    t.integer "IsHidden",                                default: 0,  null: false
    t.integer "TextboxLength",                           default: 30, null: false
    t.integer "PullInQuery",                             default: 0,  null: false
    t.integer "PushToQuery",                             default: 0,  null: false
    t.integer "PullInSession",                           default: 0,  null: false
    t.integer "PushToSession",                           default: 0,  null: false
    t.string  "OptionType2",                limit: 100,  default: ""
    t.string  "QuestionHeader",             limit: 3000
    t.string  "QuestionFooter",             limit: 3000
    t.string  "RegularExpression",          limit: 300
    t.string  "RegularExpressionText",      limit: 300
    t.integer "UseRegularExpression"
    t.integer "HiddenUntilEvent"
    t.string  "RequiredFieldError",         limit: 300
    t.string  "CompareValidatorQuestionID", limit: nil
    t.string  "CompareValidatorText",       limit: 300
    t.string  "CompareValidatorError",      limit: 300
    t.integer "IsSameLine"
    t.string  "LabelClass",                 limit: 3000
    t.string  "FieldClass",                 limit: 3000
    t.integer "FieldLabelSameLine"
    t.integer "HideFieldLabel"
    t.string  "PRofPropID",                 limit: 20
    t.integer "PushToCookie"
    t.integer "PullInCookie"
    t.integer "ColSpan"
    t.integer "RowSpan"
    t.integer "ShowHelpAsPopUpText"
    t.string  "PopUpTextWidth",             limit: 200
    t.integer "NoSave"
    t.integer "EnableSQLValidation"
    t.text    "SQLValidation"
    t.string  "SQLValidationError",         limit: 1000
  end

  create_table "DynamicRegistration_QuestionEventHiddenFields", id: false, force: true do |t|
    t.string "EventHiddenFieldID",     limit: nil, null: false
    t.string "DynamicQuestionEventID", limit: nil
    t.string "DynamicQuestionID",      limit: nil
  end

  create_table "DynamicRegistration_QuestionLocalization", id: false, force: true do |t|
    t.string  "QuestionLocalID",        limit: nil,  null: false
    t.string  "DynamicQuestionID",      limit: nil
    t.string  "LocalLanguage",          limit: 300
    t.string  "FieldLabel",             limit: 300
    t.string  "HelpText",               limit: 300
    t.string  "ExampleText",            limit: 4000
    t.string  "RequiredFieldText",      limit: 300
    t.string  "RequiredvalidationText", limit: 300
    t.string  "RegularExpression",      limit: 300
    t.string  "RegularExpressionText",  limit: 300
    t.string  "QuestionHeader",         limit: 4000
    t.string  "QuestionFooter",         limit: 4000
    t.integer "InActive"
  end

  create_table "DynamicRegistration_QuestionOption", id: false, force: true do |t|
    t.string  "DynamicQuestionOptionID", limit: nil,              null: false
    t.string  "DynamicQuestionID",       limit: nil
    t.string  "QuestionOption",          limit: 900,              null: false
    t.integer "SortOrder",                                        null: false
    t.integer "InActive",                            default: 0,  null: false
    t.string  "QuestionOptionValue",     limit: 300, default: "", null: false
  end

  create_table "DynamicRegistration_QuestionResponse", id: false, force: true do |t|
    t.string  "DynamicQuestionResponseID", limit: nil,              null: false
    t.string  "DynamicQuestionID",         limit: nil
    t.string  "Response",                  limit: 4000
    t.integer "UserID"
    t.integer "SortOrder",                              default: 0
    t.integer "InActive",                               default: 0
    t.string  "PayPalReturnID",            limit: nil
  end

  create_table "DynamicRegistration_QuestionRole", id: false, force: true do |t|
    t.string  "DynamicRegistrationQuestionRoleID", limit: nil,              null: false
    t.string  "DynamicQuestionID",                 limit: nil
    t.string  "RoleName",                          limit: 300, default: "", null: false
    t.integer "RoleID",                                        default: 0,  null: false
    t.integer "InActive",                                      default: 0,  null: false
  end

  create_table "DynamicRegistration_Wizard", id: false, force: true do |t|
    t.string  "DynamicWizardID", limit: nil, null: false
    t.string  "FieldLabel",      limit: 500
    t.string  "ShortName",       limit: 500
    t.string  "HelpText",        limit: 200
    t.string  "FieldType",       limit: 100
    t.string  "CoreIntegration", limit: 200
    t.integer "SortOrder"
    t.integer "InActive"
  end

  create_table "EthicsList", primary_key: "userid", force: true do |t|
    t.boolean "Acknowledged"
    t.string  "AckDate",      limit: 50
    t.string  "firstname",    limit: 50
    t.string  "lastname",     limit: 50
    t.string  "email",        limit: 50
    t.string  "company",      limit: 50
  end

  create_table "EventLog", primary_key: "LogEventID", force: true do |t|
    t.string   "LogGUID",                limit: 36,  null: false
    t.string   "LogTypeKey",             limit: 35,  null: false
    t.integer  "LogConfigID"
    t.integer  "LogUserID"
    t.string   "LogUserName",            limit: 50
    t.integer  "LogPortalID"
    t.string   "LogPortalName",          limit: 100
    t.datetime "LogCreateDate",                      null: false
    t.string   "LogServerName",          limit: 50,  null: false
    t.text     "LogProperties",                      null: false
    t.boolean  "LogNotificationPending"
  end

  add_index "EventLog", ["LogConfigID", "LogTypeKey", "LogCreateDate"], name: "IX_EventLog"
  add_index "EventLog", ["LogGUID"], name: "IX_EventLog_LogGUID"

  create_table "EventLogConfig", primary_key: "ID", force: true do |t|
    t.string  "LogTypeKey",                    limit: 35
    t.integer "LogTypePortalID"
    t.boolean "LoggingIsActive",                          null: false
    t.integer "KeepMostRecent",                           null: false
    t.boolean "EmailNotificationIsActive",                null: false
    t.integer "NotificationThreshold"
    t.integer "NotificationThresholdTime"
    t.integer "NotificationThresholdTimeType"
    t.string  "MailFromAddress",               limit: 50, null: false
    t.string  "MailToAddress",                 limit: 50, null: false
  end

  add_index "EventLogConfig", ["LogTypeKey", "LogTypePortalID"], name: "IX_LogTypeKey_LogTypePortalID", unique: true

  create_table "EventLogTypes", id: false, force: true do |t|
    t.string "LogTypeKey",          limit: 35,  null: false
    t.string "LogTypeFriendlyName", limit: 50,  null: false
    t.string "LogTypeDescription",  limit: 128, null: false
    t.string "LogTypeOwner",        limit: 100, null: false
    t.string "LogTypeCSSClass",     limit: 40,  null: false
  end

  create_table "EventQueue", primary_key: "EventMessageID", force: true do |t|
    t.string   "EventName",        limit: 100,                 null: false
    t.integer  "Priority",                                     null: false
    t.string   "ProcessorType",    limit: 250,                 null: false
    t.string   "ProcessorCommand", limit: 250,                 null: false
    t.string   "Body",             limit: 250,                 null: false
    t.string   "Sender",           limit: 250,                 null: false
    t.string   "Subscriber",       limit: 100,                 null: false
    t.string   "AuthorizedRoles",  limit: 250,                 null: false
    t.string   "ExceptionMessage", limit: 250,                 null: false
    t.datetime "SentDate",                                     null: false
    t.datetime "ExpirationDate",                               null: false
    t.text     "Attributes",                                   null: false
    t.boolean  "IsComplete",                   default: false, null: false
  end

  create_table "Events", primary_key: "EventID", force: true do |t|
    t.integer  "ModuleID"
    t.datetime "EventDateBegin"
    t.datetime "EventDateEnd"
    t.datetime "EventTimeBegin"
    t.integer  "Duration"
    t.string   "EventName",               limit: 100
    t.text     "EventDesc"
    t.integer  "Importance"
    t.string   "RepeatType",              limit: 10
    t.string   "Every",                   limit: 10
    t.string   "Period",                  limit: 50
    t.string   "Reminder",                limit: 100
    t.string   "Notify",                  limit: 2048
    t.string   "CreatedBy",               limit: 100
    t.datetime "CreatedDate"
    t.boolean  "Approved"
    t.integer  "PortalID"
    t.boolean  "Signups"
    t.integer  "MaxEnrollment"
    t.string   "EnrollRoleID",            limit: 50
    t.decimal  "EnrollFee"
    t.string   "EnrollType",              limit: 10
    t.string   "PayPalAccount",           limit: 100
    t.string   "PayPalPassword",          limit: 100
    t.boolean  "Cancelled"
    t.string   "ImageURL",                limit: 100
    t.string   "ImageType",               limit: 1
    t.integer  "ImageWidth"
    t.integer  "ImageHeight"
    t.boolean  "ImageDisplay"
    t.integer  "Location"
    t.integer  "Category"
    t.integer  "TimezoneOffset"
    t.boolean  "SendReminder"
    t.integer  "ReminderTime"
    t.string   "ReminderTimeMeasurement", limit: 2
    t.string   "ReminderFrom",            limit: 100
    t.boolean  "SearchSubmitted"
  end

  add_index "Events", ["EventDateEnd"], name: "IX_Events_1"
  add_index "Events", ["EventDateEnd"], name: "IX_Events_3"
  add_index "Events", ["ModuleID"], name: "IX_Events_2"

  create_table "EventsCategory", primary_key: "Category", force: true do |t|
    t.integer "PortalID",                null: false
    t.string  "CategoryName", limit: 50, null: false
    t.string  "Color",        limit: 10
  end

  add_index "EventsCategory", ["CategoryName"], name: "IX_EventsCategory"

  create_table "EventsLocation", primary_key: "Location", force: true do |t|
    t.integer "PortalID",                null: false
    t.string  "LocationName", limit: 50, null: false
    t.string  "MapURL"
  end

  add_index "EventsLocation", ["LocationName"], name: "IX_EventsLocation"

  create_table "EventsMaster", primary_key: "MasterID", force: true do |t|
    t.integer "ModuleID"
    t.integer "SubEventID"
  end

  add_index "EventsMaster", ["MasterID", "SubEventID"], name: "IX_EventsMaster", unique: true
  add_index "EventsMaster", ["ModuleID"], name: "IX_EventsMaster_1"

  create_table "EventsNotification", primary_key: "NotificationID", force: true do |t|
    t.integer  "EventID",                     null: false
    t.integer  "PortalAliasID",               null: false
    t.string   "UserEmail",        limit: 50, null: false
    t.boolean  "NotificationSent",            null: false
    t.datetime "NotifyByDateTime"
    t.datetime "EventTimeBegin"
    t.string   "NotifyLanguage",   limit: 10
  end

  add_index "EventsNotification", ["EventID", "NotifyByDateTime"], name: "IX_EventsNotification"
  add_index "EventsNotification", ["EventID", "UserEmail", "EventTimeBegin"], name: "IX_EventsNotification_2", unique: true
  add_index "EventsNotification", ["NotifyByDateTime"], name: "IX_EventsNotification_1"

  create_table "EventsPPErrorLog", primary_key: "PayPalID", force: true do |t|
    t.integer  "SignupID"
    t.datetime "CreateDate"
    t.string   "PayPalStatus",        limit: 50
    t.string   "PayPalReason",        limit: 100
    t.string   "PayPalTransID",       limit: 50
    t.string   "PayPalPayerID",       limit: 50
    t.string   "PayPalPayerStatus",   limit: 50
    t.string   "PayPalRecieverEmail", limit: 100
    t.string   "PayPalUserEmail",     limit: 100
    t.string   "PayPalPayerEmail",    limit: 100
    t.string   "PayPalFirstName",     limit: 50
    t.string   "PayPalLastName",      limit: 50
    t.string   "PayPalAddress",       limit: 100
    t.string   "PayPalCity",          limit: 50
    t.string   "PayPalState",         limit: 25
    t.string   "PayPalZip",           limit: 25
    t.string   "PayPalCountry",       limit: 25
    t.string   "PayPalCurrency",      limit: 25
    t.datetime "PayPalPaymentDate"
    t.decimal  "PayPalAmount"
    t.decimal  "PayPalFee"
  end

  add_index "EventsPPErrorLog", ["CreateDate"], name: "IX_EventsPPErrorLog"

  create_table "EventsSignups", primary_key: "SignupID", force: true do |t|
    t.integer  "ModuleID",                        null: false
    t.integer  "EventID",                         null: false
    t.integer  "UserID",                          null: false
    t.datetime "CreateDate"
    t.boolean  "Approved"
    t.string   "PayPalStatus",        limit: 50
    t.string   "PayPalReason",        limit: 100
    t.string   "PayPalTransID",       limit: 50
    t.string   "PayPalPayerID",       limit: 50
    t.string   "PayPalPayerStatus",   limit: 50
    t.string   "PayPalRecieverEmail", limit: 100
    t.string   "PayPalUserEmail",     limit: 100
    t.string   "PayPalPayerEmail",    limit: 100
    t.string   "PayPalFirstName",     limit: 50
    t.string   "PayPalLastName",      limit: 50
    t.string   "PayPalAddress",       limit: 100
    t.string   "PayPalCity",          limit: 50
    t.string   "PayPalState",         limit: 25
    t.string   "PayPalZip",           limit: 25
    t.string   "PayPalCountry",       limit: 25
    t.string   "PayPalCurrency",      limit: 25
    t.datetime "PayPalPaymentDate"
    t.decimal  "PayPalAmount"
    t.decimal  "PayPalFee"
    t.datetime "EventTimeBegin"
    t.integer  "TimezoneOffset"
  end

  add_index "EventsSignups", ["ModuleID", "EventID", "UserID", "EventTimeBegin"], name: "IX_EventsSignups", unique: true
  add_index "EventsSignups", ["PayPalTransID"], name: "IX_EventsSignups_1"

  create_table "FAQs", primary_key: "ItemID", force: true do |t|
    t.integer  "ModuleID",                              null: false
    t.string   "CreatedByUser", limit: 100
    t.datetime "CreatedDate"
    t.text     "Question"
    t.text     "Answer"
    t.integer  "CategoryId"
    t.datetime "DateModified"
    t.integer  "ViewCount",                 default: 0, null: false
  end

  add_index "FAQs", ["ModuleID"], name: "IX_FAQs"

  create_table "FAQsCategory", primary_key: "FaqCategoryId", force: true do |t|
    t.integer "ModuleId",                           null: false
    t.string  "FaqCategoryName",        limit: 100, null: false
    t.string  "FaqCategoryDescription", limit: 250, null: false
  end

  create_table "Files", primary_key: "FileId", force: true do |t|
    t.integer  "PortalId"
    t.string   "FileName",             limit: 246, null: false
    t.string   "Extension",            limit: 100, null: false
    t.integer  "Size",                             null: false
    t.integer  "Width"
    t.integer  "Height"
    t.string   "ContentType",          limit: 200, null: false
    t.string   "Folder",               limit: 246
    t.integer  "FolderID",                         null: false
    t.binary   "Content"
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
    t.string   "UniqueId",             limit: nil, null: false
    t.string   "VersionGuid",          limit: nil, null: false
    t.string   "SHA1Hash",             limit: 40
    t.datetime "LastModificationTime",             null: false
  end

  add_index "Files", ["FolderID", "FileName"], name: "IX_FileName", unique: true
  add_index "Files", ["UniqueId"], name: "IX_Files_UniqueId", unique: true

  create_table "FolderMappings", primary_key: "FolderMappingID", force: true do |t|
    t.integer  "PortalID"
    t.string   "MappingName",          limit: 50, null: false
    t.string   "FolderProviderType",   limit: 50, null: false
    t.integer  "Priority"
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  add_index "FolderMappings", ["PortalID", "MappingName"], name: "IX_FolderMappings", unique: true

  create_table "FolderMappingsSettings", id: false, force: true do |t|
    t.integer  "FolderMappingID",                   null: false
    t.string   "SettingName",          limit: 50,   null: false
    t.string   "SettingValue",         limit: 2000, null: false
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  create_table "FolderPermission", primary_key: "FolderPermissionID", force: true do |t|
    t.integer  "FolderID",             null: false
    t.integer  "PermissionID",         null: false
    t.boolean  "AllowAccess",          null: false
    t.integer  "RoleID"
    t.integer  "UserID"
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  add_index "FolderPermission", ["FolderID", "PermissionID", "RoleID", "UserID"], name: "IX_FolderPermission", unique: true

  create_table "Folders", primary_key: "FolderID", force: true do |t|
    t.integer  "PortalID"
    t.string   "FolderPath",           limit: 300,                 null: false
    t.integer  "StorageLocation",                  default: 0,     null: false
    t.boolean  "IsProtected",                      default: false, null: false
    t.boolean  "IsCached",                         default: false, null: false
    t.datetime "LastUpdated"
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
    t.string   "UniqueId",             limit: nil,                 null: false
    t.string   "VersionGuid",          limit: nil,                 null: false
    t.integer  "FolderMappingID",                                  null: false
  end

  add_index "Folders", ["PortalID", "FolderPath"], name: "IX_FolderPath", unique: true
  add_index "Folders", ["UniqueId"], name: "IX_Folders_UniqueId", unique: true

  create_table "HostSettings", id: false, force: true do |t|
    t.string   "SettingName",          limit: 50,                  null: false
    t.string   "SettingValue",         limit: 256,                 null: false
    t.boolean  "SettingIsSecure",                  default: false, null: false
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  create_table "HtmlText", primary_key: "ItemID", force: true do |t|
    t.integer  "ModuleID",             null: false
    t.text     "Content"
    t.integer  "Version"
    t.integer  "StateID"
    t.boolean  "IsPublished"
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
    t.text     "Summary"
  end

  create_table "HtmlTextLog", primary_key: "HtmlTextLogID", force: true do |t|
    t.integer  "ItemID",                       null: false
    t.integer  "StateID",                      null: false
    t.string   "Comment",         limit: 4000
    t.boolean  "Approved",                     null: false
    t.integer  "CreatedByUserID",              null: false
    t.datetime "CreatedOnDate",                null: false
  end

  create_table "HtmlTextUsers", primary_key: "HtmlTextUserID", force: true do |t|
    t.integer  "ItemID",        null: false
    t.integer  "StateID",       null: false
    t.integer  "ModuleID",      null: false
    t.integer  "TabID",         null: false
    t.integer  "UserID",        null: false
    t.datetime "CreatedOnDate", null: false
  end

  create_table "IFrame_Parameters", primary_key: "ParameterID", force: true do |t|
    t.integer "ModuleID",              null: false
    t.string  "Name",     limit: 50,   null: false
    t.string  "Type",     limit: 50,   null: false
    t.string  "Argument", limit: 2000
  end

  create_table "IndustrySegment", primary_key: "ID", force: true do |t|
    t.string "Name", limit: 15, null: false
  end

  create_table "IndustrySegmentByCategory", primary_key: "CategorySegmentId", force: true do |t|
    t.integer "CategoryId"
    t.integer "IndustrySegment"
  end

  create_table "JohnsoniteURLForMobile", id: false, force: true do |t|
    t.string "JohnsoniteURL", limit: 500
  end

  create_table "Journal", primary_key: "JournalId", force: true do |t|
    t.integer  "JournalTypeId",                           null: false
    t.integer  "UserId"
    t.datetime "DateCreated"
    t.datetime "DateUpdated"
    t.integer  "PortalId"
    t.integer  "ProfileId",                  default: -1, null: false
    t.integer  "GroupId",                    default: -1, null: false
    t.string   "Title"
    t.string   "Summary",       limit: 2000
    t.string   "ItemData",      limit: 2000
    t.string   "ImageURL"
    t.string   "ObjectKey"
    t.string   "AccessKey",     limit: nil
    t.integer  "ContentItemId"
  end

  create_table "Journal_Access", primary_key: "JournalAccessId", force: true do |t|
    t.integer  "JournalTypeId",             null: false
    t.integer  "PortalId",                  null: false
    t.string   "Name",          limit: 50,  null: false
    t.string   "AccessKey",     limit: nil, null: false
    t.boolean  "IsEnabled",                 null: false
    t.datetime "DateCreated",               null: false
  end

# Could not dump table "Journal_Comments" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

# Could not dump table "Journal_Data" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "Journal_Security", primary_key: "JournalSecurityId", force: true do |t|
    t.integer "JournalId",              null: false
    t.string  "SecurityKey", limit: 50, null: false
  end

  add_index "Journal_Security", ["JournalId", "SecurityKey"], name: "IX_Journal_Security", unique: true

  create_table "Journal_TypeFilters", primary_key: "JournalTypeFilterId", force: true do |t|
    t.integer "PortalId",      null: false
    t.integer "ModuleId",      null: false
    t.integer "JournalTypeId", null: false
  end

  create_table "Journal_Types", id: false, force: true do |t|
    t.integer "JournalTypeId",                               null: false
    t.string  "JournalType",      limit: 25
    t.string  "icon",             limit: 25
    t.integer "PortalId",                    default: -1,    null: false
    t.boolean "IsEnabled",                   default: true,  null: false
    t.boolean "AppliesToProfile",            default: true,  null: false
    t.boolean "AppliesToGroup",              default: true,  null: false
    t.boolean "AppliesToStream",             default: true,  null: false
    t.text    "Options"
    t.boolean "SupportsNotify",              default: false, null: false
    t.boolean "EnableComments",              default: true,  null: false
  end

  create_table "LE_Configuration", id: false, force: true do |t|
    t.integer "PortalId",                 limit: 2,                 null: false
    t.boolean "ExtensionsEnabled",                                  null: false
    t.boolean "ProcessLanguageParameter",           default: true,  null: false
    t.boolean "AdjustBreadcrumbs",                  default: true,  null: false
    t.boolean "ProcessLanguageTokens",              default: false, null: false
  end

  create_table "LE_CultureConfiguration", id: false, force: true do |t|
    t.integer "PortalId",                       limit: 2,  null: false
    t.string  "CultureName",                    limit: 10, null: false
    t.integer "HomeTabId"
    t.integer "LoginTabId"
    t.integer "UserTabId"
    t.integer "SplashTabId"
    t.string  "SearchResultPageTitle"
    t.string  "SearchResultModuleTitle"
    t.integer "RedirectAfterLoginTabId"
    t.integer "RedirectAfterLogoutTabId"
    t.integer "RedirectAfterRegistrationTabId"
  end

  create_table "LanguagePacks", primary_key: "LanguagePackID", force: true do |t|
    t.integer  "PackageID",            null: false
    t.integer  "DependentPackageID",   null: false
    t.integer  "LanguageID",           null: false
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  create_table "Languages", primary_key: "LanguageID", force: true do |t|
    t.string   "CultureCode",          limit: 50,  null: false
    t.string   "CultureName",          limit: 200, null: false
    t.string   "FallbackCulture",      limit: 50
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  create_table "Links", primary_key: "ItemID", force: true do |t|
    t.integer  "ModuleID",                   null: false
    t.datetime "CreatedDate"
    t.string   "Title",         limit: 100
    t.string   "Url",           limit: 250
    t.integer  "ViewOrder"
    t.string   "Description",   limit: 2000
    t.integer  "CreatedByUser",              null: false
  end

  create_table "Lists", primary_key: "EntryID", force: true do |t|
    t.string   "ListName",             limit: 50,                  null: false
    t.string   "Value",                limit: 100,                 null: false
    t.string   "Text",                 limit: 150,                 null: false
    t.integer  "ParentID",                         default: 0,     null: false
    t.integer  "Level",                            default: 0,     null: false
    t.integer  "SortOrder",                        default: 0,     null: false
    t.integer  "DefinitionID",                     default: 0,     null: false
    t.string   "Description",          limit: 500
    t.integer  "PortalID",                         default: -1,    null: false
    t.boolean  "SystemList",                       default: false, null: false
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  add_index "Lists", ["ListName", "Value", "Text", "ParentID"], name: "IX_Lists_ListName_Value_Text_ParentID", unique: true

  create_table "Locator2", primary_key: "LocationID", force: true do |t|
    t.string "Name",        limit: 500
    t.string "Address",     limit: 500
    t.string "City",        limit: 500
    t.string "State",       limit: 500
    t.string "Zip",         limit: 500
    t.string "Phone",       limit: 500
    t.string "Fax",         limit: 500
    t.string "StateServed", limit: 500
  end

  create_table "Messaging_Messages", primary_key: "MessageID", force: true do |t|
    t.integer  "PortalID",                           null: false
    t.integer  "FromUserID",                         null: false
    t.string   "ToUserName",             limit: 50
    t.string   "FromUserName",           limit: 50
    t.integer  "ToUserID"
    t.integer  "ToRoleID"
    t.integer  "Status",                 limit: 1,   null: false
    t.text     "Subject"
    t.text     "Body"
    t.datetime "Date",                               null: false
    t.string   "Conversation",           limit: nil, null: false
    t.integer  "ReplyTo",                limit: 8
    t.boolean  "AllowReply",                         null: false
    t.boolean  "SkipPortal",                         null: false
    t.boolean  "EmailSent",                          null: false
    t.datetime "EmailSentDate"
    t.string   "EmailSchedulerInstance", limit: nil
  end

  create_table "MetaData", primary_key: "MetaDataID", force: true do |t|
    t.string "MetaDataName",        limit: 100,  null: false
    t.string "MetaDataDescription", limit: 2500
  end

  create_table "Mobile_PreviewProfiles", primary_key: "Id", force: true do |t|
    t.integer  "PortalId",                                     null: false
    t.string   "Name",                 limit: 50,              null: false
    t.integer  "Width",                                        null: false
    t.integer  "Height",                                       null: false
    t.string   "UserAgent",            limit: 260,             null: false
    t.integer  "SortOrder",                        default: 0, null: false
    t.integer  "CreatedByUserID",                              null: false
    t.datetime "CreatedOnDate",                                null: false
    t.integer  "LastModifiedByUserID",                         null: false
    t.datetime "LastModifiedOnDate",                           null: false
  end

  create_table "Mobile_RedirectionRules", primary_key: "Id", force: true do |t|
    t.integer "RedirectionId",            null: false
    t.string  "Capability",    limit: 50, null: false
    t.string  "Expression",    limit: 50, null: false
  end

  create_table "Mobile_Redirections", primary_key: "Id", force: true do |t|
    t.integer  "PortalId",                                     null: false
    t.string   "Name",                 limit: 50,              null: false
    t.integer  "Type",                                         null: false
    t.integer  "SortOrder",                        default: 0, null: false
    t.integer  "SourceTabId",                                  null: false
    t.boolean  "IncludeChildTabs",                             null: false
    t.integer  "TargetType",                                   null: false
    t.string   "TargetValue",          limit: 260,             null: false
    t.boolean  "Enabled",                                      null: false
    t.integer  "CreatedByUserID",                              null: false
    t.datetime "CreatedOnDate",                                null: false
    t.integer  "LastModifiedByUserID",                         null: false
    t.datetime "LastModifiedOnDate",                           null: false
  end

  create_table "ModuleControls", primary_key: "ModuleControlID", force: true do |t|
    t.integer  "ModuleDefID"
    t.string   "ControlKey",               limit: 50
    t.string   "ControlTitle",             limit: 50
    t.string   "ControlSrc",               limit: 256
    t.string   "IconFile",                 limit: 100
    t.integer  "ControlType",                                          null: false
    t.integer  "ViewOrder"
    t.string   "HelpUrl",                  limit: 200
    t.boolean  "SupportsPartialRendering",             default: false, null: false
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
    t.boolean  "SupportsPopUps",                       default: false, null: false
  end

  add_index "ModuleControls", ["ModuleDefID", "ControlKey", "ControlSrc"], name: "IX_ModuleControls", unique: true

  create_table "ModuleDefinitions", primary_key: "ModuleDefID", force: true do |t|
    t.string   "FriendlyName",         limit: 128,             null: false
    t.integer  "DesktopModuleID",                              null: false
    t.integer  "DefaultCacheTime",                 default: 0, null: false
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  add_index "ModuleDefinitions", ["FriendlyName"], name: "IX_ModuleDefinitions", unique: true

  create_table "ModulePermission", primary_key: "ModulePermissionID", force: true do |t|
    t.integer  "ModuleID",             null: false
    t.integer  "PermissionID",         null: false
    t.boolean  "AllowAccess",          null: false
    t.integer  "RoleID"
    t.integer  "UserID"
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  add_index "ModulePermission", ["ModuleID", "PermissionID", "RoleID", "UserID"], name: "IX_ModulePermission", unique: true

  create_table "ModuleSettings", id: false, force: true do |t|
    t.integer  "ModuleID",                        null: false
    t.string   "SettingName",          limit: 50, null: false
    t.text     "SettingValue",                    null: false
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  create_table "Modules", primary_key: "ModuleID", force: true do |t|
    t.integer  "ModuleDefID",               null: false
    t.boolean  "AllTabs",                   null: false
    t.boolean  "IsDeleted",                 null: false
    t.boolean  "InheritViewPermissions"
    t.datetime "StartDate"
    t.datetime "EndDate"
    t.integer  "PortalID"
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
    t.integer  "ContentItemID"
    t.datetime "LastContentModifiedOnDate", null: false
  end

  add_index "Modules", ["ModuleDefID"], name: "IX_Modules"

  create_table "PackageTypes", id: false, force: true do |t|
    t.string  "PackageType",         limit: 100, null: false
    t.string  "Description",         limit: 500, null: false
    t.integer "SecurityAccessLevel",             null: false
    t.string  "EditorControlSrc",    limit: 250
  end

  create_table "Packages", primary_key: "PackageID", force: true do |t|
    t.integer  "PortalID"
    t.string   "Name",                 limit: 128,                  null: false
    t.string   "FriendlyName",         limit: 250,                  null: false
    t.string   "Description",          limit: 2000
    t.string   "PackageType",          limit: 100,                  null: false
    t.string   "Version",              limit: 50,                   null: false
    t.text     "License"
    t.text     "Manifest"
    t.string   "Owner",                limit: 100
    t.string   "Organization",         limit: 100
    t.string   "Url",                  limit: 250
    t.string   "Email",                limit: 100
    t.text     "ReleaseNotes"
    t.boolean  "IsSystemPackage",                   default: false, null: false
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
    t.string   "FolderName",           limit: 128
    t.string   "IconFile",             limit: 100
  end

  create_table "Permission", primary_key: "PermissionID", force: true do |t|
    t.string   "PermissionCode",       limit: 50,                null: false
    t.integer  "ModuleDefID",                                    null: false
    t.string   "PermissionKey",        limit: 50,                null: false
    t.string   "PermissionName",       limit: 50,                null: false
    t.integer  "ViewOrder",                       default: 9999, null: false
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  add_index "Permission", ["PermissionCode", "ModuleDefID", "PermissionKey"], name: "IX_Permission", unique: true

  create_table "PortalAlias", primary_key: "PortalAliasID", force: true do |t|
    t.integer  "PortalID",                         null: false
    t.string   "HTTPAlias",            limit: 200
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  add_index "PortalAlias", ["HTTPAlias"], name: "IX_PortalAlias", unique: true

  create_table "PortalDesktopModules", primary_key: "PortalDesktopModuleID", force: true do |t|
    t.integer  "PortalID",             null: false
    t.integer  "DesktopModuleID",      null: false
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  add_index "PortalDesktopModules", ["PortalID", "DesktopModuleID"], name: "IX_PortalDesktopModules", unique: true

  create_table "PortalGroups", primary_key: "PortalGroupID", force: true do |t|
    t.integer  "MasterPortalID"
    t.string   "PortalGroupName",        limit: 100
    t.string   "PortalGroupDescription", limit: 2000
    t.string   "AuthenticationDomain",   limit: 200
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  create_table "PortalLanguages", primary_key: "PortalLanguageID", force: true do |t|
    t.integer  "PortalID",                             null: false
    t.integer  "LanguageID",                           null: false
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
    t.boolean  "IsPublished",          default: false, null: false
  end

  create_table "PortalLocalization", id: false, force: true do |t|
    t.integer  "PortalID",                         null: false
    t.string   "CultureCode",          limit: 10,  null: false
    t.string   "PortalName",           limit: 128, null: false
    t.string   "LogoFile",             limit: 50
    t.string   "FooterText",           limit: 100
    t.string   "Description",          limit: 500
    t.string   "KeyWords",             limit: 500
    t.string   "BackgroundFile",       limit: 50
    t.integer  "HomeTabId"
    t.integer  "LoginTabId"
    t.integer  "UserTabId"
    t.integer  "AdminTabId"
    t.integer  "SplashTabId"
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
    t.integer  "RegisterTabId"
    t.integer  "SearchTabId"
  end

  create_table "PortalSettings", id: false, force: true do |t|
    t.integer  "PortalID",                          null: false
    t.string   "SettingName",          limit: 50,   null: false
    t.string   "SettingValue",         limit: 2000
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
    t.string   "CultureCode",          limit: 10,   null: false
  end

  create_table "Portals", primary_key: "PortalID", force: true do |t|
    t.datetime "ExpiryDate"
    t.integer  "UserRegistration",                 null: false
    t.integer  "BannerAdvertising",                null: false
    t.integer  "AdministratorId"
    t.string   "Currency",             limit: 3
    t.decimal  "HostFee",                          null: false
    t.integer  "HostSpace",                        null: false
    t.integer  "AdministratorRoleId"
    t.integer  "RegisteredRoleId"
    t.string   "GUID",                 limit: nil, null: false
    t.string   "PaymentProcessor",     limit: 50
    t.string   "ProcessorUserId",      limit: 50
    t.string   "ProcessorPassword",    limit: 50
    t.integer  "SiteLogHistory"
    t.string   "DefaultLanguage",      limit: 10,  null: false
    t.integer  "TimezoneOffset",                   null: false
    t.string   "HomeDirectory",        limit: 100, null: false
    t.integer  "PageQuota",                        null: false
    t.integer  "UserQuota",                        null: false
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
    t.integer  "PortalGroupID"
  end

  add_index "Portals", ["AdministratorId"], name: "IX_Portals_AdministratorId"
  add_index "Portals", ["DefaultLanguage"], name: "IX_Portals_DefaultLanguage"

  create_table "Possibilities", primary_key: "giveaway_id", force: true do |t|
    t.string  "email",       limit: 100
    t.string  "fname",       limit: 100
    t.string  "lname",       limit: 100
    t.string  "title",       limit: 100
    t.string  "company",     limit: 100
    t.string  "address1",    limit: 150
    t.string  "address2",    limit: 150
    t.string  "city",        limit: 100
    t.string  "state",       limit: 100
    t.string  "postal_code", limit: 10
    t.string  "country",     limit: 10
    t.string  "industry",    limit: 100
    t.string  "percentage",  limit: 10
    t.string  "interests",   limit: 100
    t.boolean "opt_in"
    t.string  "gift",        limit: 50
  end

  create_table "Profile", primary_key: "ProfileId", force: true do |t|
    t.integer  "UserId",      null: false
    t.integer  "PortalId",    null: false
    t.text     "ProfileData", null: false
    t.datetime "CreatedDate", null: false
  end

  create_table "ProfilePropertyDefinition", primary_key: "PropertyDefinitionID", force: true do |t|
    t.integer  "PortalID"
    t.integer  "ModuleDefID"
    t.boolean  "Deleted",                                           null: false
    t.integer  "DataType",                                          null: false
    t.text     "DefaultValue"
    t.string   "PropertyCategory",     limit: 50,                   null: false
    t.string   "PropertyName",         limit: 50,                   null: false
    t.integer  "Length",                            default: 0,     null: false
    t.boolean  "Required",                                          null: false
    t.string   "ValidationExpression", limit: 2000
    t.integer  "ViewOrder",                                         null: false
    t.boolean  "Visible",                                           null: false
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
    t.integer  "DefaultVisibility"
    t.boolean  "ReadOnly",                          default: false, null: false
  end

  create_table "RelationshipTypes", primary_key: "RelationshipTypeID", force: true do |t|
    t.integer  "Direction",                        null: false
    t.string   "Name",                 limit: 50,  null: false
    t.string   "Description",          limit: 500
    t.integer  "CreatedByUserID",                  null: false
    t.datetime "CreatedOnDate",                    null: false
    t.integer  "LastModifiedByUserID",             null: false
    t.datetime "LastModifiedOnDate",               null: false
  end

  create_table "Relationships", primary_key: "RelationshipID", force: true do |t|
    t.integer  "RelationshipTypeID",               null: false
    t.string   "Name",                 limit: 50,  null: false
    t.string   "Description",          limit: 500
    t.integer  "PortalID"
    t.integer  "UserID"
    t.integer  "DefaultResponse",                  null: false
    t.integer  "CreatedByUserID",                  null: false
    t.datetime "CreatedOnDate",                    null: false
    t.integer  "LastModifiedByUserID",             null: false
    t.datetime "LastModifiedOnDate",               null: false
  end

  create_table "Restart", force: true do |t|
    t.string   "Name",               limit: 50, null: false
    t.string   "Firm",               limit: 50, null: false
    t.string   "Phone",              limit: 50, null: false
    t.string   "Email",              limit: 50, null: false
    t.text     "Ordered",                       null: false
    t.text     "Returned"
    t.datetime "Date"
    t.boolean  "MailingList"
    t.string   "SampleSet",          limit: 50
    t.binary   "TimeStamp"
    t.boolean  "EmailSent"
    t.boolean  "SurveyComplete"
    t.datetime "EmailSendDate"
    t.datetime "SurveyCompleteDate"
  end

  create_table "Restart_Survey", force: true do |t|
    t.integer "Restart_id",                  null: false
    t.string  "Completed",        limit: 50
    t.text    "Completed_Reason"
    t.integer "Rating"
    t.string  "FirstTime",        limit: 50
    t.text    "Before"
    t.integer "Compare"
    t.text    "Excelled"
    t.text    "Improve"
    t.string  "UseAgain",         limit: 50
    t.text    "NeedToKnow"
    t.string  "UserTitle",        limit: 50
    t.string  "LEED",             limit: 50
  end

  create_table "RoleGroups", primary_key: "RoleGroupID", force: true do |t|
    t.integer  "PortalID",                          null: false
    t.string   "RoleGroupName",        limit: 50,   null: false
    t.string   "Description",          limit: 1000
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  add_index "RoleGroups", ["PortalID", "RoleGroupName"], name: "IX_RoleGroupName", unique: true

  create_table "RoleSettings", primary_key: "RoleSettingID", force: true do |t|
    t.integer  "RoleID",                            null: false
    t.string   "SettingName",          limit: 50,   null: false
    t.string   "SettingValue",         limit: 2000, null: false
    t.integer  "CreatedByUserID",                   null: false
    t.datetime "CreatedOnDate",                     null: false
    t.integer  "LastModifiedByUserID",              null: false
    t.datetime "LastModifiedOnDate",                null: false
  end

  create_table "Roles", primary_key: "RoleID", force: true do |t|
    t.integer  "PortalID",                                          null: false
    t.string   "RoleName",             limit: 50,                   null: false
    t.string   "Description",          limit: 1000
    t.decimal  "ServiceFee",                        default: 0.0
    t.string   "BillingFrequency",     limit: 1
    t.integer  "TrialPeriod"
    t.string   "TrialFrequency",       limit: 1
    t.integer  "BillingPeriod"
    t.decimal  "TrialFee"
    t.boolean  "IsPublic",                          default: false, null: false
    t.boolean  "AutoAssignment",                    default: false, null: false
    t.integer  "RoleGroupID"
    t.string   "RSVPCode",             limit: 50
    t.string   "IconFile",             limit: 100
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
    t.integer  "Status",                            default: 1,     null: false
    t.integer  "SecurityMode",                      default: 0,     null: false
  end

  add_index "Roles", ["PortalID", "RoleName"], name: "IX_RoleName", unique: true

  create_table "SampleOrderProducts", primary_key: "SampleOrderProductID", force: true do |t|
    t.integer  "SampleOrderID"
    t.string   "ProductItemNumber",   limit: 200
    t.string   "ProductSku",          limit: 200
    t.integer  "ProductQuantity"
    t.string   "ProductInstructions", limit: 200
    t.string   "ProductComments",     limit: 200
    t.datetime "DateCreated"
    t.integer  "ProductId"
  end

  create_table "SampleOrders", primary_key: "SampleOrderID", force: true do |t|
    t.string   "OrderName",           limit: 200
    t.string   "OrderAddress",        limit: 200
    t.string   "OrderCity",           limit: 200
    t.string   "OrderState",          limit: 200
    t.string   "OrderPostalCode",     limit: 200
    t.string   "OrderPhone",          limit: 200
    t.string   "OrderEmail",          limit: 200
    t.string   "OrderFirm",           limit: 200
    t.string   "OrderFirmAddress",    limit: 200
    t.string   "OrderFirmState",      limit: 200
    t.string   "OrderFirmCity",       limit: 200
    t.string   "OrderFirmPostalCode", limit: 200
    t.string   "OrderFirmCountry",    limit: 200
    t.string   "OrderComments",       limit: 200
    t.datetime "DateCreated"
    t.string   "OrderProjectName",    limit: 50
  end

  create_table "Schedule", primary_key: "ScheduleID", force: true do |t|
    t.string   "TypeFullName",              limit: 200,  null: false
    t.integer  "TimeLapse",                              null: false
    t.string   "TimeLapseMeasurement",      limit: 2,    null: false
    t.integer  "RetryTimeLapse",                         null: false
    t.string   "RetryTimeLapseMeasurement", limit: 2,    null: false
    t.integer  "RetainHistoryNum",                       null: false
    t.string   "AttachToEvent",             limit: 50,   null: false
    t.boolean  "CatchUpEnabled",                         null: false
    t.boolean  "Enabled",                                null: false
    t.string   "ObjectDependencies",        limit: 300,  null: false
    t.string   "Servers",                   limit: 2000
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
    t.string   "FriendlyName",              limit: 200
  end

  create_table "ScheduleHistory", primary_key: "ScheduleHistoryID", force: true do |t|
    t.integer  "ScheduleID",             null: false
    t.datetime "StartDate",              null: false
    t.datetime "EndDate"
    t.boolean  "Succeeded"
    t.text     "LogNotes"
    t.datetime "NextStart"
    t.string   "Server",     limit: 150
  end

  create_table "ScheduleItemSettings", id: false, force: true do |t|
    t.integer "ScheduleID",              null: false
    t.string  "SettingName",  limit: 50, null: false
    t.text    "SettingValue",            null: false
  end

  create_table "SearchCommonWords", primary_key: "CommonWordID", force: true do |t|
    t.string "CommonWord",            null: false
    t.string "Locale",     limit: 10
  end

  create_table "SearchIndexer", primary_key: "SearchIndexerID", force: true do |t|
    t.string "SearchIndexerAssemblyQualifiedName", limit: 200, null: false
  end

  create_table "SearchItem", primary_key: "SearchItemID", force: true do |t|
    t.string   "Title",       limit: 200,  null: false
    t.string   "Description", limit: 2000, null: false
    t.integer  "Author"
    t.datetime "PubDate",                  null: false
    t.integer  "ModuleId",                 null: false
    t.string   "SearchKey",   limit: 100,  null: false
    t.string   "Guid",        limit: 200
    t.integer  "HitCount"
    t.integer  "ImageFileId"
  end

  add_index "SearchItem", ["ModuleId", "SearchKey"], name: "IX_SearchItem", unique: true

  create_table "SearchItemWord", primary_key: "SearchItemWordID", force: true do |t|
    t.integer "SearchItemID",  null: false
    t.integer "SearchWordsID", null: false
    t.integer "Occurrences",   null: false
  end

  add_index "SearchItemWord", ["SearchItemID", "SearchWordsID"], name: "IX_SearchItemWord", unique: true

  create_table "SearchItemWordPosition", primary_key: "SearchItemWordPositionID", force: true do |t|
    t.integer "SearchItemWordID", null: false
    t.integer "ContentPosition",  null: false
  end

  create_table "SearchWord", primary_key: "SearchWordsID", force: true do |t|
    t.string  "Word",     limit: 100, null: false
    t.boolean "IsCommon"
    t.integer "HitCount",             null: false
  end

  add_index "SearchWord", ["Word"], name: "IX_SearchWord", unique: true

  create_table "SiteLog", primary_key: "SiteLogId", force: true do |t|
    t.datetime "DateTime",        null: false
    t.integer  "PortalId",        null: false
    t.integer  "UserId"
    t.string   "Referrer"
    t.string   "Url"
    t.string   "UserAgent"
    t.string   "UserHostAddress"
    t.string   "UserHostName"
    t.integer  "TabId"
    t.integer  "AffiliateId"
  end

  add_index "SiteLog", ["PortalId"], name: "IX_SiteLog"

  create_table "SkinControls", primary_key: "SkinControlID", force: true do |t|
    t.integer  "PackageID",                            default: -1,    null: false
    t.string   "ControlKey",               limit: 50
    t.string   "ControlSrc",               limit: 256
    t.string   "IconFile",                 limit: 100
    t.string   "HelpUrl",                  limit: 200
    t.boolean  "SupportsPartialRendering",             default: false, null: false
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  create_table "SkinPackages", primary_key: "SkinPackageID", force: true do |t|
    t.integer  "PackageID",                       null: false
    t.integer  "PortalID"
    t.string   "SkinName",             limit: 50, null: false
    t.string   "SkinType",             limit: 20, null: false
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  create_table "Skins", primary_key: "SkinID", force: true do |t|
    t.integer "SkinPackageID",             null: false
    t.string  "SkinSrc",       limit: 250, null: false
  end

  create_table "SocialMedia", primary_key: "ID", force: true do |t|
    t.string "Name", limit: 15,  null: false
    t.string "Link", limit: 200, null: false
    t.string "Icon", limit: 200
  end

  create_table "States", primary_key: "StateID", force: true do |t|
    t.string  "stateName", limit: 100, null: false
    t.string  "stateCode", limit: 5,   null: false
    t.integer "CountryID"
  end

  create_table "Store_Addresses", primary_key: "AddressID", force: true do |t|
    t.integer  "PortalID",                   null: false
    t.integer  "UserID",                     null: false
    t.string   "Description",    limit: 100, null: false
    t.string   "Name",           limit: 50,  null: false
    t.string   "Address1",       limit: 100, null: false
    t.string   "Address2",       limit: 100, null: false
    t.string   "City",           limit: 100, null: false
    t.string   "RegionCode",     limit: 100, null: false
    t.string   "CountryCode",    limit: 100, null: false
    t.string   "PostalCode",     limit: 10,  null: false
    t.string   "Phone1",         limit: 20,  null: false
    t.string   "Phone2",         limit: 20,  null: false
    t.boolean  "PrimaryAddress",             null: false
    t.string   "CreatedByUser",  limit: 100
    t.datetime "CreatedDate"
  end

  create_table "Store_Administration", id: false, force: true do |t|
    t.integer  "PortalID",                                                                  null: false
    t.string   "Name",                limit: 100
    t.string   "Description",         limit: 1000
    t.string   "Keywords",            limit: 1000
    t.string   "GatewayName",         limit: 1000,                                          null: false
    t.text     "GatewaySettings"
    t.string   "DefaultEmailAddress", limit: 50,                                            null: false
    t.integer  "ShoppingCartPageID",                                                        null: false
    t.string   "CreatedByUser",       limit: 100
    t.datetime "CreatedDate"
    t.decimal  "DefaultShippingFee"
    t.text     "DefaultTaxRates"
    t.integer  "StorePageID"
    t.boolean  "ShowTax",                                                   default: false, null: false
    t.decimal  "DefaultTaxRate",                   precision: 10, scale: 2
    t.string   "CurrencySymbol",      limit: 3
    t.boolean  "PortalTemplates",                                           default: false, null: false
    t.boolean  "AuthorizeCancel",                                           default: false, null: false
  end

  create_table "Store_Cart", id: false, force: true do |t|
    t.string   "CartID",      limit: 50, null: false
    t.integer  "PortalID"
    t.integer  "UserID"
    t.datetime "DateCreated",            null: false
  end

  create_table "Store_CartItems", primary_key: "ItemID", force: true do |t|
    t.string   "CartID",      limit: 50,             null: false
    t.integer  "ProductID",                          null: false
    t.integer  "Quantity",               default: 1, null: false
    t.datetime "DateCreated",                        null: false
  end

  create_table "Store_Categories", primary_key: "CategoryID", force: true do |t|
    t.integer  "PortalID",                                        null: false
    t.string   "CategoryName",        limit: 50
    t.string   "CategoryDescription", limit: 500
    t.text     "Message"
    t.boolean  "Archived",                        default: false, null: false
    t.string   "CreatedByUser",       limit: 100
    t.datetime "CreatedDate"
    t.integer  "ParentCategoryID"
    t.integer  "OrderID"
  end

  create_table "Store_OrderDetails", primary_key: "OrderDetailID", force: true do |t|
    t.integer "OrderID",   null: false
    t.integer "ProductID", null: false
    t.integer "Quantity",  null: false
    t.decimal "UnitCost",  null: false
  end

  create_table "Store_OrderStatus", primary_key: "OrderStatusID", force: true do |t|
    t.string  "OrderStatusText", limit: 50, null: false
    t.integer "ListOrder",                  null: false
  end

  create_table "Store_Orders", primary_key: "OrderID", force: true do |t|
    t.integer  "UserID",                                       null: false
    t.integer  "PortalID",                                     null: false
    t.string   "OrderNumber",       limit: 50,                 null: false
    t.datetime "OrderDate",                                    null: false
    t.datetime "ShipDate",                                     null: false
    t.integer  "ShippingAddressID",                            null: false
    t.integer  "BillingAddressID",                             null: false
    t.decimal  "Tax",                          default: 0.0,   null: false
    t.decimal  "ShippingCost",                 default: 0.0,   null: false
    t.boolean  "OrderIsPlaced",                default: false, null: false
    t.integer  "OrderStatusID",                default: 1,     null: false
  end

  create_table "Store_Products", primary_key: "ProductID", force: true do |t|
    t.integer  "PortalID",                                                            null: false
    t.integer  "CategoryID",                                                          null: false
    t.string   "Manufacturer",  limit: 50
    t.string   "ModelNumber",   limit: 50
    t.string   "ModelName",     limit: 50
    t.string   "ProductImage",  limit: 500
    t.decimal  "UnitCost",                                                            null: false
    t.string   "Summary",       limit: 1000
    t.text     "Description"
    t.boolean  "Featured",                                            default: false, null: false
    t.boolean  "Archived",                                            default: false, null: false
    t.string   "CreatedByUser", limit: 100
    t.datetime "CreatedDate"
    t.decimal  "ProductWeight",              precision: 10, scale: 2, default: 1.0,   null: false
    t.datetime "SaleStartDate"
    t.datetime "SaleEndDate"
    t.decimal  "SalePrice"
    t.boolean  "IsDeleted",                                           default: false, null: false
    t.decimal  "ProductHeight",              precision: 10, scale: 2, default: 1.0,   null: false
    t.decimal  "ProductLength",              precision: 10, scale: 2, default: 1.0,   null: false
    t.decimal  "ProductWidth",               precision: 10, scale: 2, default: 1.0,   null: false
  end

  create_table "Store_Reviews", primary_key: "ReviewID", force: true do |t|
    t.integer  "PortalID",                 null: false
    t.integer  "ProductID",                null: false
    t.integer  "UserID",                   null: false
    t.string   "UserName",    limit: 50,   null: false
    t.integer  "Rating",                   null: false
    t.string   "Comments",    limit: 1000
    t.boolean  "Authorized",               null: false
    t.datetime "CreatedDate"
  end

  create_table "Store_ShippingRates", primary_key: "ID", force: true do |t|
    t.integer "PortalID",                             null: false
    t.string  "Description",                          null: false
    t.decimal "MinWeight",   precision: 10, scale: 2, null: false
    t.decimal "MaxWeight",   precision: 10, scale: 2, null: false
    t.decimal "Cost",                                 null: false
  end

  create_table "SystemMessages", primary_key: "MessageID", force: true do |t|
    t.integer "PortalID"
    t.string  "MessageName",  limit: 50, null: false
    t.text    "MessageValue",            null: false
  end

  add_index "SystemMessages", ["MessageName", "PortalID"], name: "IX_SystemMessages", unique: true

  create_table "TabModuleSettings", id: false, force: true do |t|
    t.integer  "TabModuleID",                     null: false
    t.string   "SettingName",          limit: 50, null: false
    t.text     "SettingValue",                    null: false
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  create_table "TabModules", primary_key: "TabModuleID", force: true do |t|
    t.integer  "TabID",                                            null: false
    t.integer  "ModuleID",                                         null: false
    t.string   "PaneName",             limit: 50,                  null: false
    t.integer  "ModuleOrder",                                      null: false
    t.integer  "CacheTime",                                        null: false
    t.string   "Alignment",            limit: 10
    t.string   "Color",                limit: 20
    t.string   "Border",               limit: 1
    t.string   "IconFile",             limit: 100
    t.integer  "Visibility",                                       null: false
    t.string   "ContainerSrc",         limit: 200
    t.boolean  "DisplayTitle",                     default: true,  null: false
    t.boolean  "DisplayPrint",                     default: true,  null: false
    t.boolean  "DisplaySyndicate",                 default: true,  null: false
    t.boolean  "IsWebSlice",                       default: false, null: false
    t.string   "WebSliceTitle",        limit: 256
    t.datetime "WebSliceExpiryDate"
    t.integer  "WebSliceTTL"
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
    t.boolean  "IsDeleted",                        default: false, null: false
    t.string   "CacheMethod",          limit: 50
    t.string   "ModuleTitle",          limit: 256
    t.text     "Header"
    t.text     "Footer"
    t.string   "CultureCode",          limit: 10
    t.string   "UniqueId",             limit: nil,                 null: false
    t.string   "VersionGuid",          limit: nil,                 null: false
    t.string   "DefaultLanguageGuid",  limit: nil
    t.string   "LocalizedVersionGuid", limit: nil,                 null: false
  end

  add_index "TabModules", ["TabID", "ModuleID"], name: "IX_TabModules", unique: true
  add_index "TabModules", ["UniqueId"], name: "IX_TabModules_UniqueId", unique: true

  create_table "TabPermission", primary_key: "TabPermissionID", force: true do |t|
    t.integer  "TabID",                null: false
    t.integer  "PermissionID",         null: false
    t.boolean  "AllowAccess",          null: false
    t.integer  "RoleID"
    t.integer  "UserID"
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  add_index "TabPermission", ["TabID", "PermissionID", "RoleID", "UserID"], name: "IX_TabPermission", unique: true

  create_table "TabSettings", id: false, force: true do |t|
    t.integer  "TabID",                             null: false
    t.string   "SettingName",          limit: 50,   null: false
    t.string   "SettingValue",         limit: 2000, null: false
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  create_table "Tabs", primary_key: "TabID", force: true do |t|
    t.integer  "TabOrder",                         default: 0,     null: false
    t.integer  "PortalID"
    t.string   "TabName",              limit: 50,                  null: false
    t.boolean  "IsVisible",                        default: true,  null: false
    t.integer  "ParentId"
    t.string   "IconFile",             limit: 100
    t.boolean  "DisableLink",                      default: false, null: false
    t.string   "Title",                limit: 200
    t.string   "Description",          limit: 500
    t.string   "KeyWords",             limit: 500
    t.boolean  "IsDeleted",                        default: false, null: false
    t.string   "Url"
    t.string   "SkinSrc",              limit: 200
    t.string   "ContainerSrc",         limit: 200
    t.datetime "StartDate"
    t.datetime "EndDate"
    t.integer  "RefreshInterval"
    t.text     "PageHeadText"
    t.boolean  "IsSecure",                         default: false, null: false
    t.boolean  "PermanentRedirect",                default: false, null: false
    t.float    "SiteMapPriority",      limit: 53,  default: 0.5,   null: false
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
    t.string   "IconFileLarge",        limit: 100
    t.string   "CultureCode",          limit: 10
    t.integer  "ContentItemID"
    t.string   "UniqueId",             limit: nil,                 null: false
    t.string   "VersionGuid",          limit: nil,                 null: false
    t.string   "DefaultLanguageGuid",  limit: nil
    t.string   "LocalizedVersionGuid", limit: nil,                 null: false
    t.integer  "Level",                            default: 0,     null: false
    t.string   "TabPath",                          default: "",    null: false
  end

  add_index "Tabs", ["UniqueId"], name: "IX_Tabs_UniqueId", unique: true

  create_table "Taxonomy_ScopeTypes", primary_key: "ScopeTypeID", force: true do |t|
    t.string "ScopeType", limit: 250
  end

  create_table "Taxonomy_Terms", primary_key: "TermID", force: true do |t|
    t.integer  "VocabularyID",                                  null: false
    t.integer  "ParentTermID"
    t.string   "Name",                 limit: 250,              null: false
    t.string   "Description",          limit: 2500
    t.integer  "Weight",                            default: 0, null: false
    t.integer  "TermLeft",                          default: 0, null: false
    t.integer  "TermRight",                         default: 0, null: false
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  create_table "Taxonomy_Vocabularies", primary_key: "VocabularyID", force: true do |t|
    t.integer  "VocabularyTypeID",                                  null: false
    t.string   "Name",                 limit: 250,                  null: false
    t.string   "Description",          limit: 2500
    t.integer  "Weight",                            default: 0,     null: false
    t.integer  "ScopeID"
    t.integer  "ScopeTypeID",                                       null: false
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
    t.boolean  "IsSystem",                          default: false, null: false
  end

  create_table "Taxonomy_VocabularyTypes", primary_key: "VocabularyTypeID", force: true do |t|
    t.string "VocabularyType", limit: 50, null: false
  end

  create_table "UrlLog", primary_key: "UrlLogID", force: true do |t|
    t.integer  "UrlTrackingID", null: false
    t.datetime "ClickDate",     null: false
    t.integer  "UserID"
  end

  create_table "UrlTracking", primary_key: "UrlTrackingID", force: true do |t|
    t.integer  "PortalID"
    t.string   "Url",                                   null: false
    t.string   "UrlType",     limit: 1,                 null: false
    t.integer  "Clicks",                                null: false
    t.datetime "LastClick"
    t.datetime "CreatedDate",                           null: false
    t.boolean  "LogActivity",                           null: false
    t.boolean  "TrackClicks",           default: true,  null: false
    t.integer  "ModuleId"
    t.boolean  "NewWindow",             default: false, null: false
  end

  add_index "UrlTracking", ["PortalID", "Url", "ModuleId"], name: "IX_UrlTracking", unique: true

  create_table "Urls", primary_key: "UrlID", force: true do |t|
    t.integer "PortalID"
    t.string  "Url",      null: false
  end

  add_index "Urls", ["Url", "PortalID"], name: "IX_Urls", unique: true

  create_table "UserAuthentication", primary_key: "UserAuthenticationID", force: true do |t|
    t.integer  "UserID",                            null: false
    t.string   "AuthenticationType",   limit: 100,  null: false
    t.string   "AuthenticationToken",  limit: 1000, null: false
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  create_table "UserDefinedData", id: false, force: true do |t|
    t.integer "UserDefinedFieldId", null: false
    t.integer "UserDefinedRowId",   null: false
    t.text    "FieldValue",         null: false
  end

  create_table "UserDefinedFields", primary_key: "UserDefinedFieldId", force: true do |t|
    t.integer "ModuleId",                                       null: false
    t.string  "FieldTitle",        limit: 50
    t.boolean "Visible",                                        null: false
    t.integer "FieldOrder",                     default: 0,     null: false
    t.string  "FieldType",         limit: 20,                   null: false
    t.boolean "Required",                       default: false, null: false
    t.string  "Default",           limit: 2000, default: ""
    t.string  "OutputSettings",    limit: 2000, default: ""
    t.string  "InputSettings",     limit: 2000
    t.string  "ValidationRule",    limit: 512
    t.string  "ValidationMessage", limit: 512
    t.boolean "NormalizeFlag",                  default: false, null: false
    t.string  "HelpText",          limit: 512
    t.boolean "Searchable",                     default: false, null: false
    t.boolean "ShowOnEdit",                     default: true,  null: false
  end

  create_table "UserDefinedRows", primary_key: "UserDefinedRowId", force: true do |t|
    t.integer "ModuleId", null: false
  end

  create_table "UserPortals", primary_key: "UserPortalId", force: true do |t|
    t.integer  "UserId",                       null: false
    t.integer  "PortalId",                     null: false
    t.datetime "CreatedDate",                  null: false
    t.boolean  "Authorised",   default: true,  null: false
    t.boolean  "IsDeleted",    default: false, null: false
    t.boolean  "RefreshRoles", default: false, null: false
  end

  create_table "UserProfile", primary_key: "ProfileID", force: true do |t|
    t.integer  "UserID",                                        null: false
    t.integer  "PropertyDefinitionID",                          null: false
    t.string   "PropertyValue",        limit: 3750
    t.text     "PropertyText"
    t.integer  "Visibility",                        default: 0, null: false
    t.datetime "LastUpdatedDate",                               null: false
    t.string   "ExtendedVisibility",   limit: 400
  end

  create_table "UserRelationshipPreferences", primary_key: "PreferenceID", force: true do |t|
    t.integer  "UserID",               null: false
    t.integer  "RelationshipID",       null: false
    t.integer  "DefaultResponse",      null: false
    t.integer  "CreatedByUserID",      null: false
    t.datetime "CreatedOnDate",        null: false
    t.integer  "LastModifiedByUserID", null: false
    t.datetime "LastModifiedOnDate",   null: false
  end

  create_table "UserRelationships", primary_key: "UserRelationshipID", force: true do |t|
    t.integer  "UserID",               null: false
    t.integer  "RelatedUserID",        null: false
    t.integer  "RelationshipID",       null: false
    t.integer  "Status",               null: false
    t.integer  "CreatedByUserID",      null: false
    t.datetime "CreatedOnDate",        null: false
    t.integer  "LastModifiedByUserID", null: false
    t.datetime "LastModifiedOnDate",   null: false
  end

  create_table "UserRoles", primary_key: "UserRoleID", force: true do |t|
    t.integer  "UserID",                               null: false
    t.integer  "RoleID",                               null: false
    t.datetime "ExpiryDate"
    t.boolean  "IsTrialUsed"
    t.datetime "EffectiveDate"
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
    t.integer  "Status",               default: 1,     null: false
    t.boolean  "IsOwner",              default: false, null: false
  end

  create_table "Users", primary_key: "UserID", force: true do |t|
    t.string   "Username",             limit: 100,                 null: false
    t.string   "FirstName",            limit: 50,                  null: false
    t.string   "LastName",             limit: 50,                  null: false
    t.boolean  "IsSuperUser",                      default: false, null: false
    t.integer  "AffiliateId"
    t.string   "Email",                limit: 256
    t.string   "DisplayName",          limit: 128, default: "",    null: false
    t.boolean  "UpdatePassword",                   default: false, null: false
    t.string   "LastIPAddress",        limit: 50
    t.boolean  "IsDeleted",                        default: false, null: false
    t.integer  "CreatedByUserID"
    t.datetime "CreatedOnDate"
    t.integer  "LastModifiedByUserID"
    t.datetime "LastModifiedOnDate"
  end

  add_index "Users", ["Username"], name: "IX_Users", unique: true

  create_table "UsersOnline", id: false, force: true do |t|
    t.integer  "UserID",         null: false
    t.integer  "PortalID",       null: false
    t.integer  "TabID",          null: false
    t.datetime "CreationDate",   null: false
    t.datetime "LastActiveDate", null: false
  end

  create_table "VendorClassification", primary_key: "VendorClassificationId", force: true do |t|
    t.integer "VendorId",         null: false
    t.integer "ClassificationId", null: false
  end

  add_index "VendorClassification", ["VendorId", "ClassificationId"], name: "IX_VendorClassification", unique: true

  create_table "Vendors", primary_key: "VendorId", force: true do |t|
    t.string   "VendorName",    limit: 50,                 null: false
    t.string   "Street",        limit: 50
    t.string   "City",          limit: 50
    t.string   "Region",        limit: 50
    t.string   "Country",       limit: 50
    t.string   "PostalCode",    limit: 50
    t.string   "Telephone",     limit: 50
    t.integer  "PortalId"
    t.string   "Fax",           limit: 50
    t.string   "Email",         limit: 50
    t.string   "Website",       limit: 100
    t.integer  "ClickThroughs",             default: 0,    null: false
    t.integer  "Views",                     default: 0,    null: false
    t.string   "CreatedByUser", limit: 100
    t.datetime "CreatedDate"
    t.string   "LogoFile",      limit: 100
    t.text     "KeyWords"
    t.string   "Unit",          limit: 50
    t.boolean  "Authorized",                default: true, null: false
    t.string   "FirstName",     limit: 50
    t.string   "LastName",      limit: 50
    t.string   "Cell",          limit: 50
  end

  add_index "Vendors", ["PortalId", "VendorName"], name: "IX_Vendors", unique: true

  create_table "Version", primary_key: "VersionId", force: true do |t|
    t.integer  "Major",                  null: false
    t.integer  "Minor",                  null: false
    t.integer  "Build",                  null: false
    t.datetime "CreatedDate",            null: false
    t.string   "Name",        limit: 50
  end

  add_index "Version", ["Major", "Minor", "Build"], name: "IX_Version", unique: true

  create_table "WebServers", primary_key: "ServerID", force: true do |t|
    t.string   "ServerName",       limit: 50,                 null: false
    t.datetime "CreatedDate",                                 null: false
    t.datetime "LastActivityDate",                            null: false
    t.string   "URL"
    t.string   "IISAppName",       limit: 200, default: "",   null: false
    t.boolean  "Enabled",                      default: true, null: false
  end

  create_table "Workflow", primary_key: "WorkflowID", force: true do |t|
    t.integer "PortalID"
    t.string  "WorkflowName", limit: 50,   null: false
    t.string  "Description",  limit: 2000
    t.boolean "IsDeleted",                 null: false
  end

  create_table "WorkflowStates", primary_key: "StateID", force: true do |t|
    t.integer "WorkflowID",            null: false
    t.string  "StateName",  limit: 50, null: false
    t.integer "Order",                 null: false
    t.boolean "IsActive",              null: false
    t.boolean "Notify",                null: false
  end

  create_table "aspnet_Applications", id: false, force: true do |t|
    t.string "ApplicationName",        limit: 256, null: false
    t.string "LoweredApplicationName", limit: 256, null: false
    t.string "ApplicationId",          limit: nil, null: false
    t.string "Description",            limit: 256
  end

  add_index "aspnet_Applications", ["ApplicationName"], name: "UQ__aspnet_A__309103312CBE6F0C", unique: true
  add_index "aspnet_Applications", ["LoweredApplicationName"], name: "UQ__aspnet_A__17477DE42F9ADBB7", unique: true

  create_table "aspnet_Membership", id: false, force: true do |t|
    t.string   "ApplicationId",                          limit: nil,             null: false
    t.string   "UserId",                                 limit: nil,             null: false
    t.string   "Password",                               limit: 128,             null: false
    t.integer  "PasswordFormat",                                     default: 0, null: false
    t.string   "PasswordSalt",                           limit: 128,             null: false
    t.string   "MobilePIN",                              limit: 16
    t.string   "Email",                                  limit: 256
    t.string   "LoweredEmail",                           limit: 256
    t.string   "PasswordQuestion",                       limit: 256
    t.string   "PasswordAnswer",                         limit: 128
    t.boolean  "IsApproved",                                                     null: false
    t.boolean  "IsLockedOut",                                                    null: false
    t.datetime "CreateDate",                                                     null: false
    t.datetime "LastLoginDate",                                                  null: false
    t.datetime "LastPasswordChangedDate",                                        null: false
    t.datetime "LastLockoutDate",                                                null: false
    t.integer  "FailedPasswordAttemptCount",                                     null: false
    t.datetime "FailedPasswordAttemptWindowStart",                               null: false
    t.integer  "FailedPasswordAnswerAttemptCount",                               null: false
    t.datetime "FailedPasswordAnswerAttemptWindowStart",                         null: false
    t.text     "Comment"
  end

  create_table "aspnet_Profile", id: false, force: true do |t|
    t.string   "UserId",               limit: nil, null: false
    t.text     "PropertyNames",                    null: false
    t.text     "PropertyValuesString",             null: false
    t.binary   "PropertyValuesBinary",             null: false
    t.datetime "LastUpdatedDate",                  null: false
  end

  create_table "aspnet_Roles", id: false, force: true do |t|
    t.string "ApplicationId",   limit: nil, null: false
    t.string "RoleId",          limit: nil, null: false
    t.string "RoleName",        limit: 256, null: false
    t.string "LoweredRoleName", limit: 256, null: false
    t.string "Description",     limit: 256
  end

  create_table "aspnet_SchemaVersions", id: false, force: true do |t|
    t.string  "Feature",                 limit: 128, null: false
    t.string  "CompatibleSchemaVersion", limit: 128, null: false
    t.boolean "IsCurrentVersion",                    null: false
  end

  create_table "aspnet_Users", id: false, force: true do |t|
    t.string   "ApplicationId",    limit: nil,                 null: false
    t.string   "UserId",           limit: nil,                 null: false
    t.string   "UserName",         limit: 256,                 null: false
    t.string   "LoweredUserName",  limit: 256,                 null: false
    t.string   "MobileAlias",      limit: 16
    t.boolean  "IsAnonymous",                  default: false, null: false
    t.datetime "LastActivityDate",                             null: false
  end

  create_table "aspnet_UsersInRoles", id: false, force: true do |t|
    t.string "UserId", limit: nil, null: false
    t.string "RoleId", limit: nil, null: false
  end

  create_table "color_families", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "color_palettes", force: true do |t|
    t.string   "name"
    t.integer  "order_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colors", force: true do |t|
    t.integer  "color_palette_id"
    t.string   "color_number"
    t.string   "name"
    t.string   "hex"
    t.boolean  "selects"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "color_family_id"
  end

  create_table "commerce_Categories", primary_key: "CategoryId", force: true do |t|
    t.integer "PortalId",                                            null: false
    t.integer "ParentCategoryId"
    t.string  "CategoryName",                limit: 250,             null: false
    t.string  "ImportName",                  limit: 250
    t.integer "SortOrder"
    t.integer "DeleteState",                             default: 0
    t.integer "PhotoGalleryID"
    t.string  "ProductSpecSheet",            limit: 250
    t.string  "ProductVideo",                limit: 250
    t.string  "IndustrySegment",             limit: 250
    t.string  "ProductSpecSheetTitle",       limit: 250
    t.string  "ProductVideoInstall",         limit: 250
    t.string  "ProductVideoInstallTitle",    limit: 250
    t.string  "ProductVideoInstallESP",      limit: 250
    t.string  "ProductVideoInstallESPTitle", limit: 250
    t.string  "ProductVideoMaint",           limit: 250
    t.string  "ProductVideoMaintTitle",      limit: 250
    t.string  "ProductVideoMaintESP",        limit: 250
    t.string  "ProductVideoMaintESPTitle",   limit: 250
    t.string  "ProductFileMaint",            limit: 250
    t.string  "ProductFileMaintTitle",       limit: 250
    t.string  "ProductFileInstall",          limit: 250
    t.string  "ProductFileInstallTitle",     limit: 250
  end

  create_table "commerce_Categories_Pending", id: false, force: true do |t|
    t.integer "CategoryPendingId",                       null: false
    t.integer "CategoryId",                              null: false
    t.integer "PortalId",                                null: false
    t.integer "ParentCategoryId",                        null: false
    t.string  "CategoryName",                limit: 250, null: false
    t.string  "ProductSpecSheet",            limit: 250
    t.string  "ProductVideo",                limit: 250
    t.string  "ProductSpecSheetTitle",       limit: 250
    t.string  "ProductVideoInstall",         limit: 250
    t.string  "ProductVideoInstallTitle",    limit: 250
    t.string  "ProductVideoInstallESP",      limit: 250
    t.string  "ProductVideoInstallESPTitle", limit: 250
    t.string  "ProductVideoMaint",           limit: 250
    t.string  "ProductVideoMaintTitle",      limit: 250
    t.string  "ProductVideoMaintESP",        limit: 250
    t.string  "ProductVideoMaintESPTitle",   limit: 250
    t.string  "ProductFileMaint",            limit: 250
    t.string  "ProductFileMaintTitle",       limit: 250
    t.string  "ProductFileInstall",          limit: 250
    t.string  "ProductFileInstallTitle",     limit: 250
    t.integer "DeleteState",                             null: false
    t.boolean "Created",                                 null: false
    t.boolean "Reviewed",                                null: false
    t.boolean "Approved",                                null: false
    t.integer "UserID",                                  null: false
    t.date    "DateReviewed"
  end

  create_table "commerce_ProductAttributes", id: false, force: true do |t|
    t.integer "ProductId",                                      null: false
    t.string  "ProductAttributeName",  limit: 250,              null: false
    t.string  "ProductAttributeValue", limit: 4000
    t.integer "DeleteState",                        default: 0
  end

  create_table "commerce_ProductAttributes_Pending", id: false, force: true do |t|
    t.integer "ProductAttributePendingId",              null: false
    t.integer "ProductPendingId",                       null: false
    t.string  "ProductAttributeName",      limit: 250,  null: false
    t.string  "ProductAttributeValue",     limit: 4000
    t.boolean "Reviewed",                               null: false
    t.boolean "Approved",                               null: false
    t.date    "DateReviewed"
  end

  create_table "commerce_ProductColorPalettes", primary_key: "ColorPaletteId", force: true do |t|
    t.string  "PaletteName",                                       null: false
    t.string  "Number",                                            null: false
    t.string  "Name",                                              null: false
    t.string  "RGB",                                               null: false
    t.string  "SwatchImage",          limit: 1000
    t.string  "ThumbImage",           limit: 1000
    t.boolean "Special",                           default: false, null: false
    t.string  "WallbaseFamilyNumber", limit: 4
  end

  create_table "commerce_Products", primary_key: "ProductId", force: true do |t|
    t.integer "PortalId",                            null: false
    t.integer "CategoryId"
    t.string  "Sku",         limit: 250
    t.string  "ProductName", limit: 250
    t.float   "Price",       limit: 53
    t.integer "DeleteState",             default: 0
  end

  create_table "commerce_Products_Pending", id: false, force: true do |t|
    t.integer "ProductPendingId",             null: false
    t.integer "ProductId",                    null: false
    t.integer "PortalId",                     null: false
    t.integer "CategoryId",                   null: false
    t.string  "Sku",              limit: 250, null: false
    t.string  "ProductName",      limit: 250, null: false
    t.integer "DeleteState",                  null: false
    t.boolean "Created",                      null: false
    t.boolean "AttributesOnly",               null: false
    t.boolean "Reviewed",                     null: false
    t.boolean "Approved",                     null: false
    t.integer "UserID",                       null: false
    t.date    "DateReviewed"
  end

  create_table "ecoScorecard", primary_key: "product_id", force: true do |t|
    t.string "manufacturer_code", limit: 100
    t.string "product_name",      limit: 100
    t.string "product_desc"
  end

  create_table "joh_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",        default: 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.boolean  "admin"
  end

  add_index "joh_users", ["authentication_token"], name: "index_joh_users_on_authentication_token", unique: true
  add_index "joh_users", ["email"], name: "index_joh_users_on_email", unique: true
  add_index "joh_users", ["reset_password_token"], name: "index_joh_users_on_reset_password_token", unique: true
  add_index "joh_users", ["unlock_token"], name: "index_joh_users_on_unlock_token", unique: true

  create_table "locator_Groups", primary_key: "GroupID", force: true do |t|
    t.string "groupName", limit: 100, null: false
  end

  create_table "locator_Load", primary_key: "ID", force: true do |t|
    t.string "Name",          limit: 500
    t.string "Address1",      limit: 500
    t.string "Address2",      limit: 500
    t.string "City",          limit: 500
    t.string "State",         limit: 500
    t.string "Zip",           limit: 500
    t.string "Country",       limit: 500
    t.string "Phone",         limit: 500
    t.string "Fax",           limit: 500
    t.string "AttributeID",   limit: 500
    t.string "AttributeName", limit: 500
    t.string "Attributes",    limit: 4000
  end

  create_table "locator_LocationAttributes", id: false, force: true do |t|
    t.integer "LocationId",                          null: false
    t.string  "LocationAttributeName",               null: false
    t.string  "LocationAttributeValue", limit: 4000
  end

  create_table "locator_Locations", primary_key: "LocationId", force: true do |t|
    t.string "Name",       limit: 500
    t.string "Address1",   limit: 500
    t.string "Address2",   limit: 500
    t.string "City",       limit: 500
    t.string "Region",     limit: 20
    t.string "PostalCode", limit: 10
    t.string "Country",    limit: 10
    t.string "Phone",      limit: 500
    t.string "Fax",        limit: 500
  end

  create_table "locator_Locations_Johnsonite", primary_key: "LocationId", force: true do |t|
    t.string  "Name"
    t.string  "Address1"
    t.string  "Address2"
    t.string  "City"
    t.string  "Region",     limit: 3
    t.string  "PostalCode", limit: 10
    t.string  "Country",    limit: 2
    t.string  "Phone"
    t.string  "Fax"
    t.integer "GroupID"
    t.string  "Attributes", limit: 1000
  end

  create_table "locator_PostalCodes", primary_key: "PostalCodeId", force: true do |t|
    t.string "Code",      limit: 10
    t.string "City"
    t.string "Region",    limit: 3
    t.float  "Latitude",  limit: 53
    t.float  "Longitude", limit: 53
  end

  add_index "locator_PostalCodes", ["Code"], name: "IX_locator_PostalCodes"

  create_table "locator_StatesGroupsMap", id: false, force: true do |t|
    t.integer "StateID", null: false
    t.integer "GroupID", null: false
  end

  create_table "patterns", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_families", force: true do |t|
    t.integer  "product_category_id"
    t.string   "name"
    t.string   "sample_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_lengths", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_thicknesses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_warranties", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_widths", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.integer  "product_family_id"
    t.string   "sku"
    t.string   "part_number"
    t.integer  "product_thickness_id"
    t.integer  "product_width_id"
    t.integer  "product_length_id"
    t.integer  "wallbase_profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_warranty_id"
    t.integer  "color_id"
    t.string   "weldrod"
    t.integer  "coordinating_color_id"
  end

  create_table "products_colors", id: false, force: true do |t|
    t.integer "product_id", null: false
    t.integer "color_id",   null: false
  end

  create_table "products_patterns", id: false, force: true do |t|
    t.integer "product_id", null: false
    t.integer "pattern_id", null: false
  end

  create_table "products_textures", id: false, force: true do |t|
    t.integer "product_id", null: false
    t.integer "texture_id", null: false
  end

  create_table "products_warranties", id: false, force: true do |t|
    t.integer "product_id",          null: false
    t.integer "product_warranty_id", null: false
  end

  create_table "temp_CanadianWood", id: false, force: true do |t|
    t.string "Sku",        limit: 50
    t.string "Type",       limit: 50
    t.string "Species",    limit: 50
    t.string "Grade",      limit: 50
    t.string "Color",      limit: 50
    t.string "Edge",       limit: 50
    t.string "Ply",        limit: 50
    t.string "Profile",    limit: 50
    t.string "Collection", limit: 50
    t.string "Warranty",   limit: 50
    t.string "Packaging"
    t.string "Plank Size", limit: 50
  end

  create_table "temp_Felt", id: false, force: true do |t|
    t.string "Product Type",          limit: 50
    t.string "Sku",                   limit: 50
    t.string "Collection",            limit: 50
    t.string "Pattern",               limit: 50
    t.string "Color",                 limit: 50
    t.string "Width US Metric",       limit: 50
    t.string "Width Canadian Metric", limit: 50
    t.string "Wear Layer Thickness",  limit: 50
    t.string "Gloss Level",           limit: 50
    t.string "Design Repeat",         limit: 50
    t.string "Finish",                limit: 50
    t.string "Warranty",              limit: 50
  end

  create_table "temp_Fiber", id: false, force: true do |t|
    t.string "Product Type",          limit: 50
    t.string "Sku",                   limit: 50
    t.string "Collection",            limit: 50
    t.string "Pattern",               limit: 50
    t.string "Color",                 limit: 50
    t.string "Width US Metric",       limit: 50
    t.string "Width Canadian Metric", limit: 50
    t.string "Wear Layer Thickness",  limit: 50
    t.string "Design Repeat",         limit: 50
    t.string "Finish",                limit: 50
    t.string "Warranty",              limit: 50
  end

  create_table "temp_Johnsonite", id: false, force: true do |t|
    t.string "Product Group"
    t.string "Product Name"
    t.string "Product Collection"
    t.string "Product JN Color Number"
    t.string "Product JN Color Name"
    t.string "Product CF"
    t.string "Coordinated JN Color Number"
    t.string "Coordinated JN Color Name"
    t.string "Coordinated CF"
    t.string "Weldrod"
    t.string "Thickness"
    t.string "Roll Length "
    t.string "Roll Width"
    t.string "Tile Size"
    t.string "Plank Length"
  end

  create_table "temp_Laminate", id: false, force: true do |t|
    t.string "Collection",                limit: 50
    t.string "Pattern",                   limit: 50
    t.string "Color",                     limit: 50
    t.string "Sku",                       limit: 50
    t.string "Recommended Underlayment",  limit: 50
    t.string "Overall Thickness",         limit: 50
    t.string "Plank size",                limit: 50
    t.string "Planks Ctn ",               limit: 50
    t.string "Coverage Ctn ",             limit: 50
    t.string "Weight Ctn ",               limit: 50
    t.string "Ctns  Pallet",              limit: 50
    t.string "Edge Finish",               limit: 50
    t.string "Wear Class",                limit: 50
    t.string "Indentation Class",         limit: 50
    t.string "Residential Warranty",      limit: 50
    t.string "Light Commercial Warranty", limit: 50
    t.string "Commercial Warranty",       limit: 50
    t.string "Quarter Round",             limit: 50
    t.string "Universal Reducer",         limit: 50
    t.string "T-Molding",                 limit: 50
    t.string "Stair Nose",                limit: 50
    t.string "Flush Mount Stair Nose",    limit: 50
  end

  create_table "temp_Locations", id: false, force: true do |t|
    t.string "Name"
    t.string "Address"
    t.string "Phone"
    t.string "Fax"
    t.string "City"
    t.string "State"
    t.string "Zip"
    t.string "Website"
    t.string "E-mail"
    t.string "Country"
    t.string "Highlight"
    t.string "Laminate"
    t.string "Sheet Vinyl"
    t.string "FiberFloor"
    t.string "LuxuryTile"
    t.string "Wood"
    t.string "Select FiberFloor"
    t.string "Select Sheet Vinyl"
    t.string "Select Laminate"
  end

  create_table "temp_NAFCO", id: false, force: true do |t|
    t.string "Product Family"
    t.string "Collection"
    t.string "Sub-collection"
    t.string "Sku"
    t.string "Color"
    t.string "Commercial Warranty"
    t.string "Residential Warranty"
    t.string "Size"
    t.string "Nominal Thickness"
    t.string "Edge Treatment"
    t.string "Pattern"
    t.string "Comments"
    t.string "Wearlayer"
    t.string "Gloss"
    t.string "Packaging Dri-Back"
  end

  create_table "textures", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wallbase_collection_sections", force: true do |t|
    t.integer  "wallbase_collection_id"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wallbase_collections", force: true do |t|
    t.string   "name"
    t.string   "material"
    t.boolean  "icon_1"
    t.boolean  "icon_2"
    t.boolean  "icon_3"
    t.boolean  "icon_4"
    t.boolean  "icon_5"
    t.text     "collection_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wallbase_profile_color_palettes", id: false, force: true do |t|
    t.integer "wallbase_profile_id", null: false
    t.integer "color_palette_id",    null: false
  end

  create_table "wallbase_profiles", force: true do |t|
    t.integer  "wallbase_style_type_id"
    t.float    "size",                   limit: 24
    t.string   "name"
    t.string   "uuid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wallbase_style_types", force: true do |t|
    t.string   "name"
    t.integer  "wallbase_collection_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
