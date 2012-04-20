.class public Lcom/android/providers/downloads/ui/DownloadList;
.super Landroid/app/Activity;
.source "DownloadList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;,
        Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;,
        Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;,
        Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;
    }
.end annotation


# static fields
.field private static INSTANCE_STATE_FILTER_POSITION:Ljava/lang/String;

.field private static STATUS_NONE:I


# instance fields
.field private mContentObserver:Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;

.field private mDataSetObserver:Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;

.field private mDateOrderedListView:Landroid/widget/EditableListView;

.field private mDateSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

.field private mDateSortedCursor:Landroid/database/Cursor;

.field private mDownloadInWifi:Lmiui/widget/SlidingButton;

.field private mDownloadInWifiListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mDownloadManager:Landroid/app/MiuiDownloadManager;

.field private mFileNameColumnId:I

.field private mFilterPosition:I

.field private mIdColumnId:I

.field private mIsDateSortedCursorRegistered:Z

.field private mLocalUriColumnId:I

.field private mMediaTypeColumnId:I

.field private mModeCallback:Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;

.field private mNotificationClassColumnId:I

.field private mNotificationColumnsInitialized:Z

.field private mNotificationExtrasColumnId:I

.field private mNotificationPackageColumnId:I

.field private mQueuedDialog:Landroid/app/AlertDialog;

.field private mQueuedDownloadId:Ljava/lang/Long;

.field private mReasonColumnId:I

.field private final mSelectedIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusColumnId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, -0x1

    sput v0, Lcom/android/providers/downloads/ui/DownloadList;->STATUS_NONE:I

    .line 112
    const-string v0, "FILTER_POSITION"

    sput-object v0, Lcom/android/providers/downloads/ui/DownloadList;->INSTANCE_STATE_FILTER_POSITION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadInWifi:Lmiui/widget/SlidingButton;

    .line 90
    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadInWifiListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 96
    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mModeCallback:Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;

    .line 97
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mContentObserver:Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;

    .line 98
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;

    invoke-direct {v0, p0, v1}, Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;-><init>(Lcom/android/providers/downloads/ui/DownloadList;Lcom/android/providers/downloads/ui/DownloadList$1;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDataSetObserver:Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;

    .line 109
    iput-boolean v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mNotificationColumnsInitialized:Z

    .line 113
    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFilterPosition:I

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    .line 137
    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    .line 270
    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/providers/downloads/ui/DownloadList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/providers/downloads/ui/DownloadList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFileNameColumnId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/providers/downloads/ui/DownloadList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mMediaTypeColumnId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/providers/downloads/ui/DownloadList;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/downloads/ui/DownloadList;->deleteDownload(JZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/app/MiuiDownloadManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/MiuiDownloadManager;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/providers/downloads/ui/DownloadList;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/providers/downloads/ui/DownloadList;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/providers/downloads/ui/DownloadList;Z[Ljava/lang/Long;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList;->doDeleteDownloads(Z[Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/providers/downloads/ui/DownloadList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->refresh()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/providers/downloads/ui/DownloadList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->invalidateListView()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/providers/downloads/ui/DownloadList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFilterPosition:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/providers/downloads/ui/DownloadList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->initDateSortedCursor()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/providers/downloads/ui/DownloadList;)Lcom/android/providers/downloads/ui/DownloadAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/providers/downloads/ui/DownloadList;Lcom/android/providers/downloads/ui/DownloadAdapter;)Lcom/android/providers/downloads/ui/DownloadAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/widget/EditableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/providers/downloads/ui/DownloadList;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->handleItemClick(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/providers/downloads/ui/DownloadList;[Ljava/lang/Long;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->deleteDownloadsDialog([Ljava/lang/Long;)V

    return-void
.end method

.method private checkSelectionForDeletedEntries()V
    .locals 4

    .prologue
    .line 849
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 850
    .local v0, allIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 852
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 851
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 856
    :cond_0
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 857
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 858
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 861
    :cond_2
    return-void
.end method

.method private createTheTabCursor(I)Landroid/database/Cursor;
    .locals 3
    .parameter "status"

    .prologue
    .line 235
    new-instance v0, Landroid/app/MiuiDownloadManager$Query;

    invoke-direct {v0}, Landroid/app/MiuiDownloadManager$Query;-><init>()V

    .line 236
    .local v0, baseQuery:Landroid/app/MiuiDownloadManager$Query;
    const-string v1, "_id"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/MiuiDownloadManager$Query;->orderBy(Ljava/lang/String;I)Landroid/app/MiuiDownloadManager$Query;

    .line 237
    sget v1, Lcom/android/providers/downloads/ui/DownloadList;->STATUS_NONE:I

    if-eq p1, v1, :cond_0

    .line 238
    invoke-virtual {v0, p1}, Landroid/app/MiuiDownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/MiuiDownloadManager;

    invoke-virtual {v1, v0}, Landroid/app/MiuiDownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private deleteDownload(JZ)V
    .locals 9
    .parameter "downloadId"
    .parameter "deleteFile"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 768
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 769
    .local v1, downloadUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 771
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz p3, :cond_1

    .line 772
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/MiuiDownloadManager;

    new-array v2, v8, [J

    aput-wide p1, v2, v7

    invoke-virtual {v0, v2}, Landroid/app/MiuiDownloadManager;->markRowDeleted([J)I

    .line 777
    :goto_0
    invoke-direct {p0, v6, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList;->sendIntentAfterDeleting(Landroid/database/Cursor;J)V

    .line 778
    if-eqz v6, :cond_0

    .line 779
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 781
    :cond_0
    return-void

    .line 774
    :cond_1
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/MiuiDownloadManager;

    new-array v2, v8, [J

    aput-wide p1, v2, v7

    invoke-virtual {v0, v2}, Landroid/app/MiuiDownloadManager;->removeRecordOnly([J)I

    goto :goto_0
.end method

.method private varargs deleteDownloadsDialog([Ljava/lang/Long;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f090019

    const/4 v1, 0x1

    .line 693
    array-length v0, p1

    if-gtz v0, :cond_0

    .line 716
    :goto_0
    return-void

    .line 696
    :cond_0
    array-length v0, p1

    if-le v0, v1, :cond_1

    const v0, 0x7f090033

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 699
    :goto_1
    new-instance v1, Landroid/widget/CheckBox;

    invoke-direct {v1, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 700
    const v2, 0x7f090035

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(I)V

    .line 702
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/providers/downloads/ui/DownloadList$7;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/providers/downloads/ui/DownloadList$7;-><init>(Lcom/android/providers/downloads/ui/DownloadList;Landroid/widget/CheckBox;[Ljava/lang/Long;)V

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 715
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 696
    :cond_1
    const v0, 0x7f090034

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private varargs doDeleteDownloads(Z[Ljava/lang/Long;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 719
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 720
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 722
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 723
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 724
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 726
    new-instance v1, Lcom/android/providers/downloads/ui/DownloadList$8;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/android/providers/downloads/ui/DownloadList$8;-><init>(Lcom/android/providers/downloads/ui/DownloadList;[Ljava/lang/Long;ZLandroid/app/ProgressDialog;)V

    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/providers/downloads/ui/DownloadList$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 762
    return-void
.end method

.method private findCommonMimeType(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 943
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->findCommonString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 944
    if-eqz v0, :cond_0

    .line 959
    :goto_0
    return-object v0

    .line 949
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 950
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 951
    const/4 v3, 0x0

    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 953
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->findCommonString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 954
    if-eqz v0, :cond_2

    .line 955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 959
    :cond_2
    const-string v0, "*/*"

    goto :goto_0
.end method

.method private findCommonString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 962
    .local p1, set:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 963
    .local v3, str:Ljava/lang/String;
    const/4 v0, 0x1

    .line 964
    .local v0, found:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 965
    .local v2, s:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 966
    move-object v3, v2

    goto :goto_0

    .line 967
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 968
    const/4 v0, 0x0

    .line 972
    .end local v2           #s:Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .end local v3           #str:Ljava/lang/String;
    :goto_1
    return-object v3

    .restart local v3       #str:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "downloadId"

    .prologue
    .line 513
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadList$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList$4;-><init>(Lcom/android/providers/downloads/ui/DownloadList;J)V

    return-object v0
.end method

.method private getErrorMessage(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 607
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mReasonColumnId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 631
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getUnknownErrorMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 609
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->isOnExternalStorage(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 614
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getUnknownErrorMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 618
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->isOnExternalStorage(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    const v0, 0x7f090012

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 621
    :cond_1
    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 625
    :pswitch_2
    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 628
    :pswitch_3
    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 607
    nop

    :pswitch_data_0
    .packed-switch 0x3ee
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "fileName"

    .prologue
    const/4 v1, 0x0

    .line 975
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 984
    :cond_0
    :goto_0
    return-object v0

    .line 979
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 980
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 981
    goto :goto_0
.end method

.method private getFilterStatusViaPosition()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFilterPosition:I

    packed-switch v0, :pswitch_data_0

    .line 226
    sget v0, Lcom/android/providers/downloads/ui/DownloadList;->STATUS_NONE:I

    :goto_0
    return v0

    .line 217
    :pswitch_0
    sget v0, Lcom/android/providers/downloads/ui/DownloadList;->STATUS_NONE:I

    goto :goto_0

    .line 219
    :pswitch_1
    const/16 v0, 0x8

    goto :goto_0

    .line 221
    :pswitch_2
    const/16 v0, 0x17

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getRestartClickHandler(J)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "downloadId"

    .prologue
    .line 525
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadList$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList$5;-><init>(Lcom/android/providers/downloads/ui/DownloadList;J)V

    return-object v0
.end method

.method private getUnknownErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 650
    const v0, 0x7f09000e

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleItemClick(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    .line 560
    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v0, v2

    .line 561
    .local v0, id:J
    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mStatusColumnId:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 600
    :goto_0
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->refresh()V

    .line 601
    return-void

    .line 564
    :sswitch_0
    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->sendRunningDownloadClickedBroadcast(J)V

    goto :goto_0

    .line 568
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->isPausedForWifi(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 569
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    .line 570
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f09000f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090010

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09001a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090018

    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/providers/downloads/ui/DownloadList$6;

    invoke-direct {v3, p0}, Lcom/android/providers/downloads/ui/DownloadList$6;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 587
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->sendRunningDownloadClickedBroadcast(J)V

    goto :goto_0

    .line 592
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->openCurrentDownload(Landroid/database/Cursor;)V

    goto :goto_0

    .line 596
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->getErrorMessage(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/downloads/ui/DownloadList;->showFailedDialog(JLjava/lang/String;)V

    goto :goto_0

    .line 561
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private hasCursors()Z
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initDateSortedCursor()V
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getFilterStatusViaPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->createTheTabCursor(I)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    .line 246
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->registerCursor()V

    .line 247
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->startManagingCursor(Landroid/database/Cursor;)V

    .line 248
    return-void
.end method

.method private invalidateListView()V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->invalidateViews()V

    .line 431
    return-void
.end method

.method private isItemSharable(Ljava/lang/Long;)Z
    .locals 7
    .parameter "id"

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 888
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getFilterStatusViaPosition()I

    move-result v0

    .line 889
    .local v0, filterStatus:I
    if-ne v0, v6, :cond_0

    .line 896
    :goto_0
    return v2

    .line 891
    :cond_0
    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    move v2, v3

    .line 893
    goto :goto_0

    .line 895
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/providers/downloads/ui/DownloadList;->moveToDownload(J)Z

    .line 896
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mStatusColumnId:I

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v6, :cond_3

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method private isOnExternalStorage(Landroid/database/Cursor;)Z
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 636
    iget v5, p0, Lcom/android/providers/downloads/ui/DownloadList;->mLocalUriColumnId:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 637
    .local v2, localUriString:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 646
    :cond_0
    :goto_0
    return v4

    .line 640
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 641
    .local v1, localUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 644
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 645
    .local v3, path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, externalRoot:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0
.end method

.method private isPausedForWifi(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "cursor"

    .prologue
    .line 840
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mReasonColumnId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToDownload(J)Z
    .locals 2
    .parameter "downloadId"

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 870
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 871
    const/4 v0, 0x1

    .line 874
    :goto_1
    return v0

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 874
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private openCurrentDownload(Landroid/database/Cursor;)V
    .locals 8
    .parameter "cursor"

    .prologue
    .line 537
    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mLocalUriColumnId:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 539
    .local v3, localUri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 549
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    .local v2, intent:Landroid/content/Intent;
    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mMediaTypeColumnId:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    const v4, 0x10000001

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 553
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 557
    .end local v2           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 540
    :catch_0
    move-exception v1

    .line 541
    .local v1, exc:Ljava/io/FileNotFoundException;
    const-string v4, "DownloadList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to open download "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const v6, 0x7f090011

    invoke-virtual {p0, v6}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/providers/downloads/ui/DownloadList;->showFailedDialog(JLjava/lang/String;)V

    goto :goto_1

    .line 554
    .end local v1           #exc:Ljava/io/FileNotFoundException;
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 555
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const v4, 0x7f090017

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 545
    .end local v0           #ex:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method private refresh()V
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 690
    return-void
.end method

.method private registerCursor()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mContentObserver:Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 373
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDataSetObserver:Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsDateSortedCursorRegistered:Z

    .line 375
    return-void
.end method

.method private sendIntentAfterDeleting(Landroid/database/Cursor;J)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 784
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 788
    :cond_1
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mNotificationColumnsInitialized:Z

    if-nez v0, :cond_2

    .line 789
    const-string v0, "notificationpackage"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mNotificationPackageColumnId:I

    .line 791
    const-string v0, "notificationclass"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mNotificationClassColumnId:I

    .line 793
    const-string v0, "notificationextras"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mNotificationExtrasColumnId:I

    .line 795
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mNotificationColumnsInitialized:Z

    .line 798
    :cond_2
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mNotificationPackageColumnId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 799
    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mNotificationClassColumnId:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 800
    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mNotificationExtrasColumnId:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 802
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DOWNLOAD_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 803
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 804
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 810
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 811
    const-string v0, "notificationextras"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 816
    :cond_4
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 817
    const-string v0, "extra_download_status"

    const/16 v1, 0x10

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 818
    invoke-virtual {p0, v3}, Lcom/android/providers/downloads/ui/DownloadList;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 805
    :cond_5
    if-eqz v0, :cond_3

    .line 806
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private sendRunningDownloadClickedBroadcast(J)V
    .locals 3
    .parameter "id"

    .prologue
    .line 666
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 667
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.providers.downloads"

    const-string v2, "com.android.providers.downloads.DownloadReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 670
    const-string v1, "multiple"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 671
    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->sendBroadcast(Landroid/content/Intent;)V

    .line 672
    return-void
.end method

.method private setupViews()V
    .locals 2

    .prologue
    .line 251
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->setContentView(I)V

    .line 254
    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditableListView;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    .line 255
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    const v1, 0x7f0c0003

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setEmptyView(Landroid/view/View;)V

    .line 256
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setChoiceMode(I)V

    .line 257
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    invoke-direct {v0, p0, v1}, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;-><init>(Lcom/android/providers/downloads/ui/DownloadList;Landroid/widget/EditableListView;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mModeCallback:Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;

    .line 258
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mModeCallback:Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;

    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->setSplitActionBarMenuId(I)V

    .line 259
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mModeCallback:Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setMultiChoiceModeListener(Landroid/widget/EditableListView$EditableListViewListener;)V

    .line 260
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    new-instance v1, Lcom/android/providers/downloads/ui/DownloadList$2;

    invoke-direct {v1, p0}, Lcom/android/providers/downloads/ui/DownloadList$2;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 268
    return-void
.end method

.method private showFailedDialog(JLjava/lang/String;)V
    .locals 3
    .parameter "downloadId"
    .parameter "dialogBody"

    .prologue
    .line 654
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090019

    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList;->getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09001c

    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList;->getRestartClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 660
    return-void
.end method

.method private unregisterCursor()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mContentObserver:Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 379
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDataSetObserver:Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsDateSortedCursorRegistered:Z

    .line 381
    return-void
.end method


# virtual methods
.method getCurrentView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    return-object v0
.end method

.method handleDownloadsChanged()V
    .locals 2

    .prologue
    .line 829
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->checkSelectionForDeletedEntries()V

    .line 831
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->moveToDownload(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 832
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mStatusColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->isPausedForWifi(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 837
    :cond_1
    return-void
.end method

.method public isDownloadSelected(J)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 989
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    move v0, v1

    .line 990
    :goto_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "download_only_on_wifi"

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 992
    if-nez v0, :cond_2

    .line 993
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadInWifi:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 994
    const v0, 0x7f090022

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1000
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 989
    goto :goto_0

    :cond_1
    move v1, v2

    .line 990
    goto :goto_1

    .line 996
    :cond_2
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadInWifi:Lmiui/widget/SlidingButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 997
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadInWifi:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 998
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadInWifi:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadInWifiListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 165
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0, v4}, Lcom/android/providers/downloads/ui/DownloadList;->setFinishOnTouchOutside(Z)V

    .line 167
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->setupViews()V

    .line 169
    const-string v2, "download"

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/MiuiDownloadManager;

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/MiuiDownloadManager;

    .line 170
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/MiuiDownloadManager;

    invoke-virtual {v2, v4}, Landroid/app/MiuiDownloadManager;->setAccessAllDownloads(Z)V

    .line 174
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->initDateSortedCursor()V

    .line 175
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->hasCursors()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v3, "status"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mStatusColumnId:I

    .line 178
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    .line 180
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v3, "local_uri"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mLocalUriColumnId:I

    .line 182
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v3, "media_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mMediaTypeColumnId:I

    .line 184
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v3, "reason"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mReasonColumnId:I

    .line 186
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v3, "local_filename"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFileNameColumnId:I

    .line 189
    new-instance v2, Lcom/android/providers/downloads/ui/DownloadAdapter;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-direct {v2, p0, v3}, Lcom/android/providers/downloads/ui/DownloadAdapter;-><init>(Lcom/android/providers/downloads/ui/DownloadList;Landroid/database/Cursor;)V

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

    .line 190
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 194
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 195
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 196
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 197
    const/high16 v2, 0x7f07

    const v3, 0x1090009

    invoke-static {p0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 202
    .local v1, spinnerAdapter:Landroid/widget/SpinnerAdapter;
    new-instance v2, Lcom/android/providers/downloads/ui/DownloadList$1;

    invoke-direct {v2, p0}, Lcom/android/providers/downloads/ui/DownloadList$1;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 212
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x2

    const/4 v4, 0x1

    .line 445
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 446
    .local v1, inflater:Landroid/view/MenuInflater;
    const v3, 0x7f0b0001

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 449
    const v3, 0x7f0c0012

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 450
    .local v0, downloadInWifiView:Landroid/view/View;
    new-instance v2, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v2, v6, v6}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    .line 451
    .local v2, layoutParams:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v3, 0x15

    iput v3, v2, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    .line 452
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    const v3, 0x7f0c000f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/widget/SlidingButton;

    iput-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadInWifi:Lmiui/widget/SlidingButton;

    .line 454
    iget-object v6, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadInWifi:Lmiui/widget/SlidingButton;

    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "download_only_on_wifi"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 456
    new-instance v3, Lcom/android/providers/downloads/ui/DownloadList$3;

    invoke-direct {v3, p0}, Lcom/android/providers/downloads/ui/DownloadList$3;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    iput-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadInWifiListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 472
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadInWifi:Lmiui/widget/SlidingButton;

    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadInWifiListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v5}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 473
    return v4

    :cond_0
    move v3, v5

    .line 454
    goto :goto_0
.end method

.method public onDownloadSelectionChanged(JZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "downloadId"
    .parameter "isSelected"
    .parameter "fileName"
    .parameter "mimeType"

    .prologue
    .line 677
    if-eqz p3, :cond_0

    .line 678
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;

    invoke-direct {v2, p4, p5}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    :goto_0
    return-void

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 478
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 505
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    move v0, v1

    .line 489
    goto :goto_0

    .line 492
    :pswitch_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 493
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 494
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 496
    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->deleteDownloadsDialog([Ljava/lang/Long;)V

    move v0, v1

    .line 497
    goto :goto_0

    .line 500
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 501
    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    move v0, v1

    .line 502
    goto :goto_0

    .line 478
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0012
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 365
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 366
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->hasCursors()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsDateSortedCursorRegistered:Z

    if-eqz v0, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->unregisterCursor()V

    .line 369
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 412
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 413
    sget-object v4, Lcom/android/providers/downloads/ui/DownloadList;->INSTANCE_STATE_FILTER_POSITION:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFilterPosition:I

    .line 414
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 415
    const-string v4, "download_ids"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    .line 416
    .local v3, selectedIds:[J
    const-string v4, "filenames"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, fileNames:[Ljava/lang/String;
    const-string v4, "mimetypes"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 418
    .local v2, mimeTypes:[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 419
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 420
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    aget-wide v5, v3, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;

    aget-object v7, v0, v1

    aget-object v8, v2, v1

    invoke-direct {v6, v7, v8}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 423
    .end local v1           #i:I
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->invalidateListView()V

    .line 424
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 354
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 355
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->hasCursors()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsDateSortedCursorRegistered:Z

    if-nez v0, :cond_0

    .line 357
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->registerCursor()V

    .line 359
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->refresh()V

    .line 361
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 11
    .parameter "outState"

    .prologue
    .line 388
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 389
    sget-object v9, Lcom/android/providers/downloads/ui/DownloadList;->INSTANCE_STATE_FILTER_POSITION:Ljava/lang/String;

    iget v10, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFilterPosition:I

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 390
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v5

    .line 391
    .local v5, len:I
    if-nez v5, :cond_0

    .line 408
    :goto_0
    return-void

    .line 394
    :cond_0
    new-array v8, v5, [J

    .line 395
    .local v8, selectedIds:[J
    new-array v0, v5, [Ljava/lang/String;

    .line 396
    .local v0, fileNames:[Ljava/lang/String;
    new-array v6, v5, [Ljava/lang/String;

    .line 397
    .local v6, mimeTypes:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 398
    .local v1, i:I
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 399
    .local v3, id:J
    aput-wide v3, v8, v1

    .line 400
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;

    .line 401
    .local v7, obj:Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;
    invoke-virtual {v7}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v1

    .line 402
    invoke-virtual {v7}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getMimeType()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v1

    .line 403
    add-int/lit8 v1, v1, 0x1

    .line 404
    goto :goto_1

    .line 405
    .end local v3           #id:J
    .end local v7           #obj:Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;
    :cond_1
    const-string v9, "download_ids"

    invoke-virtual {p1, v9, v8}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 406
    const-string v9, "filenames"

    invoke-virtual {p1, v9, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 407
    const-string v9, "mimetypes"

    invoke-virtual {p1, v9, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shareDownloadedFiles()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 906
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 907
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v7, :cond_4

    .line 908
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 909
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 910
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 911
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 912
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;

    .line 913
    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->isItemSharable(Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 916
    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 917
    new-instance v6, Ljava/io/File;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 920
    :cond_1
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 921
    invoke-direct {p0, v4}, Lcom/android/providers/downloads/ui/DownloadList;->findCommonMimeType(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 934
    :cond_2
    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 935
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 936
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 937
    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->startActivity(Landroid/content/Intent;)V

    .line 939
    :cond_3
    return v7

    .line 925
    :cond_4
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 926
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;

    .line 927
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 928
    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->isItemSharable(Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 929
    const-string v0, "android.intent.extra.STREAM"

    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 931
    :cond_5
    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method
