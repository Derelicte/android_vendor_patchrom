.class public Lcom/miui/player/model/PlaylistListAdapter$PlaylistConverter;
.super Ljava/lang/Object;
.source "PlaylistListAdapter.java"

# interfaces
.implements Lcom/miui/player/model/SectionCursor$CursorConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/PlaylistListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaylistConverter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toArray(Landroid/database/Cursor;)Lcom/miui/player/model/SectionCursor$ConvertResult;
    .locals 10
    .parameter "cursor"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 30
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    .line 31
    .local v1, columns:[Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    const-string v7, "sort_key"

    aput-object v7, v1, v6

    .line 34
    invoke-static {}, Lcom/miui/player/util/LocaleUtils;->getIntance()Lcom/miui/player/util/LocaleUtils;

    move-result-object v2

    .line 35
    .local v2, locale:Lcom/miui/player/util/LocaleUtils;
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    new-array v3, v6, [[Ljava/lang/Object;

    .line 36
    .local v3, records:[[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 37
    .local v4, row:I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 38
    array-length v6, v1

    new-array v0, v6, [Ljava/lang/Object;

    .line 39
    .local v0, colVals:[Ljava/lang/Object;
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v8

    .line 40
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v9

    .line 41
    const/4 v7, 0x2

    aget-object v6, v0, v9

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/miui/player/util/LocaleUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v7

    .line 42
    add-int/lit8 v5, v4, 0x1

    .end local v4           #row:I
    .local v5, row:I
    aput-object v0, v3, v4

    move v4, v5

    .line 43
    .end local v5           #row:I
    .restart local v4       #row:I
    goto :goto_0

    .line 45
    .end local v0           #colVals:[Ljava/lang/Object;
    :cond_0
    new-instance v6, Lcom/miui/player/model/SectionCursor$ConvertResult;

    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    invoke-direct {v6, v3, v1, v7}, Lcom/miui/player/model/SectionCursor$ConvertResult;-><init>([[Ljava/lang/Object;[Ljava/lang/String;I)V

    return-object v6
.end method
