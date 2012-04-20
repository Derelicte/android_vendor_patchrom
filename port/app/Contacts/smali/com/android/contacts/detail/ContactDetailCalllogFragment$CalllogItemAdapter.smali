.class Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactDetailCalllogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailCalllogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalllogItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$ViewHolder;
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

.field private mDurationBuffer:Ljava/nio/CharBuffer;

.field private mHasMultiNumbers:Z

.field private mNumberLocationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailCalllogFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/detail/ContactDetailCalllogFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->mHasMultiNumbers:Z

    .line 279
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->mNumberLocationMap:Ljava/util/HashMap;

    .line 283
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->mDurationBuffer:Ljava/nio/CharBuffer;

    .line 284
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 288
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->mCalllogItems:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v1

    .line 291
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->mCalllogItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 293
    .local v0, count:I
    if-eqz v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 298
    if-nez p1, :cond_0

    .line 299
    const/4 v0, 0x0

    .line 301
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->mCalllogItems:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 306
    if-nez p1, :cond_0

    .line 307
    const-wide/16 v0, -0x1

    .line 309
    :goto_0
    return-wide v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 314
    if-nez p1, :cond_0

    .line 315
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->access$300(Lcom/android/contacts/detail/ContactDetailCalllogFragment;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040028

    invoke-virtual {v5, v6, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 387
    :goto_0
    return-object v5

    .line 319
    :cond_0
    const/4 v4, 0x0

    .line 320
    .local v4, vh:Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$ViewHolder;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 321
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->access$300(Lcom/android/contacts/detail/ContactDetailCalllogFragment;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040006

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 322
    new-instance v4, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$ViewHolder;

    .end local v4           #vh:Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$ViewHolder;
    invoke-direct {v4, p0, v7}, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$ViewHolder;-><init>(Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;Lcom/android/contacts/detail/ContactDetailCalllogFragment$1;)V

    .line 323
    .restart local v4       #vh:Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$ViewHolder;
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 325
    const v5, 0x7f07003e

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$ViewHolder;->mCallType:Landroid/widget/ImageView;

    .line 326
    const v5, 0x7f07003f

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$ViewHolder;->mCallDate:Landroid/widget/TextView;

    .line 327
    const v5, 0x7f070040

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$ViewHolder;->mCallNumber:Landroid/widget/TextView;

    .line 328
    const v5, 0x7f070041

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$ViewHolder;->mLocation:Landroid/widget/TextView;

    .line 329
    const v5, 0x7f070042

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$ViewHolder;->mDuration:Landroid/widget/TextView;

    .line 334
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/CalllogMetaData;

    .line 336
    .local v1, calllog:Lcom/android/contacts/CalllogMetaData;
    invoke-virtual {v1}, Lcom/android/contacts/CalllogMetaData;->getType()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/contacts/CalllogMetaData;->getmFowardedCall()I

    move-result v6

    iget-object v7, v4, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$ViewHolder;->mCallType:Landroid/widget/ImageView;

    invoke-static {v5, v6, v7}, Lcom/android/contacts/ContactsUtils;->setCallLogIcons(IILandroid/widget/ImageView;)V

    .line 338
    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$ViewHolder;->mCallDate:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->access$000(Lcom/android/contacts/detail/ContactDetailCalllogFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/contacts/CalllogMetaData;->getDate()J

    move-result-wide v7

    const v9, 0x20015

    invoke-static {v6, v7, v8, v9}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-boolean v5, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->mHasMultiNumbers:Z

    if-nez v5, :cond_3

    .line 344
    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$ViewHolder;->mCallNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$ViewHolder;->mLocation:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    :goto_2
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->mDurationBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 364
    invoke-virtual {v1}, Lcom/android/contacts/CalllogMetaData;->getType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    .line 365
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->access$000(Lcom/android/contacts/detail/ContactDetailCalllogFragment;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->mDurationBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Lcom/android/contacts/CalllogMetaData;->getDuration()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/android/contacts/ContactsUtils;->formatRingDuration(Landroid/content/Context;Ljava/nio/CharBuffer;J)V

    .line 366
    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$ViewHolder;->mCallDate:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->access$000(Lcom/android/contacts/detail/ContactDetailCalllogFragment;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0f002b

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 372
    :goto_3
    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$ViewHolder;->mDuration:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->mDurationBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v6}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->mDurationBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v7}, Ljava/nio/CharBuffer;->position()I

    move-result v7

    invoke-virtual {v5, v6, v10, v7}, Landroid/widget/TextView;->setText([CII)V

    move-object v0, p2

    .line 374
    check-cast v0, Lcom/android/contacts/detail/ActionsViewContainer;

    .line 375
    .local v0, actionsButtonContainer:Lcom/android/contacts/detail/ActionsViewContainer;
    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ActionsViewContainer;->setPosition(I)V

    .line 376
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    invoke-virtual {v5, p2}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 378
    new-instance v5, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$1;

    invoke-direct {v5, p0, v1}, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$1;-><init>(Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;Lcom/android/contacts/CalllogMetaData;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->getCount()I

    move-result v5

    invoke-static {p2, p1, v5}, Lcom/android/contacts/ContactsUtils;->setItemBackground(Landroid/view/View;II)V

    move-object v5, p2

    .line 387
    goto/16 :goto_0

    .line 331
    .end local v0           #actionsButtonContainer:Lcom/android/contacts/detail/ActionsViewContainer;
    .end local v1           #calllog:Lcom/android/contacts/CalllogMetaData;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #vh:Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$ViewHolder;
    check-cast v4, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$ViewHolder;

    .restart local v4       #vh:Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$ViewHolder;
    goto/16 :goto_1

    .line 347
    .restart local v1       #calllog:Lcom/android/contacts/CalllogMetaData;
    :cond_3
    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$ViewHolder;->mCallNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$ViewHolder;->mLocation:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    invoke-virtual {v1}, Lcom/android/contacts/CalllogMetaData;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, number:Ljava/lang/String;
    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$ViewHolder;->mCallNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->mNumberLocationMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 355
    .local v2, location:Ljava/lang/String;
    if-nez v2, :cond_4

    .line 356
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->access$000(Lcom/android/contacts/detail/ContactDetailCalllogFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 357
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->mNumberLocationMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_4
    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$ViewHolder;->mLocation:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 368
    .end local v2           #location:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->access$000(Lcom/android/contacts/detail/ContactDetailCalllogFragment;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->mDurationBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Lcom/android/contacts/CalllogMetaData;->getDuration()J

    move-result-wide v7

    invoke-virtual {v1}, Lcom/android/contacts/CalllogMetaData;->getType()I

    move-result v9

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/contacts/ContactsUtils;->formatDuration(Landroid/content/Context;Ljava/nio/CharBuffer;JI)V

    .line 370
    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$ViewHolder;->mCallDate:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->access$000(Lcom/android/contacts/detail/ContactDetailCalllogFragment;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0f002d

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_3
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 398
    if-nez p1, :cond_0

    .line 399
    const/4 v0, 0x0

    .line 401
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCalllogItems(Ljava/util/ArrayList;Z)V
    .locals 0
    .parameter
    .parameter "multiNumbers"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/CalllogMetaData;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p1, calllogItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/CalllogMetaData;>;"
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->mCalllogItems:Ljava/util/ArrayList;

    .line 406
    iput-boolean p2, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->mHasMultiNumbers:Z

    .line 407
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->notifyDataSetChanged()V

    .line 408
    return-void
.end method
