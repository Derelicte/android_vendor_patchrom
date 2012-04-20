.class public Lcom/miui/player/meta/LyricParser$Lyric;
.super Ljava/lang/Object;
.source "LyricParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/meta/LyricParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lyric"
.end annotation


# instance fields
.field private final EMPTY_AFTER:Lcom/miui/player/meta/LyricParser$LyricEntity;

.field private final EMPTY_BEFORE:Lcom/miui/player/meta/LyricParser$LyricEntity;

.field private final mEntityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/meta/LyricParser$LyricEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileAbsolutePath:Ljava/lang/String;

.field private final mHeader:Lcom/miui/player/meta/LyricParser$LyricHeader;

.field private mIsModified:Z

.field private final mOpenTime:J

.field private mOriginHeaderOffset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/player/meta/LyricParser$LyricHeader;Ljava/util/ArrayList;Z)V
    .locals 3
    .parameter "filePath"
    .parameter "header"
    .parameter
    .parameter "isModified"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/miui/player/meta/LyricParser$LyricHeader;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/meta/LyricParser$LyricEntity;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p3, entityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/meta/LyricParser$LyricEntity;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mOpenTime:J

    .line 113
    iput-object p1, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mFileAbsolutePath:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mHeader:Lcom/miui/player/meta/LyricParser$LyricHeader;

    .line 115
    iget-object v0, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mHeader:Lcom/miui/player/meta/LyricParser$LyricHeader;

    iget v0, v0, Lcom/miui/player/meta/LyricParser$LyricHeader;->offset:I

    iput v0, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mOriginHeaderOffset:I

    .line 116
    iput-object p3, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 117
    iput-boolean p4, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mIsModified:Z

    .line 118
    new-instance v0, Lcom/miui/player/meta/LyricParser$LyricEntity;

    const/4 v1, -0x1

    const-string v2, "\n"

    invoke-direct {v0, v1, v2}, Lcom/miui/player/meta/LyricParser$LyricEntity;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/miui/player/meta/LyricParser$Lyric;->EMPTY_BEFORE:Lcom/miui/player/meta/LyricParser$LyricEntity;

    .line 119
    new-instance v0, Lcom/miui/player/meta/LyricParser$LyricEntity;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "\n"

    invoke-direct {v0, v1, v2}, Lcom/miui/player/meta/LyricParser$LyricEntity;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/miui/player/meta/LyricParser$Lyric;->EMPTY_AFTER:Lcom/miui/player/meta/LyricParser$LyricEntity;

    .line 120
    return-void
.end method

.method private getTimeFromLyricShot(ID)J
    .locals 8
    .parameter "line"
    .parameter "percent"

    .prologue
    .line 221
    const-wide/16 v1, 0x0

    .line 222
    .local v1, time:J
    invoke-virtual {p0}, Lcom/miui/player/meta/LyricParser$Lyric;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 223
    .local v0, maxLine:I
    if-lt p1, v0, :cond_0

    .line 224
    iget-object v3, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/player/meta/LyricParser$LyricEntity;

    iget v3, v3, Lcom/miui/player/meta/LyricParser$LyricEntity;->time:I

    int-to-long v1, v3

    .line 229
    :goto_0
    return-wide v1

    .line 226
    :cond_0
    iget-object v3, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/player/meta/LyricParser$LyricEntity;

    iget v3, v3, Lcom/miui/player/meta/LyricParser$LyricEntity;->time:I

    int-to-double v4, v3

    iget-object v3, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/player/meta/LyricParser$LyricEntity;

    iget v6, v3, Lcom/miui/player/meta/LyricParser$LyricEntity;->time:I

    iget-object v3, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/player/meta/LyricParser$LyricEntity;

    iget v3, v3, Lcom/miui/player/meta/LyricParser$LyricEntity;->time:I

    sub-int v3, v6, v3

    int-to-double v6, v3

    mul-double/2addr v6, p2

    add-double v3, v4, v6

    double-to-long v1, v3

    goto :goto_0
.end method


# virtual methods
.method public addOffset(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mHeader:Lcom/miui/player/meta/LyricParser$LyricHeader;

    iget v1, v0, Lcom/miui/player/meta/LyricParser$LyricHeader;->offset:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/miui/player/meta/LyricParser$LyricHeader;->offset:I

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mIsModified:Z

    .line 125
    return-void
.end method

.method public correctLyric(Lcom/miui/player/meta/LyricParser$LyricShot;ID)V
    .locals 11
    .parameter "lyricShot"
    .parameter "lineIndex"
    .parameter "percent"

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/miui/player/meta/LyricParser$Lyric;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .line 234
    .local v3, maxLine:I
    if-lez p2, :cond_0

    if-ge p2, v3, :cond_0

    iget v8, p1, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    if-lez v8, :cond_0

    iget v8, p1, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    if-lt v8, v3, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget v8, p1, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    iget-wide v9, p1, Lcom/miui/player/meta/LyricParser$LyricShot;->percent:D

    invoke-direct {p0, v8, v9, v10}, Lcom/miui/player/meta/LyricParser$Lyric;->getTimeFromLyricShot(ID)J

    move-result-wide v0

    .line 240
    .local v0, currentTime:J
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/player/meta/LyricParser$Lyric;->getTimeFromLyricShot(ID)J

    move-result-wide v4

    .line 241
    .local v4, newTime:J
    const/4 v2, 0x1

    .line 242
    .local v2, isOffsetDelay:Z
    iget v8, p1, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    if-gt p2, v8, :cond_2

    iget v8, p1, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    if-ne p2, v8, :cond_3

    iget-wide v8, p1, Lcom/miui/player/meta/LyricParser$LyricShot;->percent:D

    cmpl-double v8, p3, v8

    if-lez v8, :cond_3

    .line 244
    :cond_2
    const/4 v2, 0x0

    .line 246
    :cond_3
    if-nez v2, :cond_4

    cmp-long v8, v0, v4

    if-gtz v8, :cond_0

    .line 249
    :cond_4
    if-eqz v2, :cond_5

    cmp-long v8, v0, v4

    if-ltz v8, :cond_0

    .line 253
    :cond_5
    sub-long v6, v0, v4

    .line 254
    .local v6, offset:J
    long-to-int v8, v6

    invoke-virtual {p0, v8}, Lcom/miui/player/meta/LyricParser$Lyric;->addOffset(I)V

    goto :goto_0
.end method

.method public decorate()V
    .locals 5

    .prologue
    .line 310
    iget-object v4, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 324
    :cond_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 315
    .local v0, el:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/meta/LyricParser$LyricEntity;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 316
    .local v3, len:I
    if-lez v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/player/meta/LyricParser$LyricEntity;

    invoke-virtual {v4}, Lcom/miui/player/meta/LyricParser$LyricEntity;->isDecorated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 320
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 321
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/meta/LyricParser$LyricEntity;

    .line 322
    .local v1, entity:Lcom/miui/player/meta/LyricParser$LyricEntity;
    invoke-virtual {v1}, Lcom/miui/player/meta/LyricParser$LyricEntity;->decorate()V

    .line 320
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mFileAbsolutePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLyricContent(I)Lcom/miui/player/meta/LyricParser$LyricEntity;
    .locals 2
    .parameter "index"

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, entity:Lcom/miui/player/meta/LyricParser$LyricEntity;
    if-gez p1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/miui/player/meta/LyricParser$Lyric;->EMPTY_BEFORE:Lcom/miui/player/meta/LyricParser$LyricEntity;

    .line 267
    :goto_0
    return-object v0

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 262
    iget-object v0, p0, Lcom/miui/player/meta/LyricParser$Lyric;->EMPTY_AFTER:Lcom/miui/player/meta/LyricParser$LyricEntity;

    goto :goto_0

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entity:Lcom/miui/player/meta/LyricParser$LyricEntity;
    check-cast v0, Lcom/miui/player/meta/LyricParser$LyricEntity;

    .restart local v0       #entity:Lcom/miui/player/meta/LyricParser$LyricEntity;
    goto :goto_0
.end method

.method public getLyricShot(J)Lcom/miui/player/meta/LyricParser$LyricShot;
    .locals 12
    .parameter "time"

    .prologue
    .line 194
    iget-object v8, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mHeader:Lcom/miui/player/meta/LyricParser$LyricHeader;

    iget v1, v8, Lcom/miui/player/meta/LyricParser$LyricHeader;->offset:I

    .line 196
    .local v1, offset:I
    iget-object v8, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/player/meta/LyricParser$LyricEntity;

    iget v8, v8, Lcom/miui/player/meta/LyricParser$LyricEntity;->time:I

    add-int/2addr v8, v1

    int-to-long v8, v8

    cmp-long v8, v8, p1

    if-lez v8, :cond_0

    .line 197
    new-instance v8, Lcom/miui/player/meta/LyricParser$LyricShot;

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/miui/player/meta/LyricParser$LyricShot;-><init>(ID)V

    .line 217
    :goto_0
    return-object v8

    .line 200
    :cond_0
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    iget-object v8, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_3

    .line 201
    iget-object v8, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/player/meta/LyricParser$LyricEntity;

    iget v8, v8, Lcom/miui/player/meta/LyricParser$LyricEntity;->time:I

    add-int v7, v8, v1

    .line 202
    .local v7, timeThis:I
    int-to-long v8, v7

    cmp-long v8, v8, p1

    if-lez v8, :cond_2

    .line 203
    iget-object v8, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    add-int/lit8 v9, v0, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/player/meta/LyricParser$LyricEntity;

    iget v8, v8, Lcom/miui/player/meta/LyricParser$LyricEntity;->time:I

    add-int v6, v8, v1

    .line 204
    .local v6, timePrev:I
    const-wide/16 v2, 0x0

    .line 205
    .local v2, percent:D
    if-le v7, v6, :cond_1

    .line 206
    int-to-long v8, v6

    sub-long v8, p1, v8

    long-to-double v8, v8

    sub-int v10, v7, v6

    int-to-double v10, v10

    div-double v2, v8, v10

    .line 208
    :cond_1
    new-instance v8, Lcom/miui/player/meta/LyricParser$LyricShot;

    add-int/lit8 v9, v0, -0x1

    invoke-direct {v8, v9, v2, v3}, Lcom/miui/player/meta/LyricParser$LyricShot;-><init>(ID)V

    goto :goto_0

    .line 200
    .end local v2           #percent:D
    .end local v6           #timePrev:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 211
    .end local v7           #timeThis:I
    :cond_3
    iget-object v8, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/player/meta/LyricParser$Lyric;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/player/meta/LyricParser$LyricEntity;

    iget v8, v8, Lcom/miui/player/meta/LyricParser$LyricEntity;->time:I

    int-to-long v4, v8

    .line 212
    .local v4, timeLast:J
    sub-long v8, p1, v4

    const-wide/16 v10, 0x1f40

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    .line 213
    sub-long v8, p1, v4

    long-to-double v8, v8

    const-wide v10, 0x40bf400000000000L

    div-double v2, v8, v10

    .line 214
    .restart local v2       #percent:D
    new-instance v8, Lcom/miui/player/meta/LyricParser$LyricShot;

    invoke-virtual {p0}, Lcom/miui/player/meta/LyricParser$Lyric;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v8, v9, v2, v3}, Lcom/miui/player/meta/LyricParser$LyricShot;-><init>(ID)V

    goto :goto_0

    .line 217
    .end local v2           #percent:D
    :cond_4
    new-instance v8, Lcom/miui/player/meta/LyricParser$LyricShot;

    iget-object v9, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const-wide/16 v10, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/miui/player/meta/LyricParser$LyricShot;-><init>(ID)V

    goto :goto_0
.end method

.method public getOpenTime()J
    .locals 2

    .prologue
    .line 276
    iget-wide v0, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mOpenTime:J

    return-wide v0
.end method

.method public getStringArr()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    iget-object v4, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 281
    const/4 v2, 0x0

    .line 290
    :cond_0
    return-object v2

    .line 283
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 286
    .local v2, lyricArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v4, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/player/meta/LyricParser$LyricEntity;

    .line 287
    .local v3, lyricEntity:Lcom/miui/player/meta/LyricParser$LyricEntity;
    iget-object v1, v3, Lcom/miui/player/meta/LyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    .line 288
    .local v1, lyric:Ljava/lang/CharSequence;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getTimeArr()[I
    .locals 7

    .prologue
    .line 294
    iget-object v5, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 295
    const/4 v4, 0x0

    .line 302
    :cond_0
    return-object v4

    .line 297
    :cond_1
    iget-object v5, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v4, v5, [I

    .line 298
    .local v4, timeArr:[I
    const/4 v0, 0x0

    .line 299
    .local v0, i:I
    iget-object v5, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/player/meta/LyricParser$LyricEntity;

    .line 300
    .local v3, lyricEntity:Lcom/miui/player/meta/LyricParser$LyricEntity;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    iget v5, v3, Lcom/miui/player/meta/LyricParser$LyricEntity;->time:I

    iget-object v6, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mHeader:Lcom/miui/player/meta/LyricParser$LyricHeader;

    iget v6, v6, Lcom/miui/player/meta/LyricParser$LyricHeader;->offset:I

    add-int/2addr v5, v6

    aput v5, v4, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0
.end method

.method public recycleContent()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 307
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/miui/player/meta/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
