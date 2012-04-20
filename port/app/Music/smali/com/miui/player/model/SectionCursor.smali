.class public Lcom/miui/player/model/SectionCursor;
.super Ljava/lang/Object;
.source "SectionCursor.java"

# interfaces
.implements Landroid/database/Cursor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/SectionCursor$ArraySortKey;,
        Lcom/miui/player/model/SectionCursor$SortKeyGetter;,
        Lcom/miui/player/model/SectionCursor$CursorConverter;,
        Lcom/miui/player/model/SectionCursor$ConvertResult;,
        Lcom/miui/player/model/SectionCursor$SectionInfo;,
        Lcom/miui/player/model/SectionCursor$RecordComparator;
    }
.end annotation


# instance fields
.field private final mArrayCursor:Landroid/database/Cursor;

.field private final mRawCursor:Landroid/database/Cursor;

.field private final mSectionInfo:Lcom/miui/player/model/SectionCursor$SectionInfo;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;Lcom/miui/player/model/SectionCursor$CursorConverter;I)V
    .locals 11
    .parameter "rawCursor"
    .parameter "converter"
    .parameter "headerCount"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-interface {p2, p1}, Lcom/miui/player/model/SectionCursor$CursorConverter;->toArray(Landroid/database/Cursor;)Lcom/miui/player/model/SectionCursor$ConvertResult;

    move-result-object v6

    .line 29
    .local v6, result:Lcom/miui/player/model/SectionCursor$ConvertResult;
    iget-object v5, v6, Lcom/miui/player/model/SectionCursor$ConvertResult;->mRecords:[[Ljava/lang/Object;

    .line 30
    .local v5, records:[[Ljava/lang/Object;
    iget-object v1, v6, Lcom/miui/player/model/SectionCursor$ConvertResult;->mColumns:[Ljava/lang/String;

    .line 31
    .local v1, columns:[Ljava/lang/String;
    iget v7, v6, Lcom/miui/player/model/SectionCursor$ConvertResult;->mSortIndex:I

    .line 33
    .local v7, sortIndex:I
    array-length v9, v5

    new-instance v10, Lcom/miui/player/model/SectionCursor$RecordComparator;

    invoke-direct {v10, p0, v7}, Lcom/miui/player/model/SectionCursor$RecordComparator;-><init>(Lcom/miui/player/model/SectionCursor;I)V

    invoke-static {v5, p3, v9, v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 34
    new-instance v8, Landroid/database/MatrixCursor;

    array-length v9, v5

    invoke-direct {v8, v1, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 35
    .local v8, temp:Landroid/database/MatrixCursor;
    move-object v0, v5

    .local v0, arr$:[[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 36
    .local v4, record:[Ljava/lang/Object;
    invoke-virtual {v8, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 35
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    .end local v4           #record:[Ljava/lang/Object;
    :cond_0
    new-instance v9, Lcom/miui/player/model/SectionCursor$ArraySortKey;

    invoke-direct {v9, v7}, Lcom/miui/player/model/SectionCursor$ArraySortKey;-><init>(I)V

    invoke-static {v5, v9, p3}, Lcom/miui/player/model/SectionCursor;->collectSectionInfo([Ljava/lang/Object;Lcom/miui/player/model/SectionCursor$SortKeyGetter;I)Lcom/miui/player/model/SectionCursor$SectionInfo;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/player/model/SectionCursor;->mSectionInfo:Lcom/miui/player/model/SectionCursor$SectionInfo;

    .line 40
    iput-object v8, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    .line 41
    iput-object p1, p0, Lcom/miui/player/model/SectionCursor;->mRawCursor:Landroid/database/Cursor;

    .line 42
    return-void
.end method

.method private constructor <init>(Landroid/database/Cursor;Lcom/miui/player/model/SectionCursor$SectionInfo;)V
    .locals 0
    .parameter "rawCursor"
    .parameter "sectionInfo"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/miui/player/model/SectionCursor;->mRawCursor:Landroid/database/Cursor;

    .line 23
    iput-object p1, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    .line 24
    iput-object p2, p0, Lcom/miui/player/model/SectionCursor;->mSectionInfo:Lcom/miui/player/model/SectionCursor$SectionInfo;

    .line 25
    return-void
.end method

.method public static collectSectionInfo([Ljava/lang/Object;Lcom/miui/player/model/SectionCursor$SortKeyGetter;I)Lcom/miui/player/model/SectionCursor$SectionInfo;
    .locals 12
    .parameter "records"
    .parameter "keyGetter"
    .parameter "headerCount"

    .prologue
    const/4 v11, 0x0

    .line 275
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v2, countArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v8, titleArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v4, 0x23

    .line 278
    .local v4, current:C
    move v1, p2

    .line 279
    .local v1, count:I
    move v5, p2

    .line 280
    .local v5, index:I
    array-length v10, p0

    if-ge v5, v10, :cond_2

    .line 281
    :goto_0
    array-length v10, p0

    if-ge v5, v10, :cond_0

    .line 282
    aget-object v10, p0, v5

    invoke-interface {p1, v10}, Lcom/miui/player/model/SectionCursor$SortKeyGetter;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 283
    .local v7, sort:Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 284
    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 285
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 295
    .end local v0           #c:C
    .end local v7           #sort:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    if-ltz v5, :cond_5

    array-length v10, p0

    if-ge v5, v10, :cond_5

    .line 300
    aget-object v10, p0, v5

    invoke-interface {p1, v10}, Lcom/miui/player/model/SectionCursor$SortKeyGetter;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 301
    const/4 v1, 0x1

    .line 302
    :goto_2
    add-int/lit8 v5, v5, 0x1

    array-length v10, p0

    if-ge v5, v10, :cond_4

    .line 303
    aget-object v10, p0, v5

    invoke-interface {p1, v10}, Lcom/miui/player/model/SectionCursor$SortKeyGetter;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 304
    .restart local v0       #c:C
    if-eq v0, v4, :cond_3

    const/16 v10, 0x41

    if-lt v0, v10, :cond_3

    const/16 v10, 0x5a

    if-gt v0, v10, :cond_3

    .line 305
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    move v4, v0

    .line 308
    const/4 v1, 0x1

    goto :goto_2

    .line 290
    .end local v0           #c:C
    .restart local v7       #sort:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 281
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 293
    .end local v7           #sort:Ljava/lang/String;
    :cond_2
    array-length v1, p0

    goto :goto_1

    .line 310
    .restart local v0       #c:C
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 313
    .end local v0           #c:C
    :cond_4
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 318
    .local v6, size:I
    new-array v9, v6, [Ljava/lang/String;

    .line 319
    .local v9, titles:[Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 320
    new-array v3, v6, [Ljava/lang/Integer;

    .line 321
    .local v3, counts:[Ljava/lang/Integer;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 323
    new-instance v10, Lcom/miui/player/model/SectionCursor$SectionInfo;

    invoke-direct {v10, v9, v3}, Lcom/miui/player/model/SectionCursor$SectionInfo;-><init>([Ljava/lang/String;[Ljava/lang/Integer;)V

    return-object v10
.end method

.method public static wrap(Landroid/database/Cursor;Lcom/miui/player/model/SectionCursor$CursorConverter;I)Lcom/miui/player/model/SectionCursor;
    .locals 1
    .parameter "cursor"
    .parameter "converter"
    .parameter "headerCount"

    .prologue
    .line 327
    if-eqz p0, :cond_0

    .line 328
    new-instance v0, Lcom/miui/player/model/SectionCursor;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/player/model/SectionCursor;-><init>(Landroid/database/Cursor;Lcom/miui/player/model/SectionCursor$CursorConverter;I)V

    .line 331
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static wrap(Landroid/database/Cursor;Lcom/miui/player/model/SectionCursor$SectionInfo;)Lcom/miui/player/model/SectionCursor;
    .locals 1
    .parameter "cursor"
    .parameter "sectionInfo"

    .prologue
    .line 335
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 336
    new-instance v0, Lcom/miui/player/model/SectionCursor;

    invoke-direct {v0, p0, p1}, Lcom/miui/player/model/SectionCursor;-><init>(Landroid/database/Cursor;Lcom/miui/player/model/SectionCursor$SectionInfo;)V

    .line 339
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 47
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mRawCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 48
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 1
    .parameter "columnIndex"
    .parameter "buffer"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 53
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 58
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mRawCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 59
    return-void
.end method

.method public getBlob(I)[B
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1
    .parameter "columnName"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    return v0
.end method

.method public getSectionInfo()Lcom/miui/player/model/SectionCursor$SectionInfo;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mSectionInfo:Lcom/miui/player/model/SectionCursor$SectionInfo;

    return-object v0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getWantsAllOnMoveCalls()Z

    move-result v0

    return v0
.end method

.method public isAfterLast()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    return v0
.end method

.method public isBeforeFirst()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    return v0
.end method

.method public isLast()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public move(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->move(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mRawCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 205
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mRawCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 215
    return-void
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mRawCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "extras"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mArrayCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mRawCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 240
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mRawCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 210
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/miui/player/model/SectionCursor;->mRawCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 220
    return-void
.end method
