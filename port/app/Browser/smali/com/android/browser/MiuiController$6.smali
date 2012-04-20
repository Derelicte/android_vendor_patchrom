.class Lcom/android/browser/MiuiController$6;
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
    .line 353
    iput-object p1, p0, Lcom/android/browser/MiuiController$6;->this$0:Lcom/android/browser/MiuiController;

    iput-object p2, p0, Lcom/android/browser/MiuiController$6;->val$extra:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 356
    iget-object v0, p0, Lcom/android/browser/MiuiController$6;->this$0:Lcom/android/browser/MiuiController;

    iget-object v1, p0, Lcom/android/browser/MiuiController$6;->val$extra:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/browser/MiuiController$6;->this$0:Lcom/android/browser/MiuiController;

    iget-object v2, v2, Lcom/android/browser/MiuiController;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/browser/MiuiController;->openTab(Ljava/lang/String;Lcom/android/browser/Tab;ZZ)Lcom/android/browser/Tab;

    .line 357
    const/4 v0, 0x0

    return v0
.end method
