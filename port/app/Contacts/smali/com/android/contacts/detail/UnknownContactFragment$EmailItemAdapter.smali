.class Lcom/android/contacts/detail/UnknownContactFragment$EmailItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "UnknownContactFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/UnknownContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmailItemAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/UnknownContactFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/detail/UnknownContactFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/contacts/detail/UnknownContactFragment$EmailItemAdapter;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/detail/UnknownContactFragment;Lcom/android/contacts/detail/UnknownContactFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/UnknownContactFragment$EmailItemAdapter;-><init>(Lcom/android/contacts/detail/UnknownContactFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x6

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 375
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 380
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 386
    if-nez p1, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/contacts/detail/UnknownContactFragment$EmailItemAdapter;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #calls: Lcom/android/contacts/detail/UnknownContactFragment;->getPaddingTopView()Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/detail/UnknownContactFragment;->access$600(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/view/View;

    move-result-object v0

    .line 400
    :goto_0
    return-object v0

    .line 388
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/android/contacts/detail/UnknownContactFragment$EmailItemAdapter;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #calls: Lcom/android/contacts/detail/UnknownContactFragment;->getItemHeaderView()Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/detail/UnknownContactFragment;->access$700(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 390
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 391
    iget-object v0, p0, Lcom/android/contacts/detail/UnknownContactFragment$EmailItemAdapter;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #calls: Lcom/android/contacts/detail/UnknownContactFragment;->getItemView()Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/detail/UnknownContactFragment;->access$800(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 392
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 393
    iget-object v0, p0, Lcom/android/contacts/detail/UnknownContactFragment$EmailItemAdapter;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #calls: Lcom/android/contacts/detail/UnknownContactFragment;->getButtonHeaderView()Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/detail/UnknownContactFragment;->access$900(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 394
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 395
    iget-object v0, p0, Lcom/android/contacts/detail/UnknownContactFragment$EmailItemAdapter;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #calls: Lcom/android/contacts/detail/UnknownContactFragment;->getCreateView()Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/detail/UnknownContactFragment;->access$1000(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 396
    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 397
    iget-object v0, p0, Lcom/android/contacts/detail/UnknownContactFragment$EmailItemAdapter;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #calls: Lcom/android/contacts/detail/UnknownContactFragment;->getEditView()Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/detail/UnknownContactFragment;->access$1100(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 400
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
