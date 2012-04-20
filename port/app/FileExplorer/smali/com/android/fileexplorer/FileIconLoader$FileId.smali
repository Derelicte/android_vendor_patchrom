.class public Lcom/android/fileexplorer/FileIconLoader$FileId;
.super Ljava/lang/Object;
.source "FileIconLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FileIconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileId"
.end annotation


# instance fields
.field public mCategory:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

.field public mId:J

.field public mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/android/fileexplorer/FileCategoryHelper$FileCategory;)V
    .locals 0
    .parameter "path"
    .parameter "id"
    .parameter "cate"

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/android/fileexplorer/FileIconLoader$FileId;->mPath:Ljava/lang/String;

    .line 182
    iput-wide p2, p0, Lcom/android/fileexplorer/FileIconLoader$FileId;->mId:J

    .line 183
    iput-object p4, p0, Lcom/android/fileexplorer/FileIconLoader$FileId;->mCategory:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    .line 184
    return-void
.end method
