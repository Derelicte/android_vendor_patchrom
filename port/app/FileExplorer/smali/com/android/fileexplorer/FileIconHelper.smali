.class public Lcom/android/fileexplorer/FileIconHelper;
.super Ljava/lang/Object;
.source "FileIconHelper.java"

# interfaces
.implements Lcom/android/fileexplorer/FileIconLoader$IconLoadFinishListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/FileIconHelper$1;
    }
.end annotation


# static fields
.field private static fileExtToIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static imageFrames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIconLoader:Lcom/android/fileexplorer/FileIconLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/FileIconHelper;->imageFrames:Ljava/util/HashMap;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/FileIconHelper;->fileExtToIcons:Ljava/util/HashMap;

    .line 27
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "mp3"

    aput-object v1, v0, v3

    const v1, 0x7f020032

    invoke-static {v0, v1}, Lcom/android/fileexplorer/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 30
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "wma"

    aput-object v1, v0, v3

    const v1, 0x7f02003b

    invoke-static {v0, v1}, Lcom/android/fileexplorer/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 33
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "wav"

    aput-object v1, v0, v3

    const v1, 0x7f02003a

    invoke-static {v0, v1}, Lcom/android/fileexplorer/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 36
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "mid"

    aput-object v1, v0, v3

    const v1, 0x7f020031

    invoke-static {v0, v1}, Lcom/android/fileexplorer/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 39
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "mp4"

    aput-object v1, v0, v3

    const-string v1, "wmv"

    aput-object v1, v0, v4

    const-string v1, "mpeg"

    aput-object v1, v0, v5

    const-string v1, "m4v"

    aput-object v1, v0, v6

    const-string v1, "3gp"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "3gpp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "3g2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "3gpp2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "asf"

    aput-object v2, v0, v1

    const v1, 0x7f020039

    invoke-static {v0, v1}, Lcom/android/fileexplorer/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 42
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "jpg"

    aput-object v1, v0, v3

    const-string v1, "jpeg"

    aput-object v1, v0, v4

    const-string v1, "gif"

    aput-object v1, v0, v5

    const-string v1, "png"

    aput-object v1, v0, v6

    const-string v1, "bmp"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "wbmp"

    aput-object v2, v0, v1

    const v1, 0x7f020035

    invoke-static {v0, v1}, Lcom/android/fileexplorer/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 45
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "txt"

    aput-object v1, v0, v3

    const-string v1, "log"

    aput-object v1, v0, v4

    const-string v1, "xml"

    aput-object v1, v0, v5

    const-string v1, "ini"

    aput-object v1, v0, v6

    const-string v1, "lrc"

    aput-object v1, v0, v7

    const v1, 0x7f020038

    invoke-static {v0, v1}, Lcom/android/fileexplorer/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 48
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "doc"

    aput-object v1, v0, v3

    const-string v1, "ppt"

    aput-object v1, v0, v4

    const-string v1, "docx"

    aput-object v1, v0, v5

    const-string v1, "pptx"

    aput-object v1, v0, v6

    const-string v1, "xsl"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "xslx"

    aput-object v2, v0, v1

    const v1, 0x7f020033

    invoke-static {v0, v1}, Lcom/android/fileexplorer/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 51
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "pdf"

    aput-object v1, v0, v3

    const v1, 0x7f020034

    invoke-static {v0, v1}, Lcom/android/fileexplorer/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 54
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "zip"

    aput-object v1, v0, v3

    const v1, 0x7f02003c

    invoke-static {v0, v1}, Lcom/android/fileexplorer/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 57
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "mtz"

    aput-object v1, v0, v3

    const v1, 0x7f020037

    invoke-static {v0, v1}, Lcom/android/fileexplorer/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 60
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "rar"

    aput-object v1, v0, v3

    const v1, 0x7f020036

    invoke-static {v0, v1}, Lcom/android/fileexplorer/FileIconHelper;->addItem([Ljava/lang/String;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/android/fileexplorer/FileIconLoader;

    invoke-direct {v0, p1, p0}, Lcom/android/fileexplorer/FileIconLoader;-><init>(Landroid/content/Context;Lcom/android/fileexplorer/FileIconLoader$IconLoadFinishListener;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileIconHelper;->mIconLoader:Lcom/android/fileexplorer/FileIconLoader;

    .line 67
    return-void
.end method

.method private static addItem([Ljava/lang/String;I)V
    .locals 7
    .parameter "exts"
    .parameter "resId"

    .prologue
    .line 70
    if-eqz p0, :cond_0

    .line 71
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 72
    .local v1, ext:Ljava/lang/String;
    sget-object v4, Lcom/android/fileexplorer/FileIconHelper;->fileExtToIcons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #ext:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    return-void
.end method

.method public static getFileIcon(Ljava/lang/String;)I
    .locals 3
    .parameter "ext"

    .prologue
    .line 78
    sget-object v1, Lcom/android/fileexplorer/FileIconHelper;->fileExtToIcons:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 79
    .local v0, i:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 82
    :goto_0
    return v1

    :cond_0
    const v1, 0x7f020030

    goto :goto_0
.end method


# virtual methods
.method public onIconLoadFinished(Landroid/widget/ImageView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 125
    sget-object v1, Lcom/android/fileexplorer/FileIconHelper;->imageFrames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 126
    .local v0, frame:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 127
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    sget-object v1, Lcom/android/fileexplorer/FileIconHelper;->imageFrames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_0
    return-void
.end method

.method public setIcon(Lcom/android/fileexplorer/FileInfo;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 9
    .parameter "fileInfo"
    .parameter "fileImage"
    .parameter "fileImageFrame"

    .prologue
    .line 88
    iget-object v2, p1, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    .line 89
    .local v2, filePath:Ljava/lang/String;
    iget-wide v3, p1, Lcom/android/fileexplorer/FileInfo;->dbId:J

    .line 90
    .local v3, fileId:J
    invoke-static {v2}, Lcom/android/fileexplorer/Util;->getExtFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, extFromFilename:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/fileexplorer/FileCategoryHelper;->getCategoryFromPath(Ljava/lang/String;)Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    move-result-object v5

    .line 92
    .local v5, fc:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    const/4 v8, 0x0

    .line 94
    .local v8, set:Z
    invoke-static {v6}, Lcom/android/fileexplorer/FileIconHelper;->getFileIcon(Ljava/lang/String;)I

    move-result v7

    .line 95
    .local v7, id:I
    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    iget-object v0, p0, Lcom/android/fileexplorer/FileIconHelper;->mIconLoader:Lcom/android/fileexplorer/FileIconLoader;

    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/FileIconLoader;->cancelRequest(Landroid/widget/ImageView;)V

    .line 98
    sget-object v0, Lcom/android/fileexplorer/FileIconHelper$1;->$SwitchMap$com$android$fileexplorer$FileCategoryHelper$FileCategory:[I

    invoke-virtual {v5}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 115
    const/4 v8, 0x1

    .line 119
    :goto_0
    if-nez v8, :cond_0

    .line 120
    const v0, 0x7f020030

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    :cond_0
    return-void

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileIconHelper;->mIconLoader:Lcom/android/fileexplorer/FileIconLoader;

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/FileIconLoader;->loadIcon(Landroid/widget/ImageView;Ljava/lang/String;JLcom/android/fileexplorer/FileCategoryHelper$FileCategory;)Z

    move-result v8

    .line 101
    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v0, p0, Lcom/android/fileexplorer/FileIconHelper;->mIconLoader:Lcom/android/fileexplorer/FileIconLoader;

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/FileIconLoader;->loadIcon(Landroid/widget/ImageView;Ljava/lang/String;JLcom/android/fileexplorer/FileCategoryHelper$FileCategory;)Z

    move-result v8

    .line 105
    if-eqz v8, :cond_1

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 108
    :cond_1
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    if-ne v5, v0, :cond_2

    const v0, 0x7f020035

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    sget-object v0, Lcom/android/fileexplorer/FileIconHelper;->imageFrames:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const/4 v8, 0x1

    .line 113
    goto :goto_0

    .line 108
    :cond_2
    const v0, 0x7f020039

    goto :goto_1

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
