.class abstract Lcom/android/fileexplorer/FileSortHelper$FileComparator;
.super Ljava/lang/Object;
.source "FileSortHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FileSortHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "FileComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/fileexplorer/FileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/FileSortHelper;


# direct methods
.method private constructor <init>(Lcom/android/fileexplorer/FileSortHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/fileexplorer/FileSortHelper$FileComparator;->this$0:Lcom/android/fileexplorer/FileSortHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/fileexplorer/FileSortHelper;Lcom/android/fileexplorer/FileSortHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileSortHelper$FileComparator;-><init>(Lcom/android/fileexplorer/FileSortHelper;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/fileexplorer/FileInfo;Lcom/android/fileexplorer/FileInfo;)I
    .locals 4
    .parameter "object1"
    .parameter "object2"

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 47
    iget-boolean v2, p1, Lcom/android/fileexplorer/FileInfo;->IsDir:Z

    iget-boolean v3, p2, Lcom/android/fileexplorer/FileInfo;->IsDir:Z

    if-ne v2, v3, :cond_1

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/FileSortHelper$FileComparator;->doCompare(Lcom/android/fileexplorer/FileInfo;Lcom/android/fileexplorer/FileInfo;)I

    move-result v0

    .line 56
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    iget-object v2, p0, Lcom/android/fileexplorer/FileSortHelper$FileComparator;->this$0:Lcom/android/fileexplorer/FileSortHelper;

    #getter for: Lcom/android/fileexplorer/FileSortHelper;->mFileFirst:Z
    invoke-static {v2}, Lcom/android/fileexplorer/FileSortHelper;->access$000(Lcom/android/fileexplorer/FileSortHelper;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    iget-boolean v2, p1, Lcom/android/fileexplorer/FileInfo;->IsDir:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 56
    :cond_2
    iget-boolean v2, p1, Lcom/android/fileexplorer/FileInfo;->IsDir:Z

    if-eqz v2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    check-cast p1, Lcom/android/fileexplorer/FileInfo;

    .end local p1
    check-cast p2, Lcom/android/fileexplorer/FileInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/FileSortHelper$FileComparator;->compare(Lcom/android/fileexplorer/FileInfo;Lcom/android/fileexplorer/FileInfo;)I

    move-result v0

    return v0
.end method

.method protected abstract doCompare(Lcom/android/fileexplorer/FileInfo;Lcom/android/fileexplorer/FileInfo;)I
.end method
