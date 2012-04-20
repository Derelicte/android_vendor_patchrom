.class public Lcom/miui/notes/ui/FoldersListAdapter;
.super Landroid/widget/CursorAdapter;
.source "FoldersListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/notes/ui/FoldersListAdapter$FolderListItem;
    }
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "snippet"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/notes/ui/FoldersListAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter "context"
    .parameter "c"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 26
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 35
    instance-of v1, p1, Lcom/miui/notes/ui/FoldersListAdapter$FolderListItem;

    if-eqz v1, :cond_0

    .line 36
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const v1, 0x7f090031

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, folderName:Ljava/lang/String;
    :goto_0
    check-cast p1, Lcom/miui/notes/ui/FoldersListAdapter$FolderListItem;

    .end local p1
    invoke-virtual {p1, v0}, Lcom/miui/notes/ui/FoldersListAdapter$FolderListItem;->bind(Ljava/lang/String;)V

    .line 40
    .end local v0           #folderName:Ljava/lang/String;
    :cond_0
    return-void

    .line 36
    .restart local p1
    :cond_1
    const/4 v1, 0x1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFolderName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "position"

    .prologue
    .line 43
    invoke-virtual {p0, p2}, Lcom/miui/notes/ui/FoldersListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 44
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const v1, 0x7f090031

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 30
    new-instance v0, Lcom/miui/notes/ui/FoldersListAdapter$FolderListItem;

    invoke-direct {v0, p0, p1}, Lcom/miui/notes/ui/FoldersListAdapter$FolderListItem;-><init>(Lcom/miui/notes/ui/FoldersListAdapter;Landroid/content/Context;)V

    return-object v0
.end method
