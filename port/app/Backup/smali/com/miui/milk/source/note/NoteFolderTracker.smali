.class public Lcom/miui/milk/source/note/NoteFolderTracker;
.super Lcom/miui/milk/tracker/DateGuidTracker;
.source "NoteFolderTracker.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/milk/storage/NoteFolderTrackerStore;)V
    .locals 0
    .parameter "context"
    .parameter "trackerStore"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/miui/milk/tracker/DateGuidTracker;-><init>(Landroid/content/Context;Lcom/miui/milk/storage/BaseTrackerStore;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/miui/milk/source/note/NoteFolderTracker;->CONTENT_URI:Landroid/net/Uri;

    .line 18
    const-string v0, "_id"

    iput-object v0, p0, Lcom/miui/milk/source/note/NoteFolderTracker;->COLUMN_ID:Ljava/lang/String;

    .line 19
    const-string v0, "modified_date"

    iput-object v0, p0, Lcom/miui/milk/source/note/NoteFolderTracker;->COLUMN_DATE:Ljava/lang/String;

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/milk/source/note/NoteFolderTracker;->TYPE_ID:I

    .line 21
    return-void
.end method
