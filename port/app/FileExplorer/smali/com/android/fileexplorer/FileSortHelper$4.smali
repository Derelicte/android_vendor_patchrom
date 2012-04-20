.class Lcom/android/fileexplorer/FileSortHelper$4;
.super Lcom/android/fileexplorer/FileSortHelper$FileComparator;
.source "FileSortHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FileSortHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/FileSortHelper;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/FileSortHelper;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/fileexplorer/FileSortHelper$4;->this$0:Lcom/android/fileexplorer/FileSortHelper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/FileSortHelper$FileComparator;-><init>(Lcom/android/fileexplorer/FileSortHelper;Lcom/android/fileexplorer/FileSortHelper$1;)V

    return-void
.end method


# virtual methods
.method public doCompare(Lcom/android/fileexplorer/FileInfo;Lcom/android/fileexplorer/FileInfo;)I
    .locals 3
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 91
    iget-object v1, p1, Lcom/android/fileexplorer/FileInfo;->fileName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/Util;->getExtFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/android/fileexplorer/FileInfo;->fileName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/fileexplorer/Util;->getExtFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, result:I
    if-eqz v0, :cond_0

    .line 96
    .end local v0           #result:I
    :goto_0
    return v0

    .restart local v0       #result:I
    :cond_0
    iget-object v1, p1, Lcom/android/fileexplorer/FileInfo;->fileName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/Util;->getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/android/fileexplorer/FileInfo;->fileName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/fileexplorer/Util;->getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
