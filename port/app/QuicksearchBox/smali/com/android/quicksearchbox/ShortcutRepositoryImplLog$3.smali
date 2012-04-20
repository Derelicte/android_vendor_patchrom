.class Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$3;
.super Lcom/android/quicksearchbox/util/SQLiteAsyncQuery;
.source "ShortcutRepositoryImplLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->hasHistory(Lcom/android/quicksearchbox/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quicksearchbox/util/SQLiteAsyncQuery",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$3;->this$0:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;

    invoke-direct {p0}, Lcom/android/quicksearchbox/util/SQLiteAsyncQuery;-><init>()V

    return-void
.end method


# virtual methods
.method protected performQuery(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;
    .locals 1
    .parameter "db"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$3;->this$0:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;

    #calls: Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->hasHistory(Landroid/database/sqlite/SQLiteDatabase;)Z
    invoke-static {v0, p1}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->access$100(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic performQuery(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$3;->performQuery(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
