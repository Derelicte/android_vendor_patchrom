.class public final Lcom/miui/antispam/firewall/WhiteListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "WhiteListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/firewall/WhiteListAdapter$QueryHandler;,
        Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mQueryHandler:Lcom/miui/antispam/firewall/WhiteListAdapter$QueryHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 33
    const v0, 0x7f030016

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 35
    iput-object p1, p0, Lcom/miui/antispam/firewall/WhiteListAdapter;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Lcom/miui/antispam/firewall/WhiteListAdapter$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/miui/antispam/firewall/WhiteListAdapter$QueryHandler;-><init>(Lcom/miui/antispam/firewall/WhiteListAdapter;Lcom/miui/antispam/firewall/WhiteListAdapter;)V

    iput-object v0, p0, Lcom/miui/antispam/firewall/WhiteListAdapter;->mQueryHandler:Lcom/miui/antispam/firewall/WhiteListAdapter$QueryHandler;

    .line 37
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/miui/antispam/firewall/WhiteListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    return-void
.end method

.method static synthetic access$100(Lcom/miui/antispam/firewall/WhiteListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/antispam/firewall/WhiteListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static add(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "number"
    .parameter "notes"

    .prologue
    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 61
    .local v1, resovler:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 62
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "_id"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v3, "notes"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object v3, Lmiui/provider/ExtraTelephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 68
    invoke-static {p0, p1}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getBlacklistId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, blacklistId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 70
    invoke-static {p0, v0}, Lcom/miui/antispam/firewall/BlackListAdapter;->remove(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getBlacklistId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 240
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 244
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 245
    .local v7, result:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-static {v6}, Lcom/miui/antispam/firewall/BlackListAdapter;->getId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    .line 249
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 251
    :cond_1
    return-object v7
.end method

.method public static getId(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNotes(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 159
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNumber(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getDialableNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static remove(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/16 v1, 0xc

    const/4 v2, 0x0

    .line 45
    iget-object v0, p0, Lcom/miui/antispam/firewall/WhiteListAdapter;->mQueryHandler:Lcom/miui/antispam/firewall/WhiteListAdapter$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/miui/antispam/firewall/WhiteListAdapter$QueryHandler;->cancelOperation(I)V

    .line 46
    iget-object v0, p0, Lcom/miui/antispam/firewall/WhiteListAdapter;->mQueryHandler:Lcom/miui/antispam/firewall/WhiteListAdapter$QueryHandler;

    sget-object v3, Lmiui/provider/ExtraTelephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antispam/firewall/WhiteListAdapter$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "id"
    .parameter "notes"

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 79
    .local v0, resovler:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 80
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "notes"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v2, Lmiui/provider/ExtraTelephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 2
    .parameter "number"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/antispam/firewall/WhiteListAdapter;->mContext:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0, p1, v1}, Lcom/miui/antispam/firewall/WhiteListAdapter;->add(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;

    .line 165
    .local v6, main:Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;
    invoke-static {p3}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    .line 166
    .local v8, number:Ljava/lang/String;
    iput-object v8, v6, Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;->number:Ljava/lang/String;

    .line 167
    invoke-virtual {v6}, Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;->setGone()V

    .line 170
    invoke-static {p3}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getNotes(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    .line 171
    .local v7, name:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 177
    .local v9, phoneCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 178
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 181
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 185
    .end local v9           #phoneCursor:Landroid/database/Cursor;
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 186
    iget-object v0, v6, Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;->whitelistName:Landroid/widget/TextView;

    #calls: Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    invoke-static {v6, v0, v7}, Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;->access$000(Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, v6, Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;->whitelistNumber:Landroid/widget/TextView;

    #calls: Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    invoke-static {v6, v0, v8}, Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;->access$000(Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_2
    iget-object v0, v6, Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;->whitelistName:Landroid/widget/TextView;

    #calls: Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    invoke-static {v6, v0, v8}, Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;->access$000(Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 104
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 106
    .local v0, count:I
    if-nez v0, :cond_1

    .line 108
    .end local v0           #count:I
    :cond_0
    :goto_0
    return v1

    .line 106
    .restart local v0       #count:I
    :cond_1
    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 113
    if-nez p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-object v0

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/WhiteListAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Landroid/widget/ResourceCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v2, 0x7f030006

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/WhiteListAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    if-nez p1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/miui/antispam/firewall/WhiteListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030015

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 145
    :cond_0
    :goto_0
    return-object v0

    .line 128
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/miui/antispam/firewall/WhiteListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_2
    if-nez p1, :cond_3

    .line 136
    iget-object v1, p0, Lcom/miui/antispam/firewall/WhiteListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 141
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;

    if-eqz v1, :cond_4

    .line 142
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_4
    invoke-super {p0, p1, v0, p3}, Landroid/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/miui/antispam/firewall/WhiteListAdapter;->startQuery()V

    .line 42
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 195
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 196
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;

    invoke-direct {v1, v0}, Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 197
    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/antispam/firewall/WhiteListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/antispam/firewall/WhiteListAdapter;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    return-void
.end method
