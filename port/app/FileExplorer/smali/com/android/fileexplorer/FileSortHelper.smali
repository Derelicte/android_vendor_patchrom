.class public Lcom/android/fileexplorer/FileSortHelper;
.super Ljava/lang/Object;
.source "FileSortHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/FileSortHelper$FileComparator;,
        Lcom/android/fileexplorer/FileSortHelper$SortMethod;
    }
.end annotation


# instance fields
.field private cmpDate:Ljava/util/Comparator;

.field private cmpName:Ljava/util/Comparator;

.field private cmpSize:Ljava/util/Comparator;

.field private cmpType:Ljava/util/Comparator;

.field private mComparatorList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/fileexplorer/FileSortHelper$SortMethod;",
            "Ljava/util/Comparator;",
            ">;"
        }
    .end annotation
.end field

.field private mFileFirst:Z

.field private mSort:Lcom/android/fileexplorer/FileSortHelper$SortMethod;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/FileSortHelper;->mComparatorList:Ljava/util/HashMap;

    .line 63
    new-instance v0, Lcom/android/fileexplorer/FileSortHelper$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileSortHelper$1;-><init>(Lcom/android/fileexplorer/FileSortHelper;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileSortHelper;->cmpName:Ljava/util/Comparator;

    .line 70
    new-instance v0, Lcom/android/fileexplorer/FileSortHelper$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileSortHelper$2;-><init>(Lcom/android/fileexplorer/FileSortHelper;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileSortHelper;->cmpSize:Ljava/util/Comparator;

    .line 77
    new-instance v0, Lcom/android/fileexplorer/FileSortHelper$3;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileSortHelper$3;-><init>(Lcom/android/fileexplorer/FileSortHelper;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileSortHelper;->cmpDate:Ljava/util/Comparator;

    .line 88
    new-instance v0, Lcom/android/fileexplorer/FileSortHelper$4;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileSortHelper$4;-><init>(Lcom/android/fileexplorer/FileSortHelper;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileSortHelper;->cmpType:Ljava/util/Comparator;

    .line 20
    sget-object v0, Lcom/android/fileexplorer/FileSortHelper$SortMethod;->name:Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    iput-object v0, p0, Lcom/android/fileexplorer/FileSortHelper;->mSort:Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    .line 21
    iget-object v0, p0, Lcom/android/fileexplorer/FileSortHelper;->mComparatorList:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileSortHelper$SortMethod;->name:Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    iget-object v2, p0, Lcom/android/fileexplorer/FileSortHelper;->cmpName:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/FileSortHelper;->mComparatorList:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileSortHelper$SortMethod;->size:Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    iget-object v2, p0, Lcom/android/fileexplorer/FileSortHelper;->cmpSize:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/FileSortHelper;->mComparatorList:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileSortHelper$SortMethod;->date:Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    iget-object v2, p0, Lcom/android/fileexplorer/FileSortHelper;->cmpDate:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/android/fileexplorer/FileSortHelper;->mComparatorList:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileSortHelper$SortMethod;->type:Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    iget-object v2, p0, Lcom/android/fileexplorer/FileSortHelper;->cmpType:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/android/fileexplorer/FileSortHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 7
    iget-boolean v0, p0, Lcom/android/fileexplorer/FileSortHelper;->mFileFirst:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/fileexplorer/FileSortHelper;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/FileSortHelper;->longToCompareInt(J)I

    move-result v0

    return v0
.end method

.method private longToCompareInt(J)I
    .locals 3
    .parameter "result"

    .prologue
    const-wide/16 v1, 0x0

    .line 85
    cmp-long v0, p1, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p1, v1

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getComparator()Ljava/util/Comparator;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/fileexplorer/FileSortHelper;->mComparatorList:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/fileexplorer/FileSortHelper;->mSort:Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method

.method public getSortMethod()Lcom/android/fileexplorer/FileSortHelper$SortMethod;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/FileSortHelper;->mSort:Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    return-object v0
.end method

.method public setSortMethog(Lcom/android/fileexplorer/FileSortHelper$SortMethod;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/fileexplorer/FileSortHelper;->mSort:Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    .line 29
    return-void
.end method
