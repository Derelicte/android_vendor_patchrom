.class public Lcom/miui/milk/source/contact2/ContactVersionTracker;
.super Lcom/miui/milk/tracker/VersionTracker;
.source "ContactVersionTracker.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/milk/storage/ContactTrackerStore;)V
    .locals 0
    .parameter "context"
    .parameter "versionStore"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/miui/milk/tracker/VersionTracker;-><init>(Landroid/content/Context;Lcom/miui/milk/storage/BaseTrackerStore;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/miui/milk/source/contact2/ContactVersionTracker;->CONTENT_URI:Landroid/net/Uri;

    .line 18
    const-string v0, "_id"

    iput-object v0, p0, Lcom/miui/milk/source/contact2/ContactVersionTracker;->COLUMN_ID:Ljava/lang/String;

    .line 19
    const-string v0, "sourceid"

    iput-object v0, p0, Lcom/miui/milk/source/contact2/ContactVersionTracker;->COLUMN_SOURCE_ID:Ljava/lang/String;

    .line 20
    const-string v0, "deleted"

    iput-object v0, p0, Lcom/miui/milk/source/contact2/ContactVersionTracker;->COLUMN_DELETED:Ljava/lang/String;

    .line 21
    const-string v0, "version"

    iput-object v0, p0, Lcom/miui/milk/source/contact2/ContactVersionTracker;->COLUMN_VERSION:Ljava/lang/String;

    .line 22
    return-void
.end method
