.class public Lcom/android/fileexplorer/FileCategoryHelper;
.super Ljava/lang/Object;
.source "FileCategoryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/FileCategoryHelper$1;,
        Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;,
        Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
    }
.end annotation


# static fields
.field private static APK_EXT:Ljava/lang/String;

.field private static THEME_EXT:Ljava/lang/String;

.field private static ZIP_EXTS:[Ljava/lang/String;

.field public static categoryNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static filters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;",
            "Lcom/android/fileexplorer/FilenameExtFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static sCategories:[Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;


# instance fields
.field private mCategory:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

.field private mCategoryInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;",
            "Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    const-string v0, "apk"

    sput-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->APK_EXT:Ljava/lang/String;

    .line 40
    const-string v0, "mtz"

    sput-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->THEME_EXT:Ljava/lang/String;

    .line 41
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "zip"

    aput-object v1, v0, v3

    const-string v1, "rar"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->ZIP_EXTS:[Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->filters:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    .line 50
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->All:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const v2, 0x7f060003

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const v2, 0x7f060007

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const v2, 0x7f06000b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const v2, 0x7f060009

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Theme:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const v2, 0x7f06000a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const v2, 0x7f060005

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const v2, 0x7f06000c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const v2, 0x7f060004

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Other:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const v2, 0x7f060008

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const v2, 0x7f060006

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Theme:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Other:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->sCategories:[Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/FileCategoryHelper;->mCategoryInfo:Ljava/util/HashMap;

    .line 72
    iput-object p1, p0, Lcom/android/fileexplorer/FileCategoryHelper;->mContext:Landroid/content/Context;

    .line 74
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->All:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    iput-object v0, p0, Lcom/android/fileexplorer/FileCategoryHelper;->mCategory:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    .line 75
    return-void
.end method

.method private buildDocSelection()Ljava/lang/String;
    .locals 4

    .prologue
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v1, selection:Ljava/lang/StringBuilder;
    sget-object v2, Lcom/android/fileexplorer/Util;->sDocMimeTypesSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 138
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(mime_type==\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\') OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 141
    :cond_0
    const/4 v2, 0x0

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private buildSelectionByCategory(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)Ljava/lang/String;
    .locals 3
    .parameter "cat"

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, selection:Ljava/lang/String;
    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$1;->$SwitchMap$com$android$fileexplorer$FileCategoryHelper$FileCategory:[I

    invoke-virtual {p1}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 161
    const/4 v0, 0x0

    .line 163
    :goto_0
    return-object v0

    .line 148
    :pswitch_0
    const-string v0, "_data LIKE \'%.mtz\'"

    .line 149
    goto :goto_0

    .line 151
    :pswitch_1
    invoke-direct {p0}, Lcom/android/fileexplorer/FileCategoryHelper;->buildDocSelection()Ljava/lang/String;

    move-result-object v0

    .line 152
    goto :goto_0

    .line 154
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(mime_type == \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/fileexplorer/Util;->sZipFileMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    goto :goto_0

    .line 157
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(_data LIKE \'%.apk\')  AND (_data NOT LIKE \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/fileexplorer/Util;->MIUI_BACKUP_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private buildSortOrder(Lcom/android/fileexplorer/FileSortHelper$SortMethod;)Ljava/lang/String;
    .locals 3
    .parameter "sort"

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, sortOrder:Ljava/lang/String;
    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$1;->$SwitchMap$com$android$fileexplorer$FileSortHelper$SortMethod:[I

    invoke-virtual {p1}, Lcom/android/fileexplorer/FileSortHelper$SortMethod;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 207
    :goto_0
    return-object v0

    .line 195
    :pswitch_0
    const-string v0, "title asc"

    .line 196
    goto :goto_0

    .line 198
    :pswitch_1
    const-string v0, "_size asc"

    .line 199
    goto :goto_0

    .line 201
    :pswitch_2
    const-string v0, "date_modified desc"

    .line 202
    goto :goto_0

    .line 204
    :pswitch_3
    const-string v0, "mime_type asc, title asc"

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getCategoryFromPath(Ljava/lang/String;)Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
    .locals 5
    .parameter "path"

    .prologue
    .line 273
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v2

    .line 274
    .local v2, type:Landroid/media/MediaFile$MediaFileType;
    if-eqz v2, :cond_3

    .line 275
    iget v3, v2, Landroid/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    .line 298
    :goto_0
    return-object v3

    .line 276
    :cond_0
    iget v3, v2, Landroid/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    goto :goto_0

    .line 277
    :cond_1
    iget v3, v2, Landroid/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    goto :goto_0

    .line 278
    :cond_2
    sget-object v3, Lcom/android/fileexplorer/Util;->sDocMimeTypesSet:Ljava/util/HashSet;

    iget-object v4, v2, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    goto :goto_0

    .line 281
    :cond_3
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 282
    .local v0, dotPosition:I
    if-gez v0, :cond_4

    .line 283
    sget-object v3, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Other:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    goto :goto_0

    .line 286
    :cond_4
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, ext:Ljava/lang/String;
    sget-object v3, Lcom/android/fileexplorer/FileCategoryHelper;->APK_EXT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 288
    sget-object v3, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    goto :goto_0

    .line 290
    :cond_5
    sget-object v3, Lcom/android/fileexplorer/FileCategoryHelper;->THEME_EXT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 291
    sget-object v3, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Theme:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    goto :goto_0

    .line 294
    :cond_6
    sget-object v3, Lcom/android/fileexplorer/FileCategoryHelper;->ZIP_EXTS:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/fileexplorer/FileCategoryHelper;->matchExts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 295
    sget-object v3, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    goto :goto_0

    .line 298
    :cond_7
    sget-object v3, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Other:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    goto :goto_0
.end method

.method private getContentUriByCategory(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)Landroid/net/Uri;
    .locals 4
    .parameter "cat"

    .prologue
    .line 168
    const-string v1, "external"

    .line 169
    .local v1, volumeName:Ljava/lang/String;
    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$1;->$SwitchMap$com$android$fileexplorer$FileCategoryHelper$FileCategory:[I

    invoke-virtual {p1}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 186
    const/4 v0, 0x0

    .line 188
    .local v0, uri:Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 174
    .end local v0           #uri:Landroid/net/Uri;
    :pswitch_0
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 175
    .restart local v0       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 177
    .end local v0           #uri:Landroid/net/Uri;
    :pswitch_1
    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 178
    .restart local v0       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 180
    .end local v0           #uri:Landroid/net/Uri;
    :pswitch_2
    invoke-static {v1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 181
    .restart local v0       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 183
    .end local v0           #uri:Landroid/net/Uri;
    :pswitch_3
    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 184
    .restart local v0       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static matchExts(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .parameter "ext"
    .parameter "exts"

    .prologue
    .line 302
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 303
    .local v1, ex:Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 304
    const/4 v4, 0x1

    .line 306
    .end local v1           #ex:Ljava/lang/String;
    :goto_1
    return v4

    .line 302
    .restart local v1       #ex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 306
    .end local v1           #ex:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private refreshMediaCategory(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;Landroid/net/Uri;)Z
    .locals 12
    .parameter "fc"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 253
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "COUNT(*)"

    aput-object v0, v2, v10

    const-string v0, "SUM(_size)"

    aput-object v0, v2, v11

    .line 256
    .local v2, columns:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileCategoryHelper;->buildSelectionByCategory(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 257
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 258
    const-string v0, "FileCategoryHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to query uri:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 269
    :goto_0
    return v0

    .line 262
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/fileexplorer/FileCategoryHelper;->setCategoryInfo(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;JJ)V

    .line 264
    const-string v0, "FileCategoryHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrieved "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " info >>> count:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " size:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 266
    goto :goto_0

    :cond_1
    move v0, v10

    .line 269
    goto :goto_0
.end method

.method private setCategoryInfo(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;JJ)V
    .locals 2
    .parameter "fc"
    .parameter "count"
    .parameter "size"

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryHelper;->mCategoryInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;

    .line 126
    .local v0, info:Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;
    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;

    .end local v0           #info:Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;-><init>(Lcom/android/fileexplorer/FileCategoryHelper;)V

    .line 128
    .restart local v0       #info:Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryHelper;->mCategoryInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_0
    iput-wide p2, v0, Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;->count:J

    .line 131
    iput-wide p4, v0, Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;->size:J

    .line 132
    return-void
.end method


# virtual methods
.method public getCategoryInfos()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;",
            "Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryHelper;->mCategoryInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCurCategory()Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryHelper;->mCategory:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    return-object v0
.end method

.method public getCurCategoryNameResId()I
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryHelper;->mCategory:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getFilter()Ljava/io/FilenameFilter;
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->filters:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryHelper;->mCategory:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FilenameFilter;

    return-object v0
.end method

.method public query(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/FileSortHelper$SortMethod;)Landroid/database/Cursor;
    .locals 8
    .parameter "fc"
    .parameter "sort"

    .prologue
    const/4 v4, 0x0

    .line 211
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileCategoryHelper;->getContentUriByCategory(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)Landroid/net/Uri;

    move-result-object v1

    .line 212
    .local v1, uri:Landroid/net/Uri;
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileCategoryHelper;->buildSelectionByCategory(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, selection:Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/FileCategoryHelper;->buildSortOrder(Lcom/android/fileexplorer/FileSortHelper$SortMethod;)Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, sortOrder:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 216
    const-string v0, "FileCategoryHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid uri, category:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_0
    return-object v4

    .line 220
    :cond_0
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v6, "_id"

    aput-object v6, v2, v0

    const/4 v0, 0x1

    const-string v6, "_data"

    aput-object v6, v2, v0

    const/4 v0, 0x2

    const-string v6, "_size"

    aput-object v6, v2, v0

    const/4 v0, 0x3

    const-string v6, "date_modified"

    aput-object v6, v2, v0

    .line 224
    .local v2, columns:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0
.end method

.method public refreshCategoryInfo()V
    .locals 11

    .prologue
    const-wide/16 v2, 0x0

    .line 229
    sget-object v6, Lcom/android/fileexplorer/FileCategoryHelper;->sCategories:[Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    .local v6, arr$:[Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
    array-length v8, v6

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v1, v6, v7

    .local v1, fc:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
    move-object v0, p0

    move-wide v4, v2

    .line 230
    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/FileCategoryHelper;->setCategoryInfo(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;JJ)V

    .line 229
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 234
    .end local v1           #fc:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
    :cond_0
    const-string v10, "external"

    .line 236
    .local v10, volumeName:Ljava/lang/String;
    invoke-static {v10}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 237
    .local v9, uri:Landroid/net/Uri;
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-direct {p0, v0, v9}, Lcom/android/fileexplorer/FileCategoryHelper;->refreshMediaCategory(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;Landroid/net/Uri;)Z

    .line 239
    invoke-static {v10}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 240
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-direct {p0, v0, v9}, Lcom/android/fileexplorer/FileCategoryHelper;->refreshMediaCategory(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;Landroid/net/Uri;)Z

    .line 242
    invoke-static {v10}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 243
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-direct {p0, v0, v9}, Lcom/android/fileexplorer/FileCategoryHelper;->refreshMediaCategory(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;Landroid/net/Uri;)Z

    .line 245
    invoke-static {v10}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 246
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Theme:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-direct {p0, v0, v9}, Lcom/android/fileexplorer/FileCategoryHelper;->refreshMediaCategory(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;Landroid/net/Uri;)Z

    .line 247
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-direct {p0, v0, v9}, Lcom/android/fileexplorer/FileCategoryHelper;->refreshMediaCategory(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;Landroid/net/Uri;)Z

    .line 248
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-direct {p0, v0, v9}, Lcom/android/fileexplorer/FileCategoryHelper;->refreshMediaCategory(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;Landroid/net/Uri;)Z

    .line 249
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-direct {p0, v0, v9}, Lcom/android/fileexplorer/FileCategoryHelper;->refreshMediaCategory(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;Landroid/net/Uri;)Z

    .line 250
    return-void
.end method

.method public setCurCategory(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/fileexplorer/FileCategoryHelper;->mCategory:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    .line 83
    return-void
.end method

.method public setCustomCategory([Ljava/lang/String;)V
    .locals 3
    .parameter "exts"

    .prologue
    .line 90
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    iput-object v0, p0, Lcom/android/fileexplorer/FileCategoryHelper;->mCategory:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    .line 91
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->filters:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->filters:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_0
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->filters:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    new-instance v2, Lcom/android/fileexplorer/FilenameExtFilter;

    invoke-direct {v2, p1}, Lcom/android/fileexplorer/FilenameExtFilter;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method
