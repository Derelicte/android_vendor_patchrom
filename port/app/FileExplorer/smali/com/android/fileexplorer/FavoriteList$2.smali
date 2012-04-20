.class Lcom/android/fileexplorer/FavoriteList$2;
.super Ljava/lang/Object;
.source "FavoriteList.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FavoriteList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/FavoriteList;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/FavoriteList;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/fileexplorer/FavoriteList$2;->this$0:Lcom/android/fileexplorer/FavoriteList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v3, 0x0

    .line 142
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 144
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    const/16 v1, 0x64

    const v2, 0x7f060040

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/FavoriteList$2;->this$0:Lcom/android/fileexplorer/FavoriteList;

    #getter for: Lcom/android/fileexplorer/FavoriteList;->menuItemClick:Landroid/view/MenuItem$OnMenuItemClickListener;
    invoke-static {v2}, Lcom/android/fileexplorer/FavoriteList;->access$000(Lcom/android/fileexplorer/FavoriteList;)Landroid/view/MenuItem$OnMenuItemClickListener;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 145
    return-void
.end method
