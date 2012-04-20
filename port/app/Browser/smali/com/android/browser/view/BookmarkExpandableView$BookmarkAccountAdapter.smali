.class Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "BookmarkExpandableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/view/BookmarkExpandableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BookmarkAccountAdapter"
.end annotation


# instance fields
.field mBreadcrumbs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/browser/BreadCrumbView;",
            ">;"
        }
    .end annotation
.end field

.field mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/BrowserBookmarksAdapter;",
            ">;"
        }
    .end annotation
.end field

.field mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mInflater:Landroid/view/LayoutInflater;

.field mLastViewWidth:I

.field mObserver:Landroid/database/DataSetObserver;

.field mRowCount:I

.field mRowPadding:I

.field final synthetic this$0:Lcom/android/browser/view/BookmarkExpandableView;


# direct methods
.method public constructor <init>(Lcom/android/browser/view/BookmarkExpandableView;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 366
    iput-object p1, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 348
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mBreadcrumbs:Ljava/util/HashMap;

    .line 351
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mRowCount:I

    .line 352
    iput v1, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mLastViewWidth:I

    .line 353
    iput v1, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mRowPadding:I

    .line 354
    new-instance v0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter$1;-><init>(Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;)V

    iput-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mObserver:Landroid/database/DataSetObserver;

    .line 367
    #setter for: Lcom/android/browser/view/BookmarkExpandableView;->mContext:Landroid/content/Context;
    invoke-static {p1, p2}, Lcom/android/browser/view/BookmarkExpandableView;->access$402(Lcom/android/browser/view/BookmarkExpandableView;Landroid/content/Context;)Landroid/content/Context;

    .line 368
    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/browser/view/BookmarkExpandableView;->access$400(Lcom/android/browser/view/BookmarkExpandableView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mChildren:Ljava/util/ArrayList;

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mGroups:Ljava/util/ArrayList;

    .line 371
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 375
    iget-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 376
    invoke-virtual {p0}, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->notifyDataSetChanged()V

    .line 377
    return-void
.end method

.method public getBreadCrumbView(I)Lcom/android/browser/BreadCrumbView;
    .locals 5
    .parameter "groupPosition"

    .prologue
    .line 502
    iget-object v2, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mBreadcrumbs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/BreadCrumbView;

    .line 503
    .local v1, crumbs:Lcom/android/browser/BreadCrumbView;
    if-nez v1, :cond_0

    .line 504
    iget-object v2, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04000d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .end local v1           #crumbs:Lcom/android/browser/BreadCrumbView;
    check-cast v1, Lcom/android/browser/BreadCrumbView;

    .line 506
    .restart local v1       #crumbs:Lcom/android/browser/BreadCrumbView;
    iget-object v2, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v1, v2}, Lcom/android/browser/BreadCrumbView;->setController(Lcom/android/browser/BreadCrumbView$Controller;)V

    .line 507
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/browser/BreadCrumbView;->setUseBackButton(Z)V

    .line 508
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/browser/BreadCrumbView;->setMaxVisible(I)V

    .line 509
    iget-object v2, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/browser/view/BookmarkExpandableView;->access$400(Lcom/android/browser/view/BookmarkExpandableView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c004f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, bookmarks:Ljava/lang/String;
    const/4 v2, 0x0

    sget-object v3, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/browser/BreadCrumbView;->pushView(Ljava/lang/String;ZLjava/lang/Object;)Landroid/view/View;

    .line 512
    const/high16 v2, 0x7f0d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/browser/BreadCrumbView;->setTag(ILjava/lang/Object;)V

    .line 513
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/browser/BreadCrumbView;->setVisibility(I)V

    .line 514
    iget-object v2, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mBreadcrumbs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    .end local v0           #bookmarks:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 386
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildType(II)I
    .locals 3
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 536
    iget-object v1, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserBookmarksAdapter;

    .line 537
    .local v0, adapter:Lcom/android/browser/BrowserBookmarksAdapter;
    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksAdapter;->getViewMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 538
    const/4 v1, 0x1

    .line 540
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChildTypeCount()I
    .locals 1

    .prologue
    .line 531
    const/4 v0, 0x2

    return v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 392
    if-nez p4, :cond_0

    .line 393
    iget-object v7, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040005

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 395
    :cond_0
    iget-object v7, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserBookmarksAdapter;

    .line 396
    .local v0, childAdapter:Lcom/android/browser/BrowserBookmarksAdapter;
    iget v5, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mRowCount:I

    .line 397
    .local v5, rowCount:I
    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksAdapter;->getViewMode()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 398
    const/4 v5, 0x1

    :cond_1
    move-object v4, p4

    .line 400
    check-cast v4, Landroid/widget/LinearLayout;

    .line 401
    .local v4, row:Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-le v7, v5, :cond_2

    .line 402
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v4, v5, v7}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 404
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_9

    .line 405
    const/4 v1, 0x0

    .line 406
    .local v1, cv:Landroid/view/View;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-le v7, v2, :cond_3

    .line 407
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 409
    :cond_3
    mul-int v7, p2, v5

    add-int v3, v7, v2

    .line 410
    .local v3, realChildPosition:I
    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksAdapter;->getCount()I

    move-result v7

    if-ge v3, v7, :cond_8

    .line 411
    invoke-virtual {v0, v3, v1, v4}, Lcom/android/browser/BrowserBookmarksAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 412
    .local v6, v:Landroid/view/View;
    const/high16 v7, 0x7f0d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 413
    const v7, 0x7f0d0001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 414
    const v7, 0x7f0d0002

    invoke-virtual {v0, v3}, Lcom/android/browser/BrowserBookmarksAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 415
    iget-object v7, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mChildClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v7}, Lcom/android/browser/view/BookmarkExpandableView;->access$500(Lcom/android/browser/view/BookmarkExpandableView;)Landroid/view/View$OnClickListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    iget-object v7, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mLongClickable:Z
    invoke-static {v7}, Lcom/android/browser/view/BookmarkExpandableView;->access$600(Lcom/android/browser/view/BookmarkExpandableView;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setLongClickable(Z)V

    .line 417
    iget-object v7, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mDragHandler:Lcom/android/browser/BookmarkDragHandler;
    invoke-static {v7}, Lcom/android/browser/view/BookmarkExpandableView;->access$100(Lcom/android/browser/view/BookmarkExpandableView;)Lcom/android/browser/BookmarkDragHandler;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 418
    iget-object v7, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mChildOnLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v7}, Lcom/android/browser/view/BookmarkExpandableView;->access$700(Lcom/android/browser/view/BookmarkExpandableView;)Landroid/view/View$OnLongClickListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 419
    iget-object v7, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mDragHandler:Lcom/android/browser/BookmarkDragHandler;
    invoke-static {v7}, Lcom/android/browser/view/BookmarkExpandableView;->access$100(Lcom/android/browser/view/BookmarkExpandableView;)Lcom/android/browser/BookmarkDragHandler;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/browser/BookmarkDragHandler;->registerBookmarkDragHandler(Landroid/view/View;)V

    .line 421
    :cond_4
    if-nez v1, :cond_6

    .line 422
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 404
    .end local v6           #v:Landroid/view/View;
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 423
    .restart local v6       #v:Landroid/view/View;
    :cond_6
    if-eq v1, v6, :cond_7

    .line 424
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 425
    invoke-virtual {v4, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 427
    :cond_7
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 429
    .end local v6           #v:Landroid/view/View;
    :cond_8
    if-eqz v1, :cond_5

    .line 430
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 433
    .end local v1           #cv:Landroid/view/View;
    .end local v3           #realChildPosition:I
    :cond_9
    return-object v4
.end method

.method public getChildrenCount(I)I
    .locals 3
    .parameter "groupPosition"

    .prologue
    .line 438
    iget-object v1, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserBookmarksAdapter;

    .line 439
    .local v0, adapter:Lcom/android/browser/BrowserBookmarksAdapter;
    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksAdapter;->getViewMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 440
    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksAdapter;->getCount()I

    move-result v1

    .line 442
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksAdapter;->getCount()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mRowCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 474
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 480
    if-nez p3, :cond_0

    .line 481
    iget-object v4, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040006

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 482
    iget-object v4, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mGroupOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v4}, Lcom/android/browser/view/BookmarkExpandableView;->access$1000(Lcom/android/browser/view/BookmarkExpandableView;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    :cond_0
    const/high16 v4, 0x7f0d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 485
    const v4, 0x7f0d001a

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 486
    .local v0, crumbHolder:Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 487
    invoke-virtual {p0, p1}, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->getBreadCrumbView(I)Lcom/android/browser/BreadCrumbView;

    move-result-object v1

    .line 488
    .local v1, crumbs:Lcom/android/browser/BreadCrumbView;
    invoke-virtual {v1}, Lcom/android/browser/BreadCrumbView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 489
    invoke-virtual {v1}, Lcom/android/browser/BreadCrumbView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 491
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 492
    const v4, 0x7f0d0019

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 493
    .local v3, name:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 494
    .local v2, groupName:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 495
    iget-object v4, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/browser/view/BookmarkExpandableView;->access$400(Lcom/android/browser/view/BookmarkExpandableView;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c0149

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 497
    :cond_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 521
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 526
    const/4 v0, 0x1

    return v0
.end method

.method public measureChildren(I)V
    .locals 4
    .parameter "viewWidth"

    .prologue
    .line 456
    iget v3, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mLastViewWidth:I

    if-ne v3, p1, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iget-object v3, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mColumnWidth:I
    invoke-static {v3}, Lcom/android/browser/view/BookmarkExpandableView;->access$800(Lcom/android/browser/view/BookmarkExpandableView;)I

    move-result v3

    div-int v1, p1, v3

    .line 459
    .local v1, rowCount:I
    iget-object v3, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mMaxColumnCount:I
    invoke-static {v3}, Lcom/android/browser/view/BookmarkExpandableView;->access$900(Lcom/android/browser/view/BookmarkExpandableView;)I

    move-result v3

    if-lez v3, :cond_2

    .line 460
    iget-object v3, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mMaxColumnCount:I
    invoke-static {v3}, Lcom/android/browser/view/BookmarkExpandableView;->access$900(Lcom/android/browser/view/BookmarkExpandableView;)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 462
    :cond_2
    iget-object v3, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mColumnWidth:I
    invoke-static {v3}, Lcom/android/browser/view/BookmarkExpandableView;->access$800(Lcom/android/browser/view/BookmarkExpandableView;)I

    move-result v3

    mul-int/2addr v3, v1

    sub-int v3, p1, v3

    div-int/lit8 v2, v3, 0x2

    .line 463
    .local v2, rowPadding:I
    iget v3, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mRowCount:I

    if-ne v1, v3, :cond_3

    iget v3, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mRowPadding:I

    if-eq v2, v3, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 464
    .local v0, notify:Z
    :goto_1
    iput v1, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mRowCount:I

    .line 465
    iput v2, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mRowPadding:I

    .line 466
    iput p1, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mLastViewWidth:I

    .line 467
    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 463
    .end local v0           #notify:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method
