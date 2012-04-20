.class Lcom/android/email/provider/EmailProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/EmailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 1077
    const/4 v0, 0x0

    const/16 v1, 0x1c

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 1078
    iput-object p1, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 1079
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 1083
    const-string v0, "EmailProvider"

    const-string v1, "Creating EmailProvider database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1086
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1087
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMailboxTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1088
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1089
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1090
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createPolicyTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1091
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createQuickResponseTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1092
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 1361
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 9
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x5

    .line 1099
    if-ge p2, v6, :cond_2

    .line 1100
    iget-object v6, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string v7, "com.android.exchange"

    invoke-virtual {v6, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1102
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v2, v4

    .line 1103
    .local v0, account:Landroid/accounts/Account;
    iget-object v6, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6, v0, v8, v8}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 1102
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1105
    .end local v0           #account:Landroid/accounts/Account;
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetMessageTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1106
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1107
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetMailboxTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1108
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1109
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetAccountTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1357
    .end local v1           #accounts:[Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    :goto_1
    return-void

    .line 1112
    :cond_2
    if-ne p2, v6, :cond_3

    .line 1115
    :try_start_0
    const-string v6, "alter table Message add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1117
    const-string v6, "alter table Message_Updates add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1119
    const-string v6, "alter table Message_Deletes add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    :goto_2
    const/4 p2, 0x6

    .line 1127
    :cond_3
    const/4 v6, 0x6

    if-ne p2, v6, :cond_4

    .line 1129
    const-string v6, "drop trigger mailbox_delete;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1130
    const-string v6, "create trigger mailbox_delete before delete on Mailbox begin delete from Message  where mailboxKey=old._id; delete from Message_Updates  where mailboxKey=old._id; delete from Message_Deletes  where mailboxKey=old._id; end"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1131
    const/4 p2, 0x7

    .line 1133
    :cond_4
    const/4 v6, 0x7

    if-ne p2, v6, :cond_5

    .line 1136
    :try_start_1
    const-string v6, "alter table Account add column securityFlags integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1142
    :goto_3
    const/16 p2, 0x8

    .line 1144
    :cond_5
    const/16 v6, 0x8

    if-ne p2, v6, :cond_6

    .line 1147
    :try_start_2
    const-string v6, "alter table Account add column securitySyncKey text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1149
    const-string v6, "alter table Account add column signature text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1155
    :goto_4
    const/16 p2, 0x9

    .line 1157
    :cond_6
    const/16 v6, 0x9

    if-ne p2, v6, :cond_7

    .line 1160
    :try_start_3
    const-string v6, "alter table Message add column meetingInfo text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1162
    const-string v6, "alter table Message_Updates add column meetingInfo text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1164
    const-string v6, "alter table Message_Deletes add column meetingInfo text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1170
    :goto_5
    const/16 p2, 0xa

    .line 1172
    :cond_7
    const/16 v6, 0xa

    if-ne p2, v6, :cond_8

    .line 1175
    :try_start_4
    const-string v6, "alter table Attachment add column content text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1177
    const-string v6, "alter table Attachment add column flags integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1183
    :goto_6
    const/16 p2, 0xb

    .line 1185
    :cond_8
    const/16 v6, 0xb

    if-ne p2, v6, :cond_9

    .line 1188
    :try_start_5
    const-string v6, "alter table Attachment add column content_bytes blob;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1194
    :goto_7
    const/16 p2, 0xc

    .line 1196
    :cond_9
    const/16 v6, 0xc

    if-ne p2, v6, :cond_a

    .line 1198
    :try_start_6
    const-string v6, "alter table Mailbox add column messageCount integer not null default 0;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1201
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->recalculateMessageCount(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1206
    :goto_8
    const/16 p2, 0xd

    .line 1208
    :cond_a
    const/16 v6, 0xd

    if-ne p2, v6, :cond_b

    .line 1210
    :try_start_7
    const-string v6, "alter table Message add column snippet text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1217
    :goto_9
    const/16 p2, 0xe

    .line 1219
    :cond_b
    const/16 v6, 0xe

    if-ne p2, v6, :cond_c

    .line 1221
    :try_start_8
    const-string v6, "alter table Message_Deletes add column snippet text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1223
    const-string v6, "alter table Message_Updates add column snippet text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_8

    .line 1229
    :goto_a
    const/16 p2, 0xf

    .line 1231
    :cond_c
    const/16 v6, 0xf

    if-ne p2, v6, :cond_d

    .line 1233
    :try_start_9
    const-string v6, "alter table Attachment add column accountKey integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1236
    const-string v6, "update Attachment set accountKey= (SELECT Message.accountKey from Message where Message._id = Attachment.messageKey)"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_9

    .line 1245
    :goto_b
    const/16 p2, 0x10

    .line 1247
    :cond_d
    const/16 v6, 0x10

    if-ne p2, v6, :cond_e

    .line 1249
    :try_start_a
    const-string v6, "alter table Mailbox add column parentKey integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_a

    .line 1255
    :goto_c
    const/16 p2, 0x11

    .line 1257
    :cond_e
    const/16 v6, 0x11

    if-ne p2, v6, :cond_f

    .line 1258
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->upgradeFromVersion17ToVersion18(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1259
    const/16 p2, 0x12

    .line 1261
    :cond_f
    const/16 v6, 0x12

    if-ne p2, v6, :cond_10

    .line 1263
    :try_start_b
    const-string v6, "alter table Account add column policyKey integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1265
    const-string v6, "drop trigger account_delete;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1266
    const-string v6, "create trigger account_delete before delete on Account begin delete from Mailbox where accountKey=old._id; delete from HostAuth where _id=old.hostAuthKeyRecv; delete from HostAuth where _id=old.hostAuthKeySend; delete from Policy where _id=old.policyKey; end"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1267
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createPolicyTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1268
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->convertPolicyFlagsToPolicyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_b
    .catch Landroid/database/SQLException; {:try_start_b .. :try_end_b} :catch_b

    .line 1273
    :goto_d
    const/16 p2, 0x13

    .line 1275
    :cond_10
    const/16 v6, 0x13

    if-ne p2, v6, :cond_11

    .line 1277
    :try_start_c
    const-string v6, "alter table Policy add column requireManualSyncRoaming integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1280
    const-string v6, "alter table Policy add column dontAllowCamera integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1282
    const-string v6, "alter table Policy add column dontAllowAttachments integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1284
    const-string v6, "alter table Policy add column dontAllowHtml integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1286
    const-string v6, "alter table Policy add column maxAttachmentSize integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1288
    const-string v6, "alter table Policy add column maxTextTruncationSize integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1291
    const-string v6, "alter table Policy add column maxHTMLTruncationSize integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1294
    const-string v6, "alter table Policy add column maxEmailLookback integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1296
    const-string v6, "alter table Policy add column maxCalendarLookback integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1298
    const-string v6, "alter table Policy add column passwordRecoveryEnabled integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/database/SQLException; {:try_start_c .. :try_end_c} :catch_c

    .line 1305
    :goto_e
    const/16 p2, 0x14

    .line 1307
    :cond_11
    const/16 v6, 0x14

    if-ne p2, v6, :cond_12

    .line 1308
    #calls: Lcom/android/email/provider/EmailProvider;->upgradeFromVersion20ToVersion21(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->access$000(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1309
    const/16 p2, 0x15

    .line 1311
    :cond_12
    const/16 v6, 0x15

    if-ne p2, v6, :cond_13

    .line 1312
    iget-object v6, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {p1, v6}, Lcom/android/email/provider/EmailProvider;->upgradeFromVersion21ToVersion22(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    .line 1313
    const/16 p2, 0x16

    .line 1315
    :cond_13
    const/16 v6, 0x16

    if-ne p2, v6, :cond_14

    .line 1316
    #calls: Lcom/android/email/provider/EmailProvider;->upgradeFromVersion22ToVersion23(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->access$100(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1317
    const/16 p2, 0x17

    .line 1319
    :cond_14
    const/16 v6, 0x17

    if-ne p2, v6, :cond_15

    .line 1320
    #calls: Lcom/android/email/provider/EmailProvider;->upgradeFromVersion23ToVersion24(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->access$200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1321
    const/16 p2, 0x18

    .line 1323
    :cond_15
    const/16 v6, 0x18

    if-ne p2, v6, :cond_16

    .line 1324
    #calls: Lcom/android/email/provider/EmailProvider;->upgradeFromVersion24ToVersion25(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->access$300(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1325
    const/16 p2, 0x19

    .line 1327
    :cond_16
    const/16 v6, 0x19

    if-ne p2, v6, :cond_17

    .line 1328
    #calls: Lcom/android/email/provider/EmailProvider;->upgradeFromVersion25ToVersion26(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->access$400(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1329
    const/16 p2, 0x1a

    .line 1331
    :cond_17
    const/16 v6, 0x1a

    if-ne p2, v6, :cond_18

    .line 1333
    :try_start_d
    const-string v6, "alter table Message add column protocolSearchInfo text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1335
    const-string v6, "alter table Message_Deletes add column protocolSearchInfo text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1337
    const-string v6, "alter table Message_Updates add column protocolSearchInfo text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/database/SQLException; {:try_start_d .. :try_end_d} :catch_d

    .line 1343
    :goto_f
    const/16 p2, 0x1b

    .line 1345
    :cond_18
    const/16 v6, 0x1b

    if-ne p2, v6, :cond_1

    .line 1347
    :try_start_e
    const-string v6, "alter table Account add column notifiedMessageId integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1349
    const-string v6, "alter table Account add column notifiedMessageCount integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/database/SQLException; {:try_start_e .. :try_end_e} :catch_e

    .line 1355
    :goto_10
    const/16 p2, 0x1c

    goto/16 :goto_1

    .line 1121
    :catch_0
    move-exception v3

    .line 1123
    .local v3, e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    const-string v7, "Exception upgrading EmailProvider.db from v5 to v6"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1138
    .end local v3           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v3

    .line 1140
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 7 to 8 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1151
    .end local v3           #e:Landroid/database/SQLException;
    :catch_2
    move-exception v3

    .line 1153
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 8 to 9 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1166
    .end local v3           #e:Landroid/database/SQLException;
    :catch_3
    move-exception v3

    .line 1168
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 9 to 10 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1179
    .end local v3           #e:Landroid/database/SQLException;
    :catch_4
    move-exception v3

    .line 1181
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 10 to 11 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1190
    .end local v3           #e:Landroid/database/SQLException;
    :catch_5
    move-exception v3

    .line 1192
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 11 to 12 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1202
    .end local v3           #e:Landroid/database/SQLException;
    :catch_6
    move-exception v3

    .line 1204
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 12 to 13 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1213
    .end local v3           #e:Landroid/database/SQLException;
    :catch_7
    move-exception v3

    .line 1215
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 13 to 14 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1225
    .end local v3           #e:Landroid/database/SQLException;
    :catch_8
    move-exception v3

    .line 1227
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 14 to 15 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1241
    .end local v3           #e:Landroid/database/SQLException;
    :catch_9
    move-exception v3

    .line 1243
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 15 to 16 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1251
    .end local v3           #e:Landroid/database/SQLException;
    :catch_a
    move-exception v3

    .line 1253
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 16 to 17 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1269
    .end local v3           #e:Landroid/database/SQLException;
    :catch_b
    move-exception v3

    .line 1271
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 18 to 19 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1301
    .end local v3           #e:Landroid/database/SQLException;
    :catch_c
    move-exception v3

    .line 1303
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 19 to 20 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1339
    .end local v3           #e:Landroid/database/SQLException;
    :catch_d
    move-exception v3

    .line 1341
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 26 to 27 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1351
    .end local v3           #e:Landroid/database/SQLException;
    :catch_e
    move-exception v3

    .line 1353
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 27 to 27 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10
.end method
