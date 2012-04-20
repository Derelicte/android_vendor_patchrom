.class Lcom/android/quicksearchbox/ShortcutsProvider$1;
.super Ljava/lang/Object;
.source "ShortcutsProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ShortcutsProvider;->addShortcut(Landroid/content/ContentValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ShortcutsProvider;

.field final synthetic val$shortcut:Landroid/content/ContentValues;

.field final synthetic val$sourceComponent:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/ShortcutsProvider;Landroid/content/ComponentName;Landroid/content/ContentValues;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/quicksearchbox/ShortcutsProvider$1;->this$0:Lcom/android/quicksearchbox/ShortcutsProvider;

    iput-object p2, p0, Lcom/android/quicksearchbox/ShortcutsProvider$1;->val$sourceComponent:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/quicksearchbox/ShortcutsProvider$1;->val$shortcut:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/quicksearchbox/ShortcutsProvider$1;->this$0:Lcom/android/quicksearchbox/ShortcutsProvider;

    iget-object v1, p0, Lcom/android/quicksearchbox/ShortcutsProvider$1;->val$sourceComponent:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/quicksearchbox/ShortcutsProvider$1;->val$shortcut:Landroid/content/ContentValues;

    #calls: Lcom/android/quicksearchbox/ShortcutsProvider;->storeShortcut(Landroid/content/ComponentName;Landroid/content/ContentValues;)V
    invoke-static {v0, v1, v2}, Lcom/android/quicksearchbox/ShortcutsProvider;->access$000(Lcom/android/quicksearchbox/ShortcutsProvider;Landroid/content/ComponentName;Landroid/content/ContentValues;)V

    .line 125
    return-void
.end method
