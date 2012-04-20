.class Lcom/android/fileexplorer/InformationDialog$2;
.super Landroid/os/AsyncTask;
.source "InformationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/InformationDialog;->asyncGetSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private size:J

.field final synthetic this$0:Lcom/android/fileexplorer/InformationDialog;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/InformationDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/fileexplorer/InformationDialog$2;->this$0:Lcom/android/fileexplorer/InformationDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private getSize(Ljava/lang/String;)V
    .locals 10
    .parameter "path"

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/fileexplorer/InformationDialog$2;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 99
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 100
    .local v5, listFiles:[Ljava/io/File;
    if-eqz v5, :cond_0

    .line 103
    move-object v0, v5

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 104
    .local v1, f:Ljava/io/File;
    invoke-virtual {p0}, Lcom/android/fileexplorer/InformationDialog$2;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 107
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/fileexplorer/InformationDialog$2;->getSize(Ljava/lang/String;)V

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 110
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #listFiles:[Ljava/io/File;
    :cond_2
    iget-wide v6, p0, Lcom/android/fileexplorer/InformationDialog$2;->size:J

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/fileexplorer/InformationDialog$2;->size:J

    .line 111
    iget-object v6, p0, Lcom/android/fileexplorer/InformationDialog$2;->this$0:Lcom/android/fileexplorer/InformationDialog;

    iget-wide v7, p0, Lcom/android/fileexplorer/InformationDialog$2;->size:J

    #calls: Lcom/android/fileexplorer/InformationDialog;->onSize(J)V
    invoke-static {v6, v7, v8}, Lcom/android/fileexplorer/InformationDialog;->access$300(Lcom/android/fileexplorer/InformationDialog;J)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 87
    const/4 v1, 0x0

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/String;

    .line 88
    .local v0, path:Ljava/lang/String;
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/fileexplorer/InformationDialog$2;->size:J

    .line 89
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/InformationDialog$2;->getSize(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/android/fileexplorer/InformationDialog$2;->this$0:Lcom/android/fileexplorer/InformationDialog;

    #setter for: Lcom/android/fileexplorer/InformationDialog;->task:Landroid/os/AsyncTask;
    invoke-static {v1, v3}, Lcom/android/fileexplorer/InformationDialog;->access$202(Lcom/android/fileexplorer/InformationDialog;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 91
    return-object v3
.end method
