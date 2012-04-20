.class public Lcom/miui/antispam/firewall/AddFirewall;
.super Landroid/app/Activity;
.source "AddFirewall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/firewall/AddFirewall$1;,
        Lcom/miui/antispam/firewall/AddFirewall$OKListener;,
        Lcom/miui/antispam/firewall/AddFirewall$CancelListener;,
        Lcom/miui/antispam/firewall/AddFirewall$Cancel;
    }
.end annotation


# static fields
.field public static MODE:Ljava/lang/String;


# instance fields
.field private mId:Ljava/lang/String;

.field private mImportMs:Landroid/widget/CheckBox;

.field private mImportMsText:Landroid/widget/TextView;

.field private mMode:I

.field private mNotesView:Landroid/widget/TextView;

.field private mNumberEdit:Landroid/widget/TextView;

.field private mNumberView:Landroid/widget/TextView;

.field private mPhoneNumbers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "mode"

    sput-object v0, Lcom/miui/antispam/firewall/AddFirewall;->MODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 168
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/antispam/firewall/AddFirewall;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/miui/antispam/firewall/AddFirewall;->isInWhitelist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/miui/antispam/firewall/AddFirewall;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall;->mId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/antispam/firewall/AddFirewall;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/miui/antispam/firewall/AddFirewall;->mMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/miui/antispam/firewall/AddFirewall;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall;->mPhoneNumbers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/antispam/firewall/AddFirewall;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/miui/antispam/firewall/AddFirewall;->isInBlacklist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall;->mNotesView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall;->mImportMs:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/antispam/firewall/AddFirewall;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/miui/antispam/firewall/AddFirewall;->importMessage([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall;->mNumberEdit:Landroid/widget/TextView;

    return-object v0
.end method

.method private importMessage([Ljava/lang/String;)V
    .locals 20
    .parameter "numbers"

    .prologue
    .line 283
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v1, v0

    if-nez v1, :cond_1

    .line 343
    :cond_0
    return-void

    .line 286
    :cond_1
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v16, normalizedNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v8, p1

    .local v8, arr$:[Ljava/lang/String;
    array-length v15, v8

    .local v15, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    if-ge v11, v15, :cond_3

    aget-object v17, v8, v11

    .line 289
    .local v17, number:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 290
    invoke-static/range {v17 .. v17}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getHashString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 294
    .end local v17           #number:Ljava/lang/String;
    :cond_3
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v14, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v8, p1

    array-length v15, v8

    const/4 v11, 0x0

    move v12, v11

    .end local v11           #i$:I
    .local v12, i$:I
    :goto_1
    if-ge v12, v15, :cond_9

    aget-object v18, v8, v12

    .line 297
    .local v18, phoneNumber:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/antispam/firewall/AddFirewall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "address"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "body"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "date"

    aput-object v5, v3, v4

    const-string v4, "PHONE_NUMBERS_EQUAL(address, ?)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v18, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 308
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_8

    .line 309
    .end local v12           #i$:I
    :cond_4
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 310
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 313
    .local v7, address:Ljava/lang/String;
    const/4 v10, 0x0

    .line 314
    .local v10, found:Z
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 315
    .restart local v17       #number:Ljava/lang/String;
    invoke-static {v7}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getHashString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 316
    const/4 v10, 0x1

    .line 321
    .end local v17           #number:Ljava/lang/String;
    :cond_6
    if-eqz v10, :cond_4

    .line 322
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 325
    .local v19, values:Landroid/content/ContentValues;
    const-string v1, "number"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v1, "date"

    const/4 v2, 0x3

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 327
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 328
    const-string v1, "data1"

    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v1, "reason"

    const/high16 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    const-string v1, "read"

    const-string v2, "1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/miui/antispam/firewall/AddFirewall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_2

    .line 336
    .end local v7           #address:Ljava/lang/String;
    .end local v10           #found:Z
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v19           #values:Landroid/content/ContentValues;
    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 296
    :cond_8
    add-int/lit8 v11, v12, 0x1

    .local v11, i$:I
    move v12, v11

    .end local v11           #i$:I
    .restart local v12       #i$:I
    goto/16 :goto_1

    .line 340
    .end local v9           #c:Landroid/database/Cursor;
    .end local v18           #phoneNumber:Ljava/lang/String;
    :cond_9
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v12           #i$:I
    .local v11, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 341
    .local v13, id:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/antispam/firewall/AddFirewall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3
.end method

.method private isInBlacklist(Ljava/lang/String;)Z
    .locals 8
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    .line 247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v7, 0x0

    .line 261
    :cond_0
    :goto_0
    return v7

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/AddFirewall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 253
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 254
    .local v7, result:Z
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    const/4 v7, 0x1

    .line 260
    :goto_1
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 257
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private isInWhitelist(Ljava/lang/String;)Z
    .locals 8
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    .line 265
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v7, 0x0

    .line 279
    :cond_0
    :goto_0
    return v7

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/AddFirewall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 271
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 272
    .local v7, result:Z
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    const/4 v7, 0x1

    .line 278
    :goto_1
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 275
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "icicle"

    .prologue
    .line 60
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    const/high16 v13, 0x7f03

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 63
    .local v11, view:Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 66
    const/high16 v12, 0x7f08

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, p0, Lcom/miui/antispam/firewall/AddFirewall;->mNumberView:Landroid/widget/TextView;

    .line 67
    const v12, 0x7f080001

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, p0, Lcom/miui/antispam/firewall/AddFirewall;->mNumberEdit:Landroid/widget/TextView;

    .line 68
    const v12, 0x7f080002

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, p0, Lcom/miui/antispam/firewall/AddFirewall;->mNotesView:Landroid/widget/TextView;

    .line 69
    const v12, 0x7f080003

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    iput-object v12, p0, Lcom/miui/antispam/firewall/AddFirewall;->mImportMs:Landroid/widget/CheckBox;

    .line 70
    const v12, 0x7f080004

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, p0, Lcom/miui/antispam/firewall/AddFirewall;->mImportMsText:Landroid/widget/TextView;

    .line 71
    const/4 v10, 0x0

    .line 73
    .local v10, showTextEdit:Z
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/AddFirewall;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 74
    .local v3, i:Landroid/content/Intent;
    sget-object v12, Lcom/miui/antispam/firewall/AddFirewall;->MODE:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/miui/antispam/firewall/AddFirewall;->mMode:I

    .line 75
    const-string v12, "id"

    invoke-virtual {v3, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/miui/antispam/firewall/AddFirewall;->mId:Ljava/lang/String;

    .line 76
    const-string v12, "number"

    invoke-virtual {v3, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 77
    .local v9, phoneNumber:Ljava/lang/String;
    const-string v12, "notes"

    invoke-virtual {v3, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, notes:Ljava/lang/String;
    iget v12, p0, Lcom/miui/antispam/firewall/AddFirewall;->mMode:I

    packed-switch v12, :pswitch_data_0

    .line 140
    :goto_0
    if-eqz v10, :cond_3

    .line 141
    iget-object v12, p0, Lcom/miui/antispam/firewall/AddFirewall;->mNumberEdit:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    :goto_1
    const v12, 0x7f060061

    new-instance v13, Lcom/miui/antispam/firewall/AddFirewall$OKListener;

    const/4 v14, 0x0

    invoke-direct {v13, p0, v14}, Lcom/miui/antispam/firewall/AddFirewall$OKListener;-><init>(Lcom/miui/antispam/firewall/AddFirewall;Lcom/miui/antispam/firewall/AddFirewall$1;)V

    invoke-virtual {v1, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    const v12, 0x7f060062

    new-instance v13, Lcom/miui/antispam/firewall/AddFirewall$CancelListener;

    const/4 v14, 0x0

    invoke-direct {v13, p0, v14}, Lcom/miui/antispam/firewall/AddFirewall$CancelListener;-><init>(Lcom/miui/antispam/firewall/AddFirewall;Lcom/miui/antispam/firewall/AddFirewall$1;)V

    invoke-virtual {v1, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 149
    new-instance v12, Lcom/miui/antispam/firewall/AddFirewall$Cancel;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/miui/antispam/firewall/AddFirewall$Cancel;-><init>(Lcom/miui/antispam/firewall/AddFirewall;Lcom/miui/antispam/firewall/AddFirewall$1;)V

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 151
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 152
    return-void

    .line 81
    :pswitch_0
    const v12, 0x7f060063

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 83
    const-string v12, "numbers"

    invoke-virtual {v3, v12}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/miui/antispam/firewall/AddFirewall;->mPhoneNumbers:[Ljava/lang/String;

    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v6, message:Ljava/lang/StringBuilder;
    iget-object v12, p0, Lcom/miui/antispam/firewall/AddFirewall;->mPhoneNumbers:[Ljava/lang/String;

    if-eqz v12, :cond_2

    .line 86
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall;->mPhoneNumbers:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_1

    aget-object v8, v0, v4

    .line 87
    .local v8, number:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_0

    .line 88
    const-string v12, "\n"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_0
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 93
    .end local v8           #number:Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getFirewallEnalbed(Landroid/content/Context;)Z

    move-result v2

    .line 94
    .local v2, enableFirewall:Z
    if-nez v2, :cond_2

    .line 96
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\n\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f060046

    invoke-virtual {p0, v13}, Lcom/miui/antispam/firewall/AddFirewall;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #enableFirewall:Z
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_2
    const/4 v10, 0x0

    .line 100
    iget-object v12, p0, Lcom/miui/antispam/firewall/AddFirewall;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v12, p0, Lcom/miui/antispam/firewall/AddFirewall;->mImportMs:Landroid/widget/CheckBox;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 102
    iget-object v12, p0, Lcom/miui/antispam/firewall/AddFirewall;->mImportMsText:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 107
    .end local v6           #message:Ljava/lang/StringBuilder;
    :pswitch_1
    const v12, 0x7f060063

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 108
    const/4 v10, 0x1

    .line 109
    iget-object v12, p0, Lcom/miui/antispam/firewall/AddFirewall;->mImportMs:Landroid/widget/CheckBox;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 110
    iget-object v12, p0, Lcom/miui/antispam/firewall/AddFirewall;->mImportMsText:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 115
    :pswitch_2
    const v12, 0x7f060064

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 116
    const/4 v10, 0x1

    .line 117
    goto/16 :goto_0

    .line 121
    :pswitch_3
    const v12, 0x7f060065

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 122
    const/4 v10, 0x0

    .line 123
    iget-object v12, p0, Lcom/miui/antispam/firewall/AddFirewall;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v12, p0, Lcom/miui/antispam/firewall/AddFirewall;->mNotesView:Landroid/widget/TextView;

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 129
    :pswitch_4
    const v12, 0x7f060066

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 130
    const/4 v10, 0x0

    .line 131
    iget-object v12, p0, Lcom/miui/antispam/firewall/AddFirewall;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v12, p0, Lcom/miui/antispam/firewall/AddFirewall;->mNotesView:Landroid/widget/TextView;

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 144
    :cond_3
    iget-object v12, p0, Lcom/miui/antispam/firewall/AddFirewall;->mNumberView:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
