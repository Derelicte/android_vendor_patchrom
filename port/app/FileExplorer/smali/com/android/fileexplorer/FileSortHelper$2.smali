.class Lcom/android/fileexplorer/FileSortHelper$2;
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
    .line 70
    iput-object p1, p0, Lcom/android/fileexplorer/FileSortHelper$2;->this$0:Lcom/android/fileexplorer/FileSortHelper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/FileSortHelper$FileComparator;-><init>(Lcom/android/fileexplorer/FileSortHelper;Lcom/android/fileexplorer/FileSortHelper$1;)V

    return-void
.end method


# virtual methods
.method public doCompare(Lcom/android/fileexplorer/FileInfo;Lcom/android/fileexplorer/FileInfo;)I
    .locals 5
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/fileexplorer/FileSortHelper$2;->this$0:Lcom/android/fileexplorer/FileSortHelper;

    iget-wide v1, p1, Lcom/android/fileexplorer/FileInfo;->fileSize:J

    iget-wide v3, p2, Lcom/android/fileexplorer/FileInfo;->fileSize:J

    sub-long/2addr v1, v3

    #calls: Lcom/android/fileexplorer/FileSortHelper;->longToCompareInt(J)I
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/FileSortHelper;->access$200(Lcom/android/fileexplorer/FileSortHelper;J)I

    move-result v0

    return v0
.end method
