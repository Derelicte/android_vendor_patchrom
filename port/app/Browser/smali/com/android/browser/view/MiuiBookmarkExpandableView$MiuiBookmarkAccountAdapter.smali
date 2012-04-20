.class Lcom/android/browser/view/MiuiBookmarkExpandableView$MiuiBookmarkAccountAdapter;
.super Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;
.source "MiuiBookmarkExpandableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/view/MiuiBookmarkExpandableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MiuiBookmarkAccountAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/view/MiuiBookmarkExpandableView;


# direct methods
.method public constructor <init>(Lcom/android/browser/view/MiuiBookmarkExpandableView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/browser/view/MiuiBookmarkExpandableView$MiuiBookmarkAccountAdapter;->this$0:Lcom/android/browser/view/MiuiBookmarkExpandableView;

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;-><init>(Lcom/android/browser/view/BookmarkExpandableView;Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "view"
    .parameter "parent"

    .prologue
    const v6, 0x7f0d0019

    const/4 v5, 0x0

    .line 39
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 40
    .local v2, ret:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/browser/view/MiuiBookmarkExpandableView$MiuiBookmarkAccountAdapter;->getGroupCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 42
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 43
    iget-object v3, p0, Lcom/android/browser/view/MiuiBookmarkExpandableView$MiuiBookmarkAccountAdapter;->mBreadcrumbs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BreadCrumbView;

    .line 45
    .local v0, crumbs:Lcom/android/browser/BreadCrumbView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/browser/BreadCrumbView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 46
    const v3, 0x302019c

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 55
    .end local v0           #crumbs:Lcom/android/browser/BreadCrumbView;
    :goto_0
    return-object v2

    .line 48
    .restart local v0       #crumbs:Lcom/android/browser/BreadCrumbView;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 51
    .end local v0           #crumbs:Lcom/android/browser/BreadCrumbView;
    :cond_1
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 52
    .local v1, name:Landroid/widget/TextView;
    if-eqz p2, :cond_2

    const v3, 0x3020005

    :goto_1
    invoke-virtual {v1, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    :cond_2
    const v3, 0x3020007

    goto :goto_1
.end method
