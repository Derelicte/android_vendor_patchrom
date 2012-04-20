.class Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$2;
.super Ljava/lang/Object;
.source "ShortcutRepositoryImplLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->runQueryAsync(Lcom/android/quicksearchbox/util/SQLiteAsyncQuery;Lcom/android/quicksearchbox/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;

.field final synthetic val$consumer:Lcom/android/quicksearchbox/util/Consumer;

.field final synthetic val$query:Lcom/android/quicksearchbox/util/SQLiteAsyncQuery;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;Lcom/android/quicksearchbox/util/SQLiteAsyncQuery;Lcom/android/quicksearchbox/util/Consumer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$2;->this$0:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;

    iput-object p2, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$2;->val$query:Lcom/android/quicksearchbox/util/SQLiteAsyncQuery;

    iput-object p3, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$2;->val$consumer:Lcom/android/quicksearchbox/util/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$2;->val$query:Lcom/android/quicksearchbox/util/SQLiteAsyncQuery;

    iget-object v1, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$2;->this$0:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;

    #getter for: Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mOpenHelper:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$DbOpenHelper;
    invoke-static {v1}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->access$000(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;)Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$DbOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$DbOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$2;->val$consumer:Lcom/android/quicksearchbox/util/Consumer;

    invoke-virtual {v0, v1, v2}, Lcom/android/quicksearchbox/util/SQLiteAsyncQuery;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/quicksearchbox/util/Consumer;)V

    .line 215
    return-void
.end method
