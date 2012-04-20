.class public Lcom/android/browser/MiuiDateSortedExpandableListAdapter;
.super Lcom/android/browser/DateSortedExpandableListAdapter;
.source "MiuiDateSortedExpandableListAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "dateIndex"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/android/browser/DateSortedExpandableListAdapter;-><init>(Landroid/content/Context;I)V

    .line 12
    return-void
.end method


# virtual methods
.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 17
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/browser/DateSortedExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 19
    .local v0, view:Landroid/widget/TextView;
    if-eqz p2, :cond_0

    const v1, 0x3020005

    :goto_0
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 22
    return-object v0

    .line 19
    :cond_0
    const v1, 0x3020006

    goto :goto_0
.end method
