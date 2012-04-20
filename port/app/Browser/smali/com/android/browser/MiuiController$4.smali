.class Lcom/android/browser/MiuiController$4;
.super Ljava/lang/Object;
.source "MiuiController.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/MiuiController;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/MiuiController;

.field final synthetic val$extra:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/MiuiController;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/browser/MiuiController$4;->this$0:Lcom/android/browser/MiuiController;

    iput-object p2, p0, Lcom/android/browser/MiuiController$4;->val$extra:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 326
    iget-object v1, p0, Lcom/android/browser/MiuiController$4;->this$0:Lcom/android/browser/MiuiController;

    iget-object v1, v1, Lcom/android/browser/MiuiController;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 327
    .local v0, parent:Lcom/android/browser/Tab;
    iget-object v3, p0, Lcom/android/browser/MiuiController$4;->this$0:Lcom/android/browser/MiuiController;

    iget-object v4, p0, Lcom/android/browser/MiuiController$4;->val$extra:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/browser/MiuiController$4;->this$0:Lcom/android/browser/MiuiController;

    iget-object v1, v1, Lcom/android/browser/MiuiController;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->openInBackground()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/browser/MiuiController;->openTab(Ljava/lang/String;Lcom/android/browser/Tab;ZZ)Lcom/android/browser/Tab;

    .line 330
    return v2

    .line 327
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
