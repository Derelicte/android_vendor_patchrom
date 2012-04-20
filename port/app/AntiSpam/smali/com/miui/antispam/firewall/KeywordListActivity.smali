.class public Lcom/miui/antispam/firewall/KeywordListActivity;
.super Landroid/app/Activity;
.source "KeywordListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/firewall/KeywordListActivity$ListViews;,
        Lcom/miui/antispam/firewall/KeywordListActivity$KeywordListAdapter;,
        Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;
    }
.end annotation


# instance fields
.field private mListAdapter:Landroid/widget/ResourceCursorAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mNewDialog:Landroid/app/AlertDialog;

.field private mNewView:Landroid/widget/TextView;

.field private mQueryHandler:Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;

.field private mSelectedId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 226
    return-void
.end method

.method static synthetic access$000(Lcom/miui/antispam/firewall/KeywordListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->add()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/antispam/firewall/KeywordListActivity;)Landroid/widget/ResourceCursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/antispam/firewall/KeywordListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/antispam/firewall/KeywordListActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mSelectedId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/antispam/firewall/KeywordListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/miui/antispam/firewall/KeywordListActivity;->addMultiple(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/antispam/firewall/KeywordListActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/miui/antispam/firewall/KeywordListActivity;->update(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private add()V
    .locals 4

    .prologue
    .line 248
    const-string v1, ""

    iput-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mSelectedId:Ljava/lang/String;

    .line 250
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 254
    .local v0, window:Landroid/view/Window;
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 257
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 258
    return-void
.end method

.method private add(Ljava/lang/String;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 291
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/antispam/firewall/KeywordListActivity;->isKeyword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    const v2, 0x7f060053

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/miui/antispam/firewall/KeywordListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 303
    :cond_1
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 304
    .local v0, resovler:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 305
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sget-object v2, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 310
    invoke-direct {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->startQuery()V

    goto :goto_0
.end method

.method private addMultiple(Ljava/lang/String;)V
    .locals 6
    .parameter "data"

    .prologue
    .line 276
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 277
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 288
    :cond_0
    return-void

    .line 281
    :cond_1
    const-string v5, ",|\uff0c"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, subStrs:[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 284
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 285
    .local v2, item:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/miui/antispam/firewall/KeywordListActivity;->add(Ljava/lang/String;)V

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private buildNewDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 332
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000a

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewView:Landroid/widget/TextView;

    .line 334
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 335
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 336
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 338
    const v1, 0x7f06003b

    new-instance v2, Lcom/miui/antispam/firewall/KeywordListActivity$2;

    invoke-direct {v2, p0}, Lcom/miui/antispam/firewall/KeywordListActivity$2;-><init>(Lcom/miui/antispam/firewall/KeywordListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 350
    const v1, 0x7f06003c

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 351
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewDialog:Landroid/app/AlertDialog;

    .line 352
    return-void
.end method

.method private edit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "id"
    .parameter "data"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mSelectedId:Ljava/lang/String;

    .line 237
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 241
    .local v0, window:Landroid/view/Window;
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 244
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mNewDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 245
    return-void
.end method

.method private isKeyword(Ljava/lang/String;)Z
    .locals 8
    .parameter "keyword"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 314
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 315
    .local v0, resovler:Landroid/content/ContentResolver;
    sget-object v1, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "data"

    aput-object v3, v2, v5

    const-string v3, "data=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 322
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 323
    .local v7, result:Z
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    const/4 v7, 0x1

    .line 327
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 328
    :cond_1
    return v7
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mQueryHandler:Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;->cancelOperation(I)V

    .line 177
    iget-object v0, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mQueryHandler:Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;

    sget-object v3, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method private update(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "id"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 261
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 262
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 267
    .local v0, resovler:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 268
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    sget-object v2, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 272
    invoke-direct {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->startQuery()V

    goto :goto_0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 94
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v6

    check-cast v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .local v6, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v9, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    iget v10, v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v9, v10}, Landroid/widget/ResourceCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 100
    .local v2, cursor:Landroid/database/Cursor;
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 101
    .local v0, _id:J
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, data:Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    .end local v0           #_id:J
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v3           #data:Ljava/lang/String;
    .end local v6           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_0
    return v7

    .line 95
    :catch_0
    move-exception v4

    .local v4, e:Ljava/lang/ClassCastException;
    move v7, v8

    .line 96
    goto :goto_0

    .line 106
    .end local v4           #e:Ljava/lang/ClassCastException;
    .restart local v0       #_id:J
    .restart local v2       #cursor:Landroid/database/Cursor;
    .restart local v3       #data:Ljava/lang/String;
    .restart local v6       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :pswitch_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, id:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9, v11, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 110
    invoke-direct {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->startQuery()V

    goto :goto_0

    .line 115
    .end local v5           #id:Ljava/lang/String;
    :pswitch_1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 116
    .restart local v5       #id:Ljava/lang/String;
    invoke-direct {p0, v5, v3}, Lcom/miui/antispam/firewall/KeywordListActivity;->edit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v2, 0x7f030008

    invoke-virtual {p0, v2}, Lcom/miui/antispam/firewall/KeywordListActivity;->setContentView(I)V

    .line 61
    const v2, 0x7f08000c

    invoke-virtual {p0, v2}, Lcom/miui/antispam/firewall/KeywordListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListView:Landroid/widget/ListView;

    .line 63
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030007

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 64
    .local v1, v:Landroid/view/View;
    iget-object v2, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 66
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030006

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, addNumberView:Landroid/view/View;
    new-instance v2, Lcom/miui/antispam/firewall/KeywordListActivity$1;

    invoke-direct {v2, p0}, Lcom/miui/antispam/firewall/KeywordListActivity$1;-><init>(Lcom/miui/antispam/firewall/KeywordListActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v2, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 74
    new-instance v2, Lcom/miui/antispam/firewall/KeywordListActivity$KeywordListAdapter;

    invoke-direct {v2, p0, p0}, Lcom/miui/antispam/firewall/KeywordListActivity$KeywordListAdapter;-><init>(Lcom/miui/antispam/firewall/KeywordListActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    .line 75
    iget-object v2, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    iget-object v2, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 78
    iget-object v2, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 79
    new-instance v2, Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;

    invoke-direct {v2, p0}, Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;-><init>(Lcom/miui/antispam/firewall/KeywordListActivity;)V

    iput-object v2, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mQueryHandler:Lcom/miui/antispam/firewall/KeywordListActivity$QueryHandler;

    .line 80
    invoke-direct {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->buildNewDialog()V

    .line 81
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 82
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 129
    :try_start_0
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .local v4, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v5, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-ge v5, v9, :cond_0

    .line 143
    .end local v4           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v3

    .line 131
    .local v3, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 136
    .end local v3           #e:Ljava/lang/ClassCastException;
    .restart local v4       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_0
    iget-object v5, p0, Lcom/miui/antispam/firewall/KeywordListActivity;->mListAdapter:Landroid/widget/ResourceCursorAdapter;

    iget v6, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v5, v6}, Landroid/widget/ResourceCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 138
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, data:Ljava/lang/String;
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 141
    const v5, 0x7f06004f

    invoke-interface {p1, v7, v9, v7, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 142
    const v5, 0x7f06003a

    invoke-interface {p1, v7, v8, v7, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 148
    const/4 v0, 0x3

    const v1, 0x7f060052

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 172
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    .line 173
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 156
    :sswitch_0
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 157
    invoke-direct {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->startQuery()V

    goto :goto_0

    .line 160
    :sswitch_1
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/miui/antispam/firewall/FirewallTab;->gotoTab(Landroid/content/Context;I)V

    .line 162
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->finish()V

    goto :goto_0

    .line 154
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 87
    invoke-direct {p0}, Lcom/miui/antispam/firewall/KeywordListActivity;->startQuery()V

    .line 88
    return-void
.end method
