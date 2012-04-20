.class Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "UnknownContactFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/UnknownContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalllogItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mCalllogItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/CalllogMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDurationBuffer:Ljava/nio/CharBuffer;

.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/contacts/detail/UnknownContactFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/detail/UnknownContactFragment;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 412
    iput-object p2, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->mContext:Landroid/content/Context;

    .line 413
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 414
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->mDurationBuffer:Ljava/nio/CharBuffer;

    .line 415
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 419
    iget-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->mCalllogItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->mCalllogItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 420
    :cond_0
    const/4 v1, 0x7

    .line 424
    :goto_0
    return v1

    .line 422
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->mCalllogItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 424
    .local v0, count:I
    add-int/lit8 v1, v0, 0x8

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 429
    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-ge p1, v0, :cond_0

    .line 430
    const/4 v0, 0x0

    .line 432
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->mCalllogItems:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 437
    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-ge p1, v0, :cond_0

    .line 438
    const-wide/16 v0, -0x1

    .line 440
    :goto_0
    return-wide v0

    :cond_0
    add-int/lit8 v0, p1, -0x8

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x3

    .line 446
    if-nez p1, :cond_0

    .line 447
    iget-object v3, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #calls: Lcom/android/contacts/detail/UnknownContactFragment;->getPaddingTopView()Landroid/view/View;
    invoke-static {v3}, Lcom/android/contacts/detail/UnknownContactFragment;->access$600(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/view/View;

    move-result-object v3

    .line 522
    :goto_0
    return-object v3

    .line 448
    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 449
    iget-object v3, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #calls: Lcom/android/contacts/detail/UnknownContactFragment;->getItemHeaderView()Landroid/view/View;
    invoke-static {v3}, Lcom/android/contacts/detail/UnknownContactFragment;->access$700(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 450
    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 451
    iget-object v3, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #calls: Lcom/android/contacts/detail/UnknownContactFragment;->getItemView()Landroid/view/View;
    invoke-static {v3}, Lcom/android/contacts/detail/UnknownContactFragment;->access$800(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 452
    :cond_2
    if-ne p1, v8, :cond_3

    .line 453
    iget-object v3, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #calls: Lcom/android/contacts/detail/UnknownContactFragment;->getButtonHeaderView()Landroid/view/View;
    invoke-static {v3}, Lcom/android/contacts/detail/UnknownContactFragment;->access$900(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 454
    :cond_3
    const/4 v3, 0x4

    if-ne p1, v3, :cond_4

    .line 455
    iget-object v3, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #calls: Lcom/android/contacts/detail/UnknownContactFragment;->getCreateView()Landroid/view/View;
    invoke-static {v3}, Lcom/android/contacts/detail/UnknownContactFragment;->access$1000(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 456
    :cond_4
    const/4 v3, 0x5

    if-ne p1, v3, :cond_5

    .line 457
    iget-object v3, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #calls: Lcom/android/contacts/detail/UnknownContactFragment;->getEditView()Landroid/view/View;
    invoke-static {v3}, Lcom/android/contacts/detail/UnknownContactFragment;->access$1100(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 458
    :cond_5
    const/4 v3, 0x6

    if-ne p1, v3, :cond_6

    .line 459
    iget-object v3, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #calls: Lcom/android/contacts/detail/UnknownContactFragment;->getAddToBlackListView()Landroid/view/View;
    invoke-static {v3}, Lcom/android/contacts/detail/UnknownContactFragment;->access$1200(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 460
    :cond_6
    const/4 v3, 0x7

    if-ne p1, v3, :cond_7

    .line 461
    iget-object v3, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #calls: Lcom/android/contacts/detail/UnknownContactFragment;->getCalllogHeaderView()Landroid/view/View;
    invoke-static {v3}, Lcom/android/contacts/detail/UnknownContactFragment;->access$1300(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 464
    :cond_7
    const/4 v2, 0x0

    .line 465
    .local v2, vh:Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$ViewHolder;
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_9

    .line 466
    :cond_8
    iget-object v3, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040006

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 467
    new-instance v2, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$ViewHolder;

    .end local v2           #vh:Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$ViewHolder;
    invoke-direct {v2, p0, v5}, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$ViewHolder;-><init>(Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;Lcom/android/contacts/detail/UnknownContactFragment$1;)V

    .line 468
    .restart local v2       #vh:Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$ViewHolder;
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 470
    const v3, 0x7f07003e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$ViewHolder;->mCallType:Landroid/widget/ImageView;

    .line 471
    const v3, 0x7f07003f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$ViewHolder;->mCallDate:Landroid/widget/TextView;

    .line 472
    const v3, 0x7f070040

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$ViewHolder;->mCallNumber:Landroid/widget/TextView;

    .line 473
    const v3, 0x7f070041

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$ViewHolder;->mLocation:Landroid/widget/TextView;

    .line 474
    const v3, 0x7f070042

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$ViewHolder;->mDuration:Landroid/widget/TextView;

    .line 479
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/CalllogMetaData;

    .line 481
    .local v1, calllog:Lcom/android/contacts/CalllogMetaData;
    invoke-virtual {v1}, Lcom/android/contacts/CalllogMetaData;->getType()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/contacts/CalllogMetaData;->getmFowardedCall()I

    move-result v4

    iget-object v5, v2, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$ViewHolder;->mCallType:Landroid/widget/ImageView;

    invoke-static {v3, v4, v5}, Lcom/android/contacts/ContactsUtils;->setCallLogIcons(IILandroid/widget/ImageView;)V

    .line 483
    iget-object v3, v2, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$ViewHolder;->mCallDate:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/contacts/CalllogMetaData;->getDate()J

    move-result-wide v5

    const v7, 0x20015

    invoke-static {v4, v5, v6, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v3, v2, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$ViewHolder;->mCallNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 489
    iget-object v3, v2, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$ViewHolder;->mLocation:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 491
    iget-object v3, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->mDurationBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 492
    invoke-virtual {v1}, Lcom/android/contacts/CalllogMetaData;->getType()I

    move-result v3

    if-ne v3, v8, :cond_a

    .line 493
    iget-object v3, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->mDurationBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Lcom/android/contacts/CalllogMetaData;->getDuration()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/android/contacts/ContactsUtils;->formatRingDuration(Landroid/content/Context;Ljava/nio/CharBuffer;J)V

    .line 494
    iget-object v3, v2, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$ViewHolder;->mCallDate:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0f002b

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 500
    :goto_2
    iget-object v3, v2, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$ViewHolder;->mDuration:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->mDurationBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->mDurationBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v6}, Ljava/nio/CharBuffer;->position()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/TextView;->setText([CII)V

    .line 502
    new-instance v3, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$1;-><init>(Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;Lcom/android/contacts/CalllogMetaData;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, p2

    .line 517
    check-cast v0, Lcom/android/contacts/detail/ActionsViewContainer;

    .line 518
    .local v0, actionsButtonContainer:Lcom/android/contacts/detail/ActionsViewContainer;
    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ActionsViewContainer;->setPosition(I)V

    .line 519
    iget-object v3, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    invoke-virtual {v3, p2}, Lcom/android/contacts/detail/UnknownContactFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 521
    invoke-virtual {p0}, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->getCount()I

    move-result v3

    invoke-static {p2, p1, v3}, Lcom/android/contacts/ContactsUtils;->setItemBackground(Landroid/view/View;II)V

    move-object v3, p2

    .line 522
    goto/16 :goto_0

    .line 476
    .end local v0           #actionsButtonContainer:Lcom/android/contacts/detail/ActionsViewContainer;
    .end local v1           #calllog:Lcom/android/contacts/CalllogMetaData;
    :cond_9
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #vh:Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$ViewHolder;
    check-cast v2, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$ViewHolder;

    .restart local v2       #vh:Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$ViewHolder;
    goto/16 :goto_1

    .line 496
    .restart local v1       #calllog:Lcom/android/contacts/CalllogMetaData;
    :cond_a
    iget-object v3, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->mDurationBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Lcom/android/contacts/CalllogMetaData;->getDuration()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/android/contacts/CalllogMetaData;->getType()I

    move-result v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/contacts/ContactsUtils;->formatDuration(Landroid/content/Context;Ljava/nio/CharBuffer;JI)V

    .line 498
    iget-object v3, v2, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$ViewHolder;->mCallDate:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0f002d

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_2
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 533
    invoke-static {}, Lcom/android/contacts/detail/UnknownContactFragment;->access$1500()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCalllogItems(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/CalllogMetaData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 537
    .local p1, calllogItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/CalllogMetaData;>;"
    iput-object p1, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->mCalllogItems:Ljava/util/ArrayList;

    .line 538
    invoke-virtual {p0}, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->notifyDataSetChanged()V

    .line 539
    return-void
.end method
