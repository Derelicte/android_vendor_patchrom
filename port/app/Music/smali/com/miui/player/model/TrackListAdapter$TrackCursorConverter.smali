.class public Lcom/miui/player/model/TrackListAdapter$TrackCursorConverter;
.super Ljava/lang/Object;
.source "TrackListAdapter.java"

# interfaces
.implements Lcom/miui/player/model/SectionCursor$CursorConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackCursorConverter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toArray(Landroid/database/Cursor;)Lcom/miui/player/model/SectionCursor$ConvertResult;
    .locals 11
    .parameter "cursor"

    .prologue
    .line 73
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    new-array v5, v8, [[Ljava/lang/Object;

    .line 76
    .local v5, records:[[Ljava/lang/Object;
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, rawColumnNames:[Ljava/lang/String;
    array-length v8, v4

    add-int/lit8 v8, v8, 0x1

    new-array v2, v8, [Ljava/lang/String;

    .line 78
    .local v2, columnNames:[Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x0

    array-length v10, v4

    invoke-static {v4, v8, v2, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    array-length v8, v2

    add-int/lit8 v8, v8, -0x1

    const-string v9, "sort_key"

    aput-object v9, v2, v8

    .line 81
    invoke-static {}, Lcom/miui/player/util/LocaleUtils;->getIntance()Lcom/miui/player/util/LocaleUtils;

    move-result-object v3

    .line 83
    .local v3, locale:Lcom/miui/player/util/LocaleUtils;
    array-length v1, v2

    .line 84
    .local v1, columnCount:I
    const/4 v6, 0x0

    .line 85
    .local v6, row:I
    array-length v8, v4

    sget-object v9, Lcom/miui/player/model/TrackListAdapter;->TRACK_COLUMNS:[Ljava/lang/String;

    array-length v9, v9

    if-ne v8, v9, :cond_0

    .line 86
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 87
    new-array v0, v1, [Ljava/lang/Object;

    .line 88
    .local v0, colVals:[Ljava/lang/Object;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v8

    .line 89
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    .line 90
    const/4 v8, 0x2

    const/4 v9, 0x2

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    .line 91
    const/4 v8, 0x3

    const/4 v9, 0x3

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    .line 92
    const/4 v8, 0x4

    const/4 v9, 0x4

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    .line 93
    const/4 v8, 0x5

    const/4 v9, 0x5

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v8

    .line 94
    const/4 v9, 0x6

    const/4 v8, 0x1

    aget-object v8, v0, v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v8}, Lcom/miui/player/util/LocaleUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v9

    .line 95
    add-int/lit8 v7, v6, 0x1

    .end local v6           #row:I
    .local v7, row:I
    aput-object v0, v5, v6

    move v6, v7

    .line 96
    .end local v7           #row:I
    .restart local v6       #row:I
    goto :goto_0

    .line 98
    .end local v0           #colVals:[Ljava/lang/Object;
    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 99
    new-array v0, v1, [Ljava/lang/Object;

    .line 100
    .restart local v0       #colVals:[Ljava/lang/Object;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v8

    .line 101
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    .line 102
    const/4 v8, 0x2

    const/4 v9, 0x2

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    .line 103
    const/4 v8, 0x3

    const/4 v9, 0x3

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    .line 104
    const/4 v8, 0x4

    const/4 v9, 0x4

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    .line 105
    const/4 v8, 0x5

    const/4 v9, 0x5

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v8

    .line 106
    const/4 v8, 0x6

    const/4 v9, 0x6

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v8

    .line 107
    const/4 v8, 0x7

    const/4 v9, 0x7

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v8

    .line 108
    const/16 v8, 0x8

    const/16 v9, 0x8

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v8

    .line 109
    const/16 v9, 0x9

    const/4 v8, 0x1

    aget-object v8, v0, v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v8}, Lcom/miui/player/util/LocaleUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v9

    .line 110
    add-int/lit8 v7, v6, 0x1

    .end local v6           #row:I
    .restart local v7       #row:I
    aput-object v0, v5, v6

    move v6, v7

    .line 111
    .end local v7           #row:I
    .restart local v6       #row:I
    goto :goto_1

    .line 114
    .end local v0           #colVals:[Ljava/lang/Object;
    :cond_1
    new-instance v8, Lcom/miui/player/model/SectionCursor$ConvertResult;

    add-int/lit8 v9, v1, -0x1

    invoke-direct {v8, v5, v2, v9}, Lcom/miui/player/model/SectionCursor$ConvertResult;-><init>([[Ljava/lang/Object;[Ljava/lang/String;I)V

    return-object v8
.end method
