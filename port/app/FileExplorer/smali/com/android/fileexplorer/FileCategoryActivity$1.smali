.class Lcom/android/fileexplorer/FileCategoryActivity$1;
.super Ljava/lang/Object;
.source "FileCategoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FileCategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/FileCategoryActivity;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/FileCategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/fileexplorer/FileCategoryActivity$1;->this$0:Lcom/android/fileexplorer/FileCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 243
    invoke-static {}, Lcom/android/fileexplorer/FileCategoryActivity;->access$100()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    .line 244
    .local v0, f:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
    if-eqz v0, :cond_0

    .line 245
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity$1;->this$0:Lcom/android/fileexplorer/FileCategoryActivity;

    #calls: Lcom/android/fileexplorer/FileCategoryActivity;->onCategorySelected(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)V
    invoke-static {v1, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->access$200(Lcom/android/fileexplorer/FileCategoryActivity;Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)V

    .line 246
    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    if-eq v0, v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity$1;->this$0:Lcom/android/fileexplorer/FileCategoryActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/FileCategoryActivity;->setHasOptionsMenu(Z)V

    .line 250
    :cond_0
    return-void
.end method
