.class Lcom/miui/notes/ui/NotesListActivity$1;
.super Ljava/lang/Object;
.source "NotesListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/notes/ui/NotesListActivity;->restoreDirtyData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/notes/ui/NotesListActivity;


# direct methods
.method constructor <init>(Lcom/miui/notes/ui/NotesListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListActivity$1;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 160
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$1;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/miui/notes/ui/NotesListActivity;->access$000(Lcom/miui/notes/ui/NotesListActivity;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "origin_parent_id"

    aput-object v3, v2, v9

    const-string v3, "parent_id=-1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 164
    .local v6, c:Landroid/database/Cursor;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 165
    .local v8, values:Landroid/content/ContentValues;
    if-eqz v6, :cond_2

    .line 166
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    :try_start_0
    const-string v0, "parent_id"

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 170
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$1;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/miui/notes/ui/NotesListActivity;->access$000(Lcom/miui/notes/ui/NotesListActivity;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_2
    return-void

    .line 174
    :catch_0
    move-exception v7

    .line 175
    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v0, "NotesListActivity"

    invoke-virtual {v7}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
