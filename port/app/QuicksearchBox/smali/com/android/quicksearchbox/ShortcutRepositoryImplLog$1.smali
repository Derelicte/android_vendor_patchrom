.class Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$1;
.super Ljava/lang/Object;
.source "ShortcutRepositoryImplLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->runTransactionAsync(Lcom/android/quicksearchbox/util/SQLiteTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;

.field final synthetic val$transaction:Lcom/android/quicksearchbox/util/SQLiteTransaction;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;Lcom/android/quicksearchbox/util/SQLiteTransaction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$1;->this$0:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;

    iput-object p2, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$1;->val$transaction:Lcom/android/quicksearchbox/util/SQLiteTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$1;->val$transaction:Lcom/android/quicksearchbox/util/SQLiteTransaction;

    iget-object v1, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$1;->this$0:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;

    #getter for: Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->mOpenHelper:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$DbOpenHelper;
    invoke-static {v1}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->access$000(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;)Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$DbOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$DbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/util/SQLiteTransaction;->run(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 207
    return-void
.end method
