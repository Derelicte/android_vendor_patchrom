.class Lcom/android/browser/MiuiBrowserHistoryPage$MiuiHistoryAdapter;
.super Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;
.source "MiuiBrowserHistoryPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/MiuiBrowserHistoryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MiuiHistoryAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/MiuiBrowserHistoryPage;


# direct methods
.method constructor <init>(Lcom/android/browser/MiuiBrowserHistoryPage;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/browser/MiuiBrowserHistoryPage$MiuiHistoryAdapter;->this$0:Lcom/android/browser/MiuiBrowserHistoryPage;

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;-><init>(Lcom/android/browser/BrowserHistoryPage;Landroid/content/Context;)V

    .line 110
    return-void
.end method


# virtual methods
.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 127
    if-eqz p4, :cond_0

    instance-of v0, p4, Lcom/android/browser/HistoryItem;

    if-nez v0, :cond_1

    .line 128
    :cond_0
    new-instance v4, Lcom/android/browser/HistoryItem;

    invoke-virtual {p0}, Lcom/android/browser/MiuiBrowserHistoryPage$MiuiHistoryAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/android/browser/HistoryItem;-><init>(Landroid/content/Context;)V

    .line 129
    .local v4, item:Lcom/android/browser/HistoryItem;
    invoke-virtual {v4}, Lcom/android/browser/HistoryItem;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v4}, Lcom/android/browser/HistoryItem;->getPaddingTop()I

    move-result v1

    invoke-virtual {v4}, Lcom/android/browser/HistoryItem;->getPaddingRight()I

    move-result v2

    invoke-virtual {v4}, Lcom/android/browser/HistoryItem;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/browser/HistoryItem;->setPadding(IIII)V

    .line 131
    iget-object v0, p0, Lcom/android/browser/MiuiBrowserHistoryPage$MiuiHistoryAdapter;->mFaviconBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Lcom/android/browser/HistoryItem;->setFaviconBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    .line 135
    invoke-super/range {v0 .. v5}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .end local v4           #item:Lcom/android/browser/HistoryItem;
    :cond_1
    move-object v4, p4

    .line 133
    check-cast v4, Lcom/android/browser/HistoryItem;

    .restart local v4       #item:Lcom/android/browser/HistoryItem;
    goto :goto_0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 117
    .local v0, view:Landroid/widget/TextView;
    if-eqz p2, :cond_0

    const v1, 0x3020005

    :goto_0
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 120
    return-object v0

    .line 117
    :cond_0
    const v1, 0x3020006

    goto :goto_0
.end method
