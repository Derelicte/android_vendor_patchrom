.class public Lcom/miui/gallery/data/MediaDetails;
.super Ljava/lang/Object;
.source "MediaDetails.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/MediaDetails$FlashState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mDetails:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mUnits:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    .line 62
    return-void
.end method

.method public static extractExifInfo(Lcom/miui/gallery/data/MediaDetails;Ljava/lang/String;)V
    .locals 9
    .parameter "details"
    .parameter "filePath"

    .prologue
    const-wide/16 v7, 0x0

    .line 139
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 140
    .local v3, exif:Landroid/media/ExifInterface;
    const-string v4, "Flash"

    const/16 v5, 0x66

    invoke-static {p0, v3, v4, v5}, Lcom/miui/gallery/data/MediaDetails;->setExifData(Lcom/miui/gallery/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 141
    const-string v4, "ImageWidth"

    const/4 v5, 0x5

    invoke-static {p0, v3, v4, v5}, Lcom/miui/gallery/data/MediaDetails;->setExifData(Lcom/miui/gallery/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 142
    const-string v4, "ImageLength"

    const/4 v5, 0x6

    invoke-static {p0, v3, v4, v5}, Lcom/miui/gallery/data/MediaDetails;->setExifData(Lcom/miui/gallery/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 144
    const-string v4, "Make"

    const/16 v5, 0x64

    invoke-static {p0, v3, v4, v5}, Lcom/miui/gallery/data/MediaDetails;->setExifData(Lcom/miui/gallery/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 145
    const-string v4, "Model"

    const/16 v5, 0x65

    invoke-static {p0, v3, v4, v5}, Lcom/miui/gallery/data/MediaDetails;->setExifData(Lcom/miui/gallery/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 146
    const-string v4, "FNumber"

    const/16 v5, 0x69

    invoke-static {p0, v3, v4, v5}, Lcom/miui/gallery/data/MediaDetails;->setExifData(Lcom/miui/gallery/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 147
    const-string v4, "ISOSpeedRatings"

    const/16 v5, 0x6c

    invoke-static {p0, v3, v4, v5}, Lcom/miui/gallery/data/MediaDetails;->setExifData(Lcom/miui/gallery/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 148
    const-string v4, "WhiteBalance"

    const/16 v5, 0x68

    invoke-static {p0, v3, v4, v5}, Lcom/miui/gallery/data/MediaDetails;->setExifData(Lcom/miui/gallery/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 150
    const-string v4, "ExposureTime"

    const/16 v5, 0x6b

    invoke-static {p0, v3, v4, v5}, Lcom/miui/gallery/data/MediaDetails;->setExifData(Lcom/miui/gallery/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 153
    const-string v4, "FocalLength"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 154
    .local v0, data:D
    cmpl-double v4, v0, v7

    if-eqz v4, :cond_0

    .line 155
    const/16 v4, 0x67

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 156
    const/16 v4, 0x67

    const v5, 0x7f0d008a

    invoke-virtual {p0, v4, v5}, Lcom/miui/gallery/data/MediaDetails;->setUnit(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v0           #data:D
    .end local v3           #exif:Landroid/media/ExifInterface;
    :cond_0
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v2

    .line 160
    .local v2, ex:Ljava/io/IOException;
    const-string v4, "MediaDetails"

    const-string v5, ""

    invoke-static {v4, v5, v2}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static setExifData(Lcom/miui/gallery/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V
    .locals 3
    .parameter "details"
    .parameter "exif"
    .parameter "tag"
    .parameter "key"

    .prologue
    .line 125
    invoke-virtual {p1, p2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 127
    const/16 v2, 0x66

    if-ne p3, v2, :cond_1

    .line 128
    new-instance v0, Lcom/miui/gallery/data/MediaDetails$FlashState;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/miui/gallery/data/MediaDetails$FlashState;-><init>(I)V

    .line 130
    .local v0, state:Lcom/miui/gallery/data/MediaDetails$FlashState;
    invoke-virtual {p0, p3, v0}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 135
    .end local v0           #state:Lcom/miui/gallery/data/MediaDetails$FlashState;
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-virtual {p0, p3, v1}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public addDetail(ILjava/lang/Object;)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/gallery/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public getDetail(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/gallery/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUnit(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/miui/gallery/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public hasUnit(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/miui/gallery/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/gallery/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setUnit(II)V
    .locals 3
    .parameter "index"
    .parameter "unit"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/miui/gallery/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/miui/gallery/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method
