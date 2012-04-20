.class public Lcom/android/contacts/detail/UnknownContactFragment;
.super Landroid/app/ListFragment;
.source "UnknownContactFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/UnknownContactFragment$Listener;,
        Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;,
        Lcom/android/contacts/detail/UnknownContactFragment$EmailItemAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mDisableItem:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionMode:I

.field private final mCalllogLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/CalllogLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private mEmail:Ljava/lang/String;

.field private mEmptyView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/contacts/detail/UnknownContactFragment$Listener;

.field private mLocation:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mResult:Lcom/android/contacts/CalllogLoader$Result;

.field onDeleteCalllogClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/android/contacts/detail/UnknownContactFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/UnknownContactFragment;->TAG:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/contacts/detail/UnknownContactFragment;->mDisableItem:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 89
    iput-object v0, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mNumber:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mLocation:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mEmail:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mResult:Lcom/android/contacts/CalllogLoader$Result;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mActionMode:I

    .line 302
    new-instance v0, Lcom/android/contacts/detail/UnknownContactFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/UnknownContactFragment$2;-><init>(Lcom/android/contacts/detail/UnknownContactFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/UnknownContactFragment;->onDeleteCalllogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 326
    new-instance v0, Lcom/android/contacts/detail/UnknownContactFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/UnknownContactFragment$3;-><init>(Lcom/android/contacts/detail/UnknownContactFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mCalllogLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 703
    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/contacts/detail/UnknownContactFragment;->getCreateView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/contacts/detail/UnknownContactFragment;->getEditView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/contacts/detail/UnknownContactFragment;->getAddToBlackListView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/contacts/detail/UnknownContactFragment;->getCalllogHeaderView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/contacts/detail/UnknownContactFragment;->mDisableItem:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/detail/UnknownContactFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/detail/UnknownContactFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mActionMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/detail/UnknownContactFragment;)Lcom/android/contacts/CalllogLoader$Result;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mResult:Lcom/android/contacts/CalllogLoader$Result;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/contacts/detail/UnknownContactFragment;Lcom/android/contacts/CalllogLoader$Result;)Lcom/android/contacts/CalllogLoader$Result;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mResult:Lcom/android/contacts/CalllogLoader$Result;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/detail/UnknownContactFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/detail/UnknownContactFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/contacts/detail/UnknownContactFragment;->bindCalllogList()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/detail/UnknownContactFragment;)Lcom/android/contacts/detail/UnknownContactFragment$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mListener:Lcom/android/contacts/detail/UnknownContactFragment$Listener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/contacts/detail/UnknownContactFragment;->getPaddingTopView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/contacts/detail/UnknownContactFragment;->getItemHeaderView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/contacts/detail/UnknownContactFragment;->getItemView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/contacts/detail/UnknownContactFragment;->getButtonHeaderView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private bindCalllogList()V
    .locals 2

    .prologue
    .line 357
    new-instance v0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;

    iget-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;-><init>(Lcom/android/contacts/detail/UnknownContactFragment;Landroid/content/Context;)V

    .line 358
    .local v0, mAdapter:Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;
    invoke-virtual {p0}, Lcom/android/contacts/detail/UnknownContactFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 359
    iget-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mResult:Lcom/android/contacts/CalllogLoader$Result;

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mResult:Lcom/android/contacts/CalllogLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/CalllogLoader$Result;->getCalllog()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->setCalllogItems(Ljava/util/ArrayList;)V

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->setCalllogItems(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private deleteCalllog()V
    .locals 4

    .prologue
    .line 297
    const v2, 0x7f0b0069

    invoke-virtual {p0, v2}, Lcom/android/contacts/detail/UnknownContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, dialogTitle:Ljava/lang/String;
    const v2, 0x7f0b020b

    invoke-virtual {p0, v2}, Lcom/android/contacts/detail/UnknownContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, dialogMsg:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/detail/UnknownContactFragment;->onDeleteCalllogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v2, v3, v1, v0}, Lcom/android/contacts/ContactsUtils;->showDeleteCalllogDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method private deleteCalllog(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/contacts/detail/UnknownContactFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;

    .line 271
    .local v0, adapter:Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/CalllogMetaData;

    .line 272
    .local v1, calllog:Lcom/android/contacts/CalllogMetaData;
    if-eqz v1, :cond_0

    .line 273
    const v4, 0x7f0b01dc

    invoke-virtual {p0, v4}, Lcom/android/contacts/detail/UnknownContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, dialogTitle:Ljava/lang/String;
    const v4, 0x7f0b01e4

    invoke-virtual {p0, v4}, Lcom/android/contacts/detail/UnknownContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, dialogMsg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/contacts/detail/UnknownContactFragment$1;

    invoke-direct {v5, p0, v1, v0}, Lcom/android/contacts/detail/UnknownContactFragment$1;-><init>(Lcom/android/contacts/detail/UnknownContactFragment;Lcom/android/contacts/CalllogMetaData;Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;)V

    invoke-static {v4, v5, v3, v2}, Lcom/android/contacts/ContactsUtils;->showDeleteCalllogDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .end local v2           #dialogMsg:Ljava/lang/String;
    .end local v3           #dialogTitle:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private getAddToBlackListView()Landroid/view/View;
    .locals 5

    .prologue
    .line 677
    iget-object v2, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400a1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 678
    .local v1, view:Landroid/view/View;
    const v2, 0x3020189

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 679
    const v2, 0x7f07015d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 680
    .local v0, text:Landroid/widget/TextView;
    const v2, 0x7f0b01c4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 682
    new-instance v2, Lcom/android/contacts/detail/UnknownContactFragment$9;

    invoke-direct {v2, p0}, Lcom/android/contacts/detail/UnknownContactFragment$9;-><init>(Lcom/android/contacts/detail/UnknownContactFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 693
    return-object v1
.end method

.method private getButtonHeaderView()Landroid/view/View;
    .locals 5

    .prologue
    .line 624
    iget-object v2, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040072

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 625
    .local v1, titleView:Landroid/view/View;
    const v2, 0x7f070066

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 626
    .local v0, titleTextView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0b01f1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    return-object v1
.end method

.method private getCalllogHeaderView()Landroid/view/View;
    .locals 5

    .prologue
    .line 697
    iget-object v2, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040072

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 698
    .local v1, titleView:Landroid/view/View;
    const v2, 0x7f070066

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 699
    .local v0, titleTextView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0b01c7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    return-object v1
.end method

.method private getCreateView()Landroid/view/View;
    .locals 5

    .prologue
    .line 632
    iget-object v2, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400a1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 633
    .local v1, view:Landroid/view/View;
    const v2, 0x3020181

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 634
    const v2, 0x7f07015d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 635
    .local v0, text:Landroid/widget/TextView;
    const v2, 0x7f0b0046

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 637
    new-instance v2, Lcom/android/contacts/detail/UnknownContactFragment$7;

    invoke-direct {v2, p0}, Lcom/android/contacts/detail/UnknownContactFragment$7;-><init>(Lcom/android/contacts/detail/UnknownContactFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 649
    return-object v1
.end method

.method private getEditView()Landroid/view/View;
    .locals 5

    .prologue
    .line 654
    iget-object v2, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400a1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 655
    .local v1, view:Landroid/view/View;
    const v2, 0x3020185

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 656
    const v2, 0x7f07015d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 657
    .local v0, text:Landroid/widget/TextView;
    const v2, 0x7f0b017c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 659
    new-instance v2, Lcom/android/contacts/detail/UnknownContactFragment$8;

    invoke-direct {v2, p0}, Lcom/android/contacts/detail/UnknownContactFragment$8;-><init>(Lcom/android/contacts/detail/UnknownContactFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 672
    return-object v1
.end method

.method private getItemHeaderView()Landroid/view/View;
    .locals 5

    .prologue
    .line 557
    iget-object v2, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040072

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 558
    .local v1, titleView:Landroid/view/View;
    const v2, 0x7f070066

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 559
    .local v0, titleTextView:Landroid/widget/TextView;
    iget v2, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mActionMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 560
    iget-object v2, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0047

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    :cond_0
    :goto_0
    return-object v1

    .line 561
    :cond_1
    iget v2, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mActionMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 562
    iget-object v2, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0048

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getItemView()Landroid/view/View;
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 568
    iget-object v7, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0400a4

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 569
    .local v6, view:Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/android/contacts/detail/UnknownContactFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 570
    const v7, 0x302018d

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 571
    const v7, 0x7f070040

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 572
    .local v3, number:Landroid/widget/TextView;
    const v7, 0x7f070041

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 573
    .local v1, location:Landroid/widget/TextView;
    const v7, 0x7f070076

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 575
    .local v5, sendMms:Landroid/view/View;
    iget v7, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mActionMode:I

    if-ne v7, v11, :cond_3

    .line 576
    iget-object v7, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mNumber:Ljava/lang/String;

    invoke-static {v7}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v4

    .line 577
    .local v4, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    iget-object v2, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mNumber:Ljava/lang/String;

    .line 578
    .local v2, normalizedNumber:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 579
    invoke-virtual {v4, v11, v10}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v2

    .line 581
    :cond_0
    iget-object v7, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mNumber:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mDefaultCountryIso:Ljava/lang/String;

    invoke-static {v7, v2, v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, formattedNumber:Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    iget-object v7, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mLocation:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 585
    iget-object v7, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 589
    :cond_1
    new-instance v7, Lcom/android/contacts/detail/UnknownContactFragment$4;

    invoke-direct {v7, p0}, Lcom/android/contacts/detail/UnknownContactFragment$4;-><init>(Lcom/android/contacts/detail/UnknownContactFragment;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    new-instance v7, Lcom/android/contacts/detail/UnknownContactFragment$5;

    invoke-direct {v7, p0}, Lcom/android/contacts/detail/UnknownContactFragment$5;-><init>(Lcom/android/contacts/detail/UnknownContactFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 619
    .end local v0           #formattedNumber:Ljava/lang/String;
    .end local v2           #normalizedNumber:Ljava/lang/String;
    .end local v4           #pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    :cond_2
    :goto_0
    return-object v6

    .line 606
    :cond_3
    iget v7, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mActionMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 607
    iget-object v7, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mEmail:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 609
    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 610
    new-instance v7, Lcom/android/contacts/detail/UnknownContactFragment$6;

    invoke-direct {v7, p0}, Lcom/android/contacts/detail/UnknownContactFragment$6;-><init>(Lcom/android/contacts/detail/UnknownContactFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private getPaddingTopView()Landroid/view/View;
    .locals 5

    .prologue
    .line 551
    iget-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400a3

    invoke-virtual {p0}, Lcom/android/contacts/detail/UnknownContactFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 553
    .local v0, view:Landroid/view/View;
    return-object v0
.end method


# virtual methods
.method public loadCalllog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "number"
    .parameter "location"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mNumber:Ljava/lang/String;

    .line 317
    iput-object p2, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mLocation:Ljava/lang/String;

    .line 318
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mActionMode:I

    .line 319
    return-void
.end method

.method public loadEmail(Ljava/lang/String;)V
    .locals 1
    .parameter "email"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mEmail:Ljava/lang/String;

    .line 323
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mActionMode:I

    .line 324
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 239
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .local v1, menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 265
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown menu option "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    .end local v1           #menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/lang/ClassCastException;
    sget-object v2, Lcom/android/contacts/detail/UnknownContactFragment;->TAG:Ljava/lang/String;

    const-string v4, "bad menuInfo"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 263
    .end local v0           #e:Ljava/lang/ClassCastException;
    :cond_0
    :goto_0
    return v2

    .line 247
    .restart local v1       #menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :pswitch_0
    iget v4, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mActionMode:I

    if-ne v4, v2, :cond_1

    .line 248
    iget-object v3, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mNumber:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/android/contacts/ContactsUtils;->initiateCall(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 251
    goto :goto_0

    .line 253
    :pswitch_1
    iget v3, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mActionMode:I

    if-ne v3, v2, :cond_2

    .line 254
    iget-object v3, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mNumber:Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-static {v3, v4, v5}, Lcom/android/contacts/ContactsUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_2
    iget v3, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mActionMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 256
    iget-object v3, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mEmail:Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-static {v3, v4, v5}, Lcom/android/contacts/ContactsUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :pswitch_2
    if-eqz v1, :cond_0

    .line 261
    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v3}, Lcom/android/contacts/detail/UnknownContactFragment;->deleteCalllog(I)V

    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 194
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v2, p3

    .line 196
    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 198
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-eqz v2, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/android/contacts/detail/UnknownContactFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;

    .line 200
    .local v0, adapter:Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;
    iget v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v4}, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/CalllogMetaData;

    .line 201
    .local v1, calllog:Lcom/android/contacts/CalllogMetaData;
    if-eqz v1, :cond_0

    .line 202
    iget-object v4, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/contacts/CalllogMetaData;->getDate()J

    move-result-wide v5

    const v7, 0x20015

    invoke-static {v4, v5, v6, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 207
    const v4, 0x7f0b01e3

    invoke-virtual {p0, v4}, Lcom/android/contacts/detail/UnknownContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v8, v9, v8, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 233
    .end local v0           #adapter:Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;
    .end local v1           #calllog:Lcom/android/contacts/CalllogMetaData;
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget v4, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mActionMode:I

    if-ne v4, v7, :cond_4

    .line 212
    iget-object v4, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mNumber:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 217
    :cond_2
    :goto_1
    iget v4, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mActionMode:I

    if-ne v4, v7, :cond_3

    .line 219
    iget-object v4, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "autoip_prefix"

    iget-object v6, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lmiui/provider/ExtraSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, ipPrefix:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 225
    const v4, 0x7f0b0209

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/contacts/detail/UnknownContactFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v8, v8, v8, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 230
    .end local v3           #ipPrefix:Ljava/lang/String;
    :cond_3
    const v4, 0x7f0b018b

    invoke-virtual {p0, v4}, Lcom/android/contacts/detail/UnknownContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v8, v7, v8, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 213
    :cond_4
    iget v4, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mActionMode:I

    if-ne v4, v9, :cond_2

    .line 214
    iget-object v4, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mEmail:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v0, 0x1

    .line 155
    const v1, 0x7f10000e

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 156
    const v1, 0x7f070186

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mActionMode:I

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 157
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/contacts/detail/UnknownContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mContext:Landroid/content/Context;

    .line 114
    iput-object p1, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 115
    iget-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040019

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, rootView:Landroid/view/View;
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mEmptyView:Landroid/view/View;

    .line 118
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/contacts/detail/UnknownContactFragment;->setHasOptionsMenu(Z)V

    .line 119
    iget-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mDefaultCountryIso:Ljava/lang/String;

    .line 120
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 161
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    move v4, v5

    .line 189
    :cond_0
    :goto_0
    return v4

    .line 163
    :pswitch_0
    iget-object v5, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mNumber:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/android/contacts/detail/UnknownContactFragment;->deleteCalllog()V

    goto :goto_0

    .line 168
    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "text/plain"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    iget v6, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mActionMode:I

    if-ne v6, v4, :cond_1

    .line 171
    const-string v6, "android.intent.extra.TEXT"

    iget-object v7, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    :goto_1
    iget-object v6, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f0b00dd

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 178
    .local v1, chooseTitle:Ljava/lang/CharSequence;
    invoke-static {v3, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 181
    .local v0, chooseIntent:Landroid/content/Intent;
    :try_start_0
    iget-object v6, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v2

    .line 183
    .local v2, ex:Landroid/content/ActivityNotFoundException;
    iget-object v6, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f0b00de

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 173
    .end local v0           #chooseIntent:Landroid/content/Intent;
    .end local v1           #chooseTitle:Ljava/lang/CharSequence;
    .end local v2           #ex:Landroid/content/ActivityNotFoundException;
    :cond_1
    const-string v6, "android.intent.extra.TEXT"

    iget-object v7, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mEmail:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x7f070185
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 136
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 138
    iget v1, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mActionMode:I

    if-ne v1, v3, :cond_2

    .line 139
    iget-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/android/contacts/detail/UnknownContactFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/detail/UnknownContactFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mCalllogLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v3, v4, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 144
    :cond_2
    iget v1, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mActionMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mEmail:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 146
    new-instance v0, Lcom/android/contacts/detail/UnknownContactFragment$EmailItemAdapter;

    invoke-direct {v0, p0, v4}, Lcom/android/contacts/detail/UnknownContactFragment$EmailItemAdapter;-><init>(Lcom/android/contacts/detail/UnknownContactFragment;Lcom/android/contacts/detail/UnknownContactFragment$1;)V

    .line 147
    .local v0, mAdapter:Lcom/android/contacts/detail/UnknownContactFragment$EmailItemAdapter;
    invoke-virtual {p0}, Lcom/android/contacts/detail/UnknownContactFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 125
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/contacts/detail/UnknownContactFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 128
    sget-object v0, Lcom/android/contacts/detail/UnknownContactFragment;->mDisableItem:Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/android/contacts/detail/UnknownContactFragment;->mDisableItem:Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lcom/android/contacts/detail/UnknownContactFragment;->mDisableItem:Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lcom/android/contacts/detail/UnknownContactFragment;->mDisableItem:Ljava/util/HashSet;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method public setListener(Lcom/android/contacts/detail/UnknownContactFragment$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/contacts/detail/UnknownContactFragment;->mListener:Lcom/android/contacts/detail/UnknownContactFragment$Listener;

    .line 109
    return-void
.end method
