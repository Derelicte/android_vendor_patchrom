.class Lcom/android/fileexplorer/FileSortHelper$1;
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
    .line 63
    iput-object p1, p0, Lcom/android/fileexplorer/FileSortHelper$1;->this$0:Lcom/android/fileexplorer/FileSortHelper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/FileSortHelper$FileComparator;-><init>(Lcom/android/fileexplorer/FileSortHelper;Lcom/android/fileexplorer/FileSortHelper$1;)V

    return-void
.end method


# virtual methods
.method public doCompare(Lcom/android/fileexplorer/FileInfo;Lcom/android/fileexplorer/FileInfo;)I
    .locals 2
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 66
    iget-object v0, p1, Lcom/android/fileexplorer/FileInfo;->fileName:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/fileexplorer/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
