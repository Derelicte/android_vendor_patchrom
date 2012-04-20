.class public Lcom/android/fileexplorer/InformationDialog;
.super Landroid/app/AlertDialog;
.source "InformationDialog.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFileIconHelper:Lcom/android/fileexplorer/FileIconHelper;

.field private mFileInfo:Lcom/android/fileexplorer/FileInfo;

.field private mHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;

.field private task:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/fileexplorer/FileInfo;Lcom/android/fileexplorer/FileIconHelper;)V
    .locals 1
    .parameter "context"
    .parameter "f"
    .parameter "iconHelper"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v0, Lcom/android/fileexplorer/InformationDialog$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/InformationDialog$1;-><init>(Lcom/android/fileexplorer/InformationDialog;)V

    iput-object v0, p0, Lcom/android/fileexplorer/InformationDialog;->mHandler:Landroid/os/Handler;

    .line 31
    iput-object p2, p0, Lcom/android/fileexplorer/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/FileInfo;

    .line 32
    iput-object p3, p0, Lcom/android/fileexplorer/InformationDialog;->mFileIconHelper:Lcom/android/fileexplorer/FileIconHelper;

    .line 33
    iput-object p1, p0, Lcom/android/fileexplorer/InformationDialog;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/android/fileexplorer/InformationDialog;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/InformationDialog;->formatFileSizeString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/fileexplorer/InformationDialog;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/InformationDialog;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/fileexplorer/InformationDialog;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/fileexplorer/InformationDialog;->task:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/fileexplorer/InformationDialog;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/InformationDialog;->onSize(J)V

    return-void
.end method

.method private asyncGetSize()V
    .locals 4

    .prologue
    .line 82
    new-instance v0, Lcom/android/fileexplorer/InformationDialog$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/InformationDialog$2;-><init>(Lcom/android/fileexplorer/InformationDialog;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/fileexplorer/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/FileInfo;

    iget-object v3, v3, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/InformationDialog$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/InformationDialog;->task:Landroid/os/AsyncTask;

    .line 116
    return-void
.end method

.method private formatFileSizeString(J)Ljava/lang/String;
    .locals 7
    .parameter "size"

    .prologue
    const v6, 0x7f060019

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 128
    const-string v0, ""

    .line 129
    .local v0, ret:Ljava/lang/String;
    const-wide/16 v1, 0x400

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 130
    invoke-static {p1, p2}, Lcom/android/fileexplorer/Util;->convertStorage(J)Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/InformationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v6, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/android/fileexplorer/InformationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private onSize(J)V
    .locals 3
    .parameter "size"

    .prologue
    .line 119
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 120
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x64

    iput v2, v1, Landroid/os/Message;->what:I

    .line 121
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 122
    .local v0, bd:Landroid/os/Bundle;
    const-string v2, "SIZE"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 123
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 124
    iget-object v2, p0, Lcom/android/fileexplorer/InformationDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 125
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    const v3, 0x7f06004e

    const v4, 0x7f060025

    .line 37
    invoke-virtual {p0}, Lcom/android/fileexplorer/InformationDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030007

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/InformationDialog;->mView:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/android/fileexplorer/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/FileInfo;

    iget-boolean v0, v0, Lcom/android/fileexplorer/FileInfo;->IsDir:Z

    if-eqz v0, :cond_0

    .line 40
    const v0, 0x7f02003d

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/InformationDialog;->setIcon(I)V

    .line 41
    invoke-direct {p0}, Lcom/android/fileexplorer/InformationDialog;->asyncGetSize()V

    .line 45
    :goto_0
    iget-object v0, p0, Lcom/android/fileexplorer/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/FileInfo;

    iget-object v0, v0, Lcom/android/fileexplorer/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/InformationDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/android/fileexplorer/InformationDialog;->mView:Landroid/view/View;

    const v2, 0x7f090045

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/fileexplorer/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/FileInfo;

    iget-wide v5, v2, Lcom/android/fileexplorer/FileInfo;->fileSize:J

    invoke-direct {p0, v5, v6}, Lcom/android/fileexplorer/InformationDialog;->formatFileSizeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/android/fileexplorer/InformationDialog;->mView:Landroid/view/View;

    const v2, 0x7f090044

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/fileexplorer/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/FileInfo;

    iget-object v2, v2, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/android/fileexplorer/InformationDialog;->mView:Landroid/view/View;

    const v2, 0x7f090046

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/fileexplorer/InformationDialog;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/fileexplorer/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/FileInfo;

    iget-wide v5, v5, Lcom/android/fileexplorer/FileInfo;->ModifiedDate:J

    invoke-static {v2, v5, v6}, Lcom/android/fileexplorer/Util;->formatDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/android/fileexplorer/InformationDialog;->mView:Landroid/view/View;

    const v2, 0x7f090047

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/fileexplorer/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/FileInfo;

    iget-boolean v2, v2, Lcom/android/fileexplorer/FileInfo;->canRead:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 55
    iget-object v0, p0, Lcom/android/fileexplorer/InformationDialog;->mView:Landroid/view/View;

    const v2, 0x7f090048

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/fileexplorer/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/FileInfo;

    iget-boolean v2, v2, Lcom/android/fileexplorer/FileInfo;->canWrite:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 57
    iget-object v0, p0, Lcom/android/fileexplorer/InformationDialog;->mView:Landroid/view/View;

    const v2, 0x7f090049

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/fileexplorer/InformationDialog;->mFileInfo:Lcom/android/fileexplorer/FileInfo;

    iget-boolean v2, v2, Lcom/android/fileexplorer/FileInfo;->isHidden:Z

    if-eqz v2, :cond_3

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 60
    iget-object v0, p0, Lcom/android/fileexplorer/InformationDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/InformationDialog;->setView(Landroid/view/View;)V

    .line 61
    const/4 v2, -0x2

    iget-object v0, p0, Lcom/android/fileexplorer/InformationDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f06000e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/fileexplorer/InformationDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 63
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 64
    return-void

    .line 43
    :cond_0
    const v0, 0x7f020030

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/InformationDialog;->setIcon(I)V

    goto/16 :goto_0

    :cond_1
    move v2, v4

    .line 53
    goto :goto_1

    :cond_2
    move v2, v4

    .line 55
    goto :goto_2

    :cond_3
    move v3, v4

    .line 57
    goto :goto_3
.end method
