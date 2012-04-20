.class public Lcom/miui/antispam/firewall/FirewallLogFragment;
.super Landroid/app/Fragment;
.source "FirewallLogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCountView:Landroid/widget/TextView;

.field private mEmpty:Landroid/view/View;

.field private mListAdapter:Landroid/widget/ResourceCursorAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mOriginalQueryNumber:Ljava/lang/String;

.field private mQueryHandler:Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;

.field private mQueryNumber:Ljava/lang/String;

.field private mQueryTarget:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 90
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "queryTarget"

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 93
    iput p1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/antispam/firewall/FirewallLogFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->startQuery()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/antispam/firewall/FirewallLogFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/widget/ResourceCursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mEmpty:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/antispam/firewall/FirewallLogFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mCountView:Landroid/widget/TextView;

    return-object v0
.end method

.method public static formatCallData(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 572
    invoke-static {p0, p1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getDate(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, result:Ljava/lang/String;
    invoke-static {p1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, location:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 579
    :cond_0
    return-object v1
.end method

.method public static getCountString(J)Ljava/lang/String;
    .locals 2
    .parameter "count"

    .prologue
    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    .local v0, b:Ljava/lang/StringBuilder;
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 501
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDate(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 566
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 567
    .local v0, date:J
    const/16 v2, 0x11

    invoke-static {p0, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getNumber(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 482
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getDialableNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, number:Ljava/lang/String;
    const-string v1, "-3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 487
    :cond_0
    invoke-static {v0}, Lmiui/telephony/CallerInfo;->getPresentation(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lmiui/telephony/Connection;->getPresentationString(I)Ljava/lang/String;

    move-result-object v0

    .line 490
    :cond_1
    return-object v0
.end method

.method public static getOrigianlNumber(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 494
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private inConversionMode()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isFiltered(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "cursor"

    .prologue
    .line 556
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 557
    .local v0, reason:I
    const/high16 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isImported(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "cursor"

    .prologue
    .line 561
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 562
    .local v0, reason:I
    const/high16 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMute(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "cursor"

    .prologue
    .line 545
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 547
    .local v0, reason:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v1, 0x102

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x103

    if-eq v0, v1, :cond_0

    const/16 v1, 0x105

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static queryContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 528
    const/4 v6, 0x0

    .line 530
    .local v6, name:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 534
    .local v7, phoneCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 535
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 538
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 541
    :cond_1
    return-object v6
.end method

.method public static queryNameFromNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 506
    const/4 v7, 0x0

    .line 509
    .local v7, name:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "notes"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 515
    .local v6, blackistCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 516
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 519
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 522
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 524
    .end local v7           #name:Ljava/lang/String;
    :goto_0
    return-object v7

    .restart local v7       #name:Ljava/lang/String;
    :cond_2
    invoke-static {p0, p1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->queryContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private startQuery()V
    .locals 12

    .prologue
    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 185
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;->cancelOperation(I)V

    .line 187
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 188
    .local v8, value:Landroid/content/ContentValues;
    const-string v0, "read"

    const-string v3, "1"

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    const/16 v3, 0x65

    if-ne v0, v3, :cond_2

    .line 191
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;

    sget-object v3, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI_LOG_CONVERSATION:Landroid/net/Uri;

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "*"

    aput-object v5, v4, v11

    const-string v5, "count()"

    aput-object v5, v4, v9

    const-string v5, "type=?"

    new-array v6, v9, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    const-string v7, "date DESC"

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;

    sget-object v3, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "type=?"

    new-array v6, v9, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v11

    move-object v4, v8

    invoke-virtual/range {v0 .. v6}, Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;

    sget-object v3, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "type=? AND number=?"

    new-array v6, v10, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v11

    iget-object v4, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mOriginalQueryNumber:Ljava/lang/String;

    aput-object v4, v6, v9

    const-string v7, "date DESC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;

    sget-object v3, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "type=? AND number=?"

    new-array v6, v10, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v11

    iget-object v4, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mOriginalQueryNumber:Ljava/lang/String;

    aput-object v4, v6, v9

    move-object v4, v8

    invoke-virtual/range {v0 .. v6}, Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_2
    iget v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    const/16 v3, 0x66

    if-ne v0, v3, :cond_0

    .line 211
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;

    sget-object v3, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI_LOG_CONVERSATION:Landroid/net/Uri;

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "*"

    aput-object v5, v4, v11

    const-string v5, "count()"

    aput-object v5, v4, v9

    const-string v5, "type=? OR type=?"

    new-array v6, v10, [Ljava/lang/String;

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, "date DESC"

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;

    sget-object v3, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "type=? OR type=?"

    new-array v6, v10, [Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v11

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v9

    move-object v4, v8

    invoke-virtual/range {v0 .. v6}, Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;

    sget-object v3, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "(type=? OR type=?) AND number=?"

    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v11

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v9

    iget-object v4, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mOriginalQueryNumber:Ljava/lang/String;

    aput-object v4, v6, v10

    const-string v7, "date DESC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;

    sget-object v3, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "(type=? OR type=?) AND number=?"

    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v11

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v9

    iget-object v4, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mOriginalQueryNumber:Ljava/lang/String;

    aput-object v4, v6, v10

    move-object v4, v8

    invoke-virtual/range {v0 .. v6}, Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 165
    iput-object p1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    .line 166
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 12
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 240
    :try_start_0
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    iget v9, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v8, v9}, Landroid/widget/ResourceCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 246
    .local v1, cursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, number:Ljava/lang/String;
    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v8, v5}, Lcom/miui/antispam/firewall/FirewallLogFragment;->queryContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 248
    .local v4, name:Ljava/lang/String;
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 249
    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    const v11, 0x7f06006c

    invoke-virtual {p0, v11}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    new-instance v9, Lcom/miui/antispam/firewall/FirewallLogFragment$1;

    invoke-direct {v9, p0, v5}, Lcom/miui/antispam/firewall/FirewallLogFragment$1;-><init>(Lcom/miui/antispam/firewall/FirewallLogFragment;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 260
    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    const v11, 0x7f06006d

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    new-instance v9, Lcom/miui/antispam/firewall/FirewallLogFragment$2;

    invoke-direct {v9, p0, v5}, Lcom/miui/antispam/firewall/FirewallLogFragment$2;-><init>(Lcom/miui/antispam/firewall/FirewallLogFragment;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 272
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 274
    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const v11, 0x7f06006e

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    new-instance v9, Lcom/miui/antispam/firewall/FirewallLogFragment$3;

    invoke-direct {v9, p0, v5}, Lcom/miui/antispam/firewall/FirewallLogFragment$3;-><init>(Lcom/miui/antispam/firewall/FirewallLogFragment;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 285
    const/4 v8, 0x0

    const/4 v9, 0x5

    const/4 v10, 0x0

    const v11, 0x7f06006f

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    new-instance v9, Lcom/miui/antispam/firewall/FirewallLogFragment$4;

    invoke-direct {v9, p0, v5}, Lcom/miui/antispam/firewall/FirewallLogFragment$4;-><init>(Lcom/miui/antispam/firewall/FirewallLogFragment;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 299
    :cond_0
    iget v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    const/16 v9, 0x66

    if-ne v8, v9, :cond_2

    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->inConversionMode()Z

    move-result v8

    if-nez v8, :cond_2

    .line 300
    const/4 v8, 0x3

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 301
    .local v7, type:I
    const/4 v8, 0x4

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 302
    .local v6, reason:I
    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    const/4 v8, 0x4

    if-eq v6, v8, :cond_1

    const/16 v8, 0x104

    if-eq v6, v8, :cond_1

    const/high16 v8, 0x1

    if-eq v6, v8, :cond_1

    const/high16 v8, 0x2

    if-ne v6, v8, :cond_2

    .line 308
    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    const v11, 0x7f06003f

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    new-instance v9, Lcom/miui/antispam/firewall/FirewallLogFragment$5;

    invoke-direct {v9, p0, v1}, Lcom/miui/antispam/firewall/FirewallLogFragment$5;-><init>(Lcom/miui/antispam/firewall/FirewallLogFragment;Landroid/database/Cursor;)V

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 328
    .end local v6           #reason:I
    .end local v7           #type:I
    :cond_2
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->inConversionMode()Z

    move-result v8

    if-nez v8, :cond_3

    .line 329
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const v11, 0x7f06003a

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    new-instance v9, Lcom/miui/antispam/firewall/FirewallLogFragment$6;

    invoke-direct {v9, p0, v1}, Lcom/miui/antispam/firewall/FirewallLogFragment$6;-><init>(Lcom/miui/antispam/firewall/FirewallLogFragment;Landroid/database/Cursor;)V

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 371
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v3           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v2

    .line 242
    .local v2, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 342
    .end local v2           #e:Ljava/lang/ClassCastException;
    .restart local v1       #cursor:Landroid/database/Cursor;
    .restart local v3       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #number:Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    const/4 v9, 0x7

    const/4 v10, 0x0

    const v11, 0x7f06003a

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    new-instance v9, Lcom/miui/antispam/firewall/FirewallLogFragment$7;

    invoke-direct {v9, p0, v1}, Lcom/miui/antispam/firewall/FirewallLogFragment$7;-><init>(Lcom/miui/antispam/firewall/FirewallLogFragment;Landroid/database/Cursor;)V

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 375
    iget v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    .line 376
    const/16 v0, 0xb

    const v1, 0x7f060055

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iget v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    .line 378
    const/16 v0, 0xc

    const v1, 0x7f060056

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x65

    const/4 v8, 0x0

    .line 105
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/miui/antispam/firewall/FirewallLogFragment;->setHasOptionsMenu(Z)V

    .line 106
    const/4 v6, 0x0

    .line 107
    .local v6, rootView:Landroid/view/View;
    if-eqz p3, :cond_0

    .line 108
    const-string v7, "query_target"

    invoke-virtual {p3, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    .line 110
    :cond_0
    iget v7, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    if-ne v7, v9, :cond_3

    .line 111
    const v7, 0x7f03000d

    invoke-virtual {p1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 116
    :goto_0
    iput-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryNumber:Ljava/lang/String;

    .line 117
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 118
    .local v1, i:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 119
    const-string v7, "data1"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 120
    .local v0, chars:Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryNumber:Ljava/lang/String;

    .line 122
    const-string v7, "original_number"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mOriginalQueryNumber:Ljava/lang/String;

    .line 126
    .end local v0           #chars:Ljava/lang/CharSequence;
    :cond_1
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryNumber:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 127
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryNumber:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/miui/antispam/firewall/FirewallLogFragment;->queryNameFromNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, name:Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f08000e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mCountView:Landroid/widget/TextView;

    .line 130
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f080009

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 131
    .local v5, nameView:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f080018

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 132
    .local v3, locationView:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryNumber:Ljava/lang/String;

    invoke-static {v7, v8}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, location:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 134
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 136
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .end local v2           #location:Ljava/lang/String;
    .end local v3           #locationView:Landroid/widget/TextView;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #nameView:Landroid/widget/TextView;
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->inConversionMode()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 148
    new-instance v7, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;

    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    iget v9, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    invoke-direct {v7, v8, v9}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    .line 153
    :goto_2
    const v7, 0x1020004

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mEmpty:Landroid/view/View;

    .line 154
    const v7, 0x7f08000c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListView:Landroid/widget/ListView;

    .line 155
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 156
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 157
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 158
    new-instance v7, Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;

    invoke-direct {v7, p0}, Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;-><init>(Lcom/miui/antispam/firewall/FirewallLogFragment;)V

    iput-object v7, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryHandler:Lcom/miui/antispam/firewall/FirewallLogFragment$QueryHandler;

    .line 159
    return-object v6

    .line 113
    .end local v1           #i:Landroid/content/Intent;
    :cond_3
    const v7, 0x7f030012

    invoke-virtual {p1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    goto/16 :goto_0

    .line 138
    .restart local v1       #i:Landroid/content/Intent;
    .restart local v2       #location:Ljava/lang/String;
    .restart local v3       #locationView:Landroid/widget/TextView;
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #nameView:Landroid/widget/TextView;
    :cond_4
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryNumber:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 142
    :cond_5
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryNumber:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 150
    .end local v2           #location:Ljava/lang/String;
    .end local v3           #locationView:Landroid/widget/TextView;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #nameView:Landroid/widget/TextView;
    :cond_6
    new-instance v7, Lcom/miui/antispam/firewall/FwlogListAdapter;

    iget-object v8, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    iget v9, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    invoke-direct {v7, v8, v9}, Lcom/miui/antispam/firewall/FwlogListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    goto :goto_2
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    .line 172
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ResourceCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 425
    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 427
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->inConversionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 428
    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 430
    iget v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    const/16 v5, 0x66

    if-eq v1, v5, :cond_0

    const-wide/16 v5, 0x1

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    .line 432
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 433
    iget-object v4, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    const/16 v5, 0x65

    if-ne v1, v5, :cond_1

    const-class v1, Lcom/miui/antispam/firewall/CallLogList;

    :goto_0
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 434
    const-string v1, "data1"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const-string v1, "original_number"

    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getOrigianlNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    invoke-virtual {p0, v3}, Lcom/miui/antispam/firewall/FirewallLogFragment;->startActivity(Landroid/content/Intent;)V

    .line 443
    :goto_1
    return-void

    .line 433
    :cond_1
    const-class v1, Lcom/miui/antispam/firewall/MmsLogList;

    goto :goto_0

    .line 442
    :cond_2
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v0, 0x1

    .line 384
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 418
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 387
    :pswitch_0
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "type=?"

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 397
    :goto_1
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->startQuery()V

    goto :goto_0

    .line 391
    :cond_0
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "type=? AND number=?"

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mOriginalQueryNumber:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 401
    :pswitch_1
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "type=? OR type=?"

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 414
    :goto_2
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->startQuery()V

    goto :goto_0

    .line 407
    :cond_1
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(type=? OR type=?) AND number=?"

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v5, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mOriginalQueryNumber:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 384
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 176
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 177
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->startQuery()V

    .line 178
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 98
    const-string v0, "query_target"

    iget v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 100
    return-void
.end method
