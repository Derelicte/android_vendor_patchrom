.class public Lcom/miui/milk/control/local/AccountController;
.super Lcom/miui/milk/control/local/BaseController;
.source "AccountController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/control/local/AccountController$1;,
        Lcom/miui/milk/control/local/AccountController$DatabaseHelper;,
        Lcom/miui/milk/control/local/AccountController$Authokens;,
        Lcom/miui/milk/control/local/AccountController$AccountItem;
    }
.end annotation


# static fields
.field private static final COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

.field private static final COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

.field private static sSupportAccountType:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/control/local/AccountController$AccountItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthokensMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/control/local/AccountController$Authokens;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mExtrasMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/milk/control/local/AccountController;->sSupportAccountType:Ljava/util/HashSet;

    .line 35
    sget-object v0, Lcom/miui/milk/control/local/AccountController;->sSupportAccountType:Ljava/util/HashSet;

    const-string v1, "com.miui.auth"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/miui/milk/control/local/AccountController;->sSupportAccountType:Ljava/util/HashSet;

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/miui/milk/control/local/AccountController;->sSupportAccountType:Ljava/util/HashSet;

    const-string v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/miui/milk/control/local/AccountController;->sSupportAccountType:Ljava/util/HashSet;

    const-string v1, "com.android.exchange"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 228
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "key"

    aput-object v1, v0, v2

    const-string v1, "value"

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/milk/control/local/AccountController;->COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    .line 232
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "type"

    aput-object v1, v0, v2

    const-string v1, "authtoken"

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/milk/control/local/AccountController;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/miui/milk/control/local/BaseController;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/control/local/AccountController;->mAccountList:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/control/local/AccountController;->mAuthokensMap:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/control/local/AccountController;->mExtrasMap:Ljava/util/HashMap;

    .line 47
    return-void
.end method

.method private readAccountsTable()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 98
    iget-object v0, p0, Lcom/miui/milk/control/local/AccountController;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 99
    iget-object v0, p0, Lcom/miui/milk/control/local/AccountController;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "accounts"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v10

    const-string v4, "type"

    aput-object v4, v2, v11

    const-string v4, "name"

    aput-object v4, v2, v12

    const-string v4, "password"

    aput-object v4, v2, v13

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 106
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 126
    :goto_0
    return-void

    .line 110
    :cond_0
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    new-instance v8, Lcom/miui/milk/control/local/AccountController$AccountItem;

    invoke-direct {v8, v3}, Lcom/miui/milk/control/local/AccountController$AccountItem;-><init>(Lcom/miui/milk/control/local/AccountController$1;)V

    .line 112
    .local v8, account:Lcom/miui/milk/control/local/AccountController$AccountItem;
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/miui/milk/control/local/AccountController$AccountItem;->id:J

    .line 113
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/miui/milk/control/local/AccountController$AccountItem;->type:Ljava/lang/String;

    .line 114
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/miui/milk/control/local/AccountController$AccountItem;->name:Ljava/lang/String;

    .line 115
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/miui/milk/control/local/AccountController$AccountItem;->password:Ljava/lang/String;

    .line 116
    sget-object v0, Lcom/miui/milk/control/local/AccountController;->sSupportAccountType:Ljava/util/HashSet;

    iget-object v1, v8, Lcom/miui/milk/control/local/AccountController$AccountItem;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "com.android.email"

    iget-object v1, v8, Lcom/miui/milk/control/local/AccountController$AccountItem;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.exchange"

    iget-object v1, v8, Lcom/miui/milk/control/local/AccountController$AccountItem;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/miui/milk/control/local/AccountController;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/miui/milk/control/local/AccountController;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 124
    .end local v8           #account:Lcom/miui/milk/control/local/AccountController$AccountItem;
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 125
    iget-object v0, p0, Lcom/miui/milk/control/local/AccountController;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/miui/milk/control/local/AccountController;->mTotalImportSize:J

    goto :goto_0
.end method

.method private readAuthokensTable()V
    .locals 15

    .prologue
    .line 155
    iget-object v0, p0, Lcom/miui/milk/control/local/AccountController;->mAuthokensMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 156
    iget-object v0, p0, Lcom/miui/milk/control/local/AccountController;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/milk/control/local/AccountController$AccountItem;

    .line 157
    .local v10, accountItem:Lcom/miui/milk/control/local/AccountController$AccountItem;
    iget-wide v8, v10, Lcom/miui/milk/control/local/AccountController$AccountItem;->id:J

    .line 159
    .local v8, accountId:J
    iget-object v0, p0, Lcom/miui/milk/control/local/AccountController;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "authtokens"

    sget-object v2, Lcom/miui/milk/control/local/AccountController;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    const-string v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, v10, Lcom/miui/milk/control/local/AccountController$AccountItem;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v10, Lcom/miui/milk/control/local/AccountController$AccountItem;->type:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 166
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_0

    .line 170
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v12, authokensList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/control/local/AccountController$Authokens;>;"
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    new-instance v11, Lcom/miui/milk/control/local/AccountController$Authokens;

    const/4 v0, 0x0

    invoke-direct {v11, v0}, Lcom/miui/milk/control/local/AccountController$Authokens;-><init>(Lcom/miui/milk/control/local/AccountController$1;)V

    .line 173
    .local v11, authokens:Lcom/miui/milk/control/local/AccountController$Authokens;
    const/4 v0, 0x0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/miui/milk/control/local/AccountController$Authokens;->type:Ljava/lang/String;

    .line 174
    const/4 v0, 0x1

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/miui/milk/control/local/AccountController$Authokens;->authtoken:Ljava/lang/String;

    .line 175
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 177
    .end local v11           #authokens:Lcom/miui/milk/control/local/AccountController$Authokens;
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 178
    iget-object v0, p0, Lcom/miui/milk/control/local/AccountController;->mAuthokensMap:Ljava/util/HashMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 180
    .end local v8           #accountId:J
    .end local v10           #accountItem:Lcom/miui/milk/control/local/AccountController$AccountItem;
    .end local v12           #authokensList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/control/local/AccountController$Authokens;>;"
    .end local v13           #cursor:Landroid/database/Cursor;
    :cond_2
    return-void
.end method

.method private readExtraTable()V
    .locals 17

    .prologue
    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/milk/control/local/AccountController;->mExtrasMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/milk/control/local/AccountController;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/milk/control/local/AccountController$AccountItem;

    .line 131
    .local v11, accountItem:Lcom/miui/milk/control/local/AccountController$AccountItem;
    iget-wide v9, v11, Lcom/miui/milk/control/local/AccountController$AccountItem;->id:J

    .line 132
    .local v9, accountId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/milk/control/local/AccountController;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "extras"

    sget-object v3, Lcom/miui/milk/control/local/AccountController;->COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    const-string v4, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, v11, Lcom/miui/milk/control/local/AccountController$AccountItem;->name:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v11, Lcom/miui/milk/control/local/AccountController$AccountItem;->type:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 139
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_0

    .line 143
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 144
    .local v12, bundle:Landroid/os/Bundle;
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 146
    .local v15, tmpkey:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 147
    .local v16, value:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 149
    .end local v15           #tmpkey:Ljava/lang/String;
    .end local v16           #value:Ljava/lang/String;
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/milk/control/local/AccountController;->mExtrasMap:Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 152
    .end local v9           #accountId:J
    .end local v11           #accountItem:Lcom/miui/milk/control/local/AccountController$AccountItem;
    .end local v12           #bundle:Landroid/os/Bundle;
    .end local v13           #cursor:Landroid/database/Cursor;
    :cond_2
    return-void
.end method


# virtual methods
.method public export(Ljava/io/File;)V
    .locals 0
    .parameter "exportFile"

    .prologue
    .line 52
    return-void
.end method

.method public importData(Ljava/io/File;)V
    .locals 14
    .parameter "importFile"

    .prologue
    .line 71
    iget-object v10, p0, Lcom/miui/milk/control/local/AccountController;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    .line 72
    .local v4, accountManager:Landroid/accounts/AccountManager;
    iget-object v10, p0, Lcom/miui/milk/control/local/AccountController;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/milk/control/local/AccountController$AccountItem;

    .line 73
    .local v3, accountItem:Lcom/miui/milk/control/local/AccountController$AccountItem;
    iget-boolean v10, p0, Lcom/miui/milk/control/local/AccountController;->mCanceled:Z

    if-eqz v10, :cond_2

    .line 94
    .end local v3           #accountItem:Lcom/miui/milk/control/local/AccountController$AccountItem;
    :cond_1
    iget-object v10, p0, Lcom/miui/milk/control/local/AccountController;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 95
    return-void

    .line 76
    .restart local v3       #accountItem:Lcom/miui/milk/control/local/AccountController$AccountItem;
    :cond_2
    iget-wide v1, v3, Lcom/miui/milk/control/local/AccountController$AccountItem;->id:J

    .line 77
    .local v1, accountId:J
    new-instance v0, Landroid/accounts/Account;

    iget-object v10, v3, Lcom/miui/milk/control/local/AccountController$AccountItem;->name:Ljava/lang/String;

    iget-object v11, v3, Lcom/miui/milk/control/local/AccountController$AccountItem;->type:Ljava/lang/String;

    invoke-direct {v0, v10, v11}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .local v0, account:Landroid/accounts/Account;
    const/4 v9, 0x0

    .line 80
    .local v9, success:Z
    :try_start_0
    iget-object v11, v3, Lcom/miui/milk/control/local/AccountController$AccountItem;->password:Ljava/lang/String;

    iget-object v10, p0, Lcom/miui/milk/control/local/AccountController;->mExtrasMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    invoke-virtual {v4, v0, v11, v10}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 86
    :goto_0
    iget-wide v10, p0, Lcom/miui/milk/control/local/AccountController;->mCurrImportIndex:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/miui/milk/control/local/AccountController;->mCurrImportIndex:J

    .line 87
    if-eqz v9, :cond_0

    .line 88
    iget-object v10, p0, Lcom/miui/milk/control/local/AccountController;->mAuthokensMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 89
    .local v6, authokensList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/control/local/AccountController$Authokens;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/milk/control/local/AccountController$Authokens;

    .line 90
    .local v5, authoken:Lcom/miui/milk/control/local/AccountController$Authokens;
    iget-object v10, v5, Lcom/miui/milk/control/local/AccountController$Authokens;->type:Ljava/lang/String;

    iget-object v11, v5, Lcom/miui/milk/control/local/AccountController$Authokens;->authtoken:Ljava/lang/String;

    invoke-virtual {v4, v0, v10, v11}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 83
    .end local v5           #authoken:Lcom/miui/milk/control/local/AccountController$Authokens;
    .end local v6           #authokensList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/control/local/AccountController$Authokens;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v10

    goto :goto_0
.end method

.method public prepareImport(Ljava/io/File;)V
    .locals 5
    .parameter "importFile"

    .prologue
    .line 55
    iget-object v3, p0, Lcom/miui/milk/control/local/AccountController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 56
    .local v0, accountManager:Landroid/accounts/AccountManager;
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 57
    .local v2, existAccounts:[Landroid/accounts/Account;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 67
    :goto_0
    return-void

    .line 60
    :cond_0
    new-instance v1, Lcom/miui/milk/control/local/AccountController$DatabaseHelper;

    iget-object v3, p0, Lcom/miui/milk/control/local/AccountController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Lcom/miui/milk/control/local/AccountController$DatabaseHelper;-><init>(Lcom/miui/milk/control/local/AccountController;Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    .local v1, databaseHelper:Lcom/miui/milk/control/local/AccountController$DatabaseHelper;
    invoke-virtual {v1}, Lcom/miui/milk/control/local/AccountController$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/control/local/AccountController;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 62
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/miui/milk/control/local/AccountController;->mCurrImportIndex:J

    .line 64
    invoke-direct {p0}, Lcom/miui/milk/control/local/AccountController;->readAccountsTable()V

    .line 65
    invoke-direct {p0}, Lcom/miui/milk/control/local/AccountController;->readExtraTable()V

    .line 66
    invoke-direct {p0}, Lcom/miui/milk/control/local/AccountController;->readAuthokensTable()V

    goto :goto_0
.end method
