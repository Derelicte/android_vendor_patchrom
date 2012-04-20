.class Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$9;
.super Lcom/android/quicksearchbox/util/SQLiteTransaction;
.source "ShortcutRepositoryImplLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->reportClickAtTime(Lcom/android/quicksearchbox/SuggestionCursor;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;

.field final synthetic val$click:Landroid/content/ContentValues;

.field final synthetic val$shortcut:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 674
    iput-object p1, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$9;->this$0:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;

    iput-object p2, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$9;->val$shortcut:Landroid/content/ContentValues;

    iput-object p3, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$9;->val$click:Landroid/content/ContentValues;

    invoke-direct {p0}, Lcom/android/quicksearchbox/util/SQLiteTransaction;-><init>()V

    return-void
.end method


# virtual methods
.method protected performTransaction(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3
    .parameter "db"

    .prologue
    const/4 v2, 0x0

    .line 678
    const-string v0, "shortcuts"

    iget-object v1, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$9;->val$shortcut:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 679
    const-string v0, "clicklog"

    iget-object v1, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$9;->val$click:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 680
    const/4 v0, 0x1

    return v0
.end method
